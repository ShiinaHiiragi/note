# Language Model

## Transformers
### Inference
#### Nano-GPT
设嵌入向量维度均为 $C$，输入序列 $S = \left<x_{1}, x_{2}, ..., x_{T}\right>$，其中对于 $1 \leqslant j \leqslant T$，$1 \leqslant x_{j} \leqslant N$ 是字符在大小为 $N$ 的词表编号

1. 模型初始输入的嵌入是一个 $C \times T$ 矩阵

    $$
    \mathrm{col}(\boldsymbol E_{I}, j) = \mathrm{col}(\boldsymbol E_{T}, x_{j}) + \mathrm{col}(\boldsymbol E_{P}, j), 1 \leqslant j \leqslant T
    $$

    - Token 嵌入是一个预先指定的 $C \times N$ 矩阵 $\boldsymbol E_{T}$
    - 位置嵌入是一个预先指定的 $C \times T$ 矩阵 $\boldsymbol E_{P}$
        - 正余弦位置编码：设 $1 \leqslant i \leqslant C, 1 \leqslant j \leqslant T$，则

            $$
            \mathrm{entry} (\boldsymbol E_{P}, i, j)=
            \begin{cases}
            \sin \left(j / 10000^{(i-2) / C}\right), & i \bmod 2=0 \\
            \cos \left(j / 10000^{(i-1) / C}\right), & i \bmod 2=1
            \end{cases}
            $$

        - 旋转位置编码：定义 $C \times C$ 旋转矩阵

            $$
            \begin{aligned}
            \boldsymbol{R}_{\theta, t}&=\left[\begin{array}{ccccccc}
            \cos t \theta_1 & -\sin t \theta_1 & 0 & 0 & \ldots & 0 & 0 \\
            \sin t \theta_1 & \cos t \theta_1 & 0 & 0 & \ldots & 0 & 0 \\
            0 & 0 & \cos t \theta_2 & -\sin t \theta_2 & \ldots & 0 & 0 \\
            0 & 0 & \sin t \theta_2 & \cos t \theta_2 & \ldots & 0 & 0 \\
            \vdots & \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\
            0 & 0 & 0 & 0 & \ldots & \cos t \theta_{C / 2} & -\sin t \theta_{C / 2} \\
            0 & 0 & 0 & 0 & \ldots & \sin t \theta_{C / 2} & \cos t \theta_{C / 2}
            \end{array}\right] \\
            \Theta&=\left\{\theta_i=b^{-2(i-1) / C} \mid i \in\{1,2, \ldots, C / 2\}\right\}
            \end{aligned}
            $$

            则 $\boldsymbol{R}_{\theta, i} \boldsymbol{R}_{\theta, j} ^{\mathrm T} = \boldsymbol{R}_{\theta, i - j}$．修改注意力的计算方式

            $$
            \begin{aligned}
            \boldsymbol{q}_i & =\boldsymbol{x}_i \boldsymbol{W}^Q \boldsymbol{R}_{\theta, i}, \boldsymbol{k}_j=\boldsymbol{x}_j \boldsymbol{W}^K \boldsymbol{R}_{\theta, j}, \\
            A_{i j} & =\left(\boldsymbol{x}_i \boldsymbol{W}^Q \boldsymbol{R}_{\theta, i}\right)\left(\boldsymbol{x}_j \boldsymbol{W}^K \boldsymbol{R}_{\theta, j}\right)^{\mathrm T}=\boldsymbol{x}_i \boldsymbol{W}_q \boldsymbol{R}_{\theta, i-j} \boldsymbol{W}^{K \mathrm T} \boldsymbol{x}_j^{\mathrm T} .
            \end{aligned}
            $$

2. 对于给定的 $C \times T$ 嵌入矩阵 $\boldsymbol E$，经层归一化后的 $C \times T$ 嵌入矩阵 $\boldsymbol E'$ 有

    $$
    \begin{aligned}
    \mathrm{entry} (\boldsymbol E', i, j) & = \dfrac{\mathrm{entry} (\boldsymbol E, i, j) - \mu_j}{\sigma_{j}} \cdot \gamma + \beta, 1 \leqslant i \leqslant C, 1 \leqslant j \leqslant T \\
    \mu_{j} & = \mathrm E \left[\mathrm{col} (\boldsymbol E, j)\right], 1 \leqslant j \leqslant T \\
    \sigma_{j} & = \sqrt{\mathrm D \left[\mathrm{col} (\boldsymbol E, j)\right] + \varepsilon}, 1 \leqslant j \leqslant T \\
    \end{aligned}
    $$

    即对于任意 $1 \leqslant j \leqslant T$，$\mathrm{col} (\boldsymbol E', j)$ 服从 $\text{Gauss}$ 分布 $N(\beta, \gamma^2)$．$\varepsilon$ 是事前指定的小正数以保证除数不为零

    - 均方根归一化：加快训练速度

        $$
        \begin{aligned}
        \mathrm{RMSNorm}(\boldsymbol{x}) & =\frac{\boldsymbol{x}}{\mathrm{RMS}(\boldsymbol{x})} \cdot \gamma \\
        \mathrm{RMS}(\boldsymbol{x}) & =\sqrt{\frac{1}{H} \sum_{i=1}^H x_i^2}
        \end{aligned}
        $$

    - 归一化层的位置
        - 层后归一化：$\mathrm{Post-Norm}(\boldsymbol{x})=\mathrm{Norm}(\boldsymbol{x}+\mathrm{Sublayer}(\boldsymbol{x}))$
        - 层前归一化：$\mathrm{Pre-Norm}(\boldsymbol{x})=\boldsymbol{x}+\mathrm{Sublayer}(\mathrm{Norm}(\boldsymbol{x}))$
        - 夹心归一化：$\mathrm{Sandwich-Norm}(\boldsymbol{x})=\boldsymbol{x}+\mathrm{Norm}(\mathrm{Sublayer}(\mathrm{Norm}(\boldsymbol{x})))$

3. 对于给定的 $C \times T$ 嵌入矩阵 $\boldsymbol E$，经全连接层将嵌入向量维度扩张为 $M$（通常为 $C$ 的整数倍），随后还原：

    $$
    \boldsymbol E'' = \boldsymbol P f\left(\boldsymbol W \boldsymbol E + \boldsymbol B_{W}\right) + \boldsymbol B_{P}
    $$

    - 设全连接层的 $M \times C$ 权重矩阵为 $\boldsymbol W$，$M$ 维偏移向量 $\boldsymbol b_{W}$ 扩展为 $M \times T$ 偏移矩阵 $\boldsymbol B_{W}$，则扩张后的 $M \times T$ 嵌入矩阵 $\boldsymbol E' = f\left(\boldsymbol W \boldsymbol E + \boldsymbol B_{W}\right)$，其中激活函数 $f: \mathbf R^{M \times T} \to \mathbf R^{M \times T}$ 对矩阵每个元素使用相同函数
        - $\mathrm{ReLu}(x) = \max(x, 0)$
        - $\mathrm{Swish}(x)=x \cdot \mathrm{sigmoid}(x)$
        - ${\displaystyle \mathrm{GELU}(x)=0.5 x \cdot[1+\mathrm{erf}(x / \sqrt{2})], \mathrm{erf}(x)=\frac{2}{\sqrt{\pi}} \int_1^x e^{-t^2} d t}$

        > 注意
        > 1. 对于 $\mathrm{col} (\boldsymbol E, j)$，扩张后的 $M \times T$ 嵌入矩阵 $\boldsymbol E'$ 的元素 $\mathrm{entry} (\boldsymbol E', i, j) = f\left(\mathrm{row}(\boldsymbol W, i) \cdot \mathrm{col} (\boldsymbol E, j) + \boldsymbol b_{i}\right)$
        > 2. 将 $C$ 维嵌入向量转为 $M$ 维嵌入向量需要 $CM$ 个权重参数，对于 $T$ 个 Token 对应每一列嵌入向量，使用的权重参数是相同的，因此此处不需要 $T$ 个权重矩阵

    - 设全连接层的 $C \times M$ 投影矩阵为 $\boldsymbol P$，$C$ 维偏移向量 $\boldsymbol b_{P}$ 扩展为 $C \times T$ 偏移矩阵 $\boldsymbol B_{P}$，则还原后的 $C \times T$ 嵌入矩阵 $\boldsymbol E'' = \boldsymbol P \boldsymbol E' + \boldsymbol B_{P}$

4. 对于给定的 $C \times T$ 嵌入矩阵 $\boldsymbol E$，将嵌入矩阵转换为 $t$ 个 $A \times T$ 的注意力输出矩阵
    - 对于每一个分支，$\boldsymbol W_{Q}, \boldsymbol W_{K}, \boldsymbol W_{V}$ 为 $A \times C$ 的权重矩阵，$\boldsymbol b_{Q}, \boldsymbol b_{K}, \boldsymbol b_{V}$ 为 $A \times 1$ 的偏移向量，并扩展为 $A \times T$ 的偏移矩阵 $\boldsymbol B_{Q}, \boldsymbol B_{K}, \boldsymbol B_{V}$，则

        $$
        \begin{aligned}
        \boldsymbol Q & = \boldsymbol W_{Q} \boldsymbol E + \boldsymbol B_{Q} \\
        \boldsymbol K & = \boldsymbol W_{K} \boldsymbol E + \boldsymbol B_{K} \\
        \boldsymbol V & = \boldsymbol W_{V} \boldsymbol E + \boldsymbol B_{V}
        \end{aligned}
        $$

        均为 $A \times T$ 的矩阵

    - 对任意 $1 \leqslant j \leqslant T$，$\mathrm{col} (\boldsymbol K, j)$ 与 $\mathrm{col} (\boldsymbol V, j)$ 一一对应，因此 $\boldsymbol Q$ 内的各向量通过 $\boldsymbol K$ 得到 $\boldsymbol V$ 相加的权重

        $$
        \begin{aligned}
        w_k & = \mathrm{col} (\boldsymbol Q, j) ^{\mathrm T} \mathrm{col} (\boldsymbol K, k), 1 \leqslant k \leqslant j \\
        [w'_1, w'_2, ..., w'_j] & = \mathrm{Softmax} ([w_1, w_2, ..., w_j]) \\
        \mathrm{result} & = \sum_{k=0}^{j} w'_k \mathrm{col} (\boldsymbol V, k)
        \end{aligned}
        $$

        用矩阵表示：已知 $A \times T$ 矩阵 $\boldsymbol Q, \boldsymbol K, \boldsymbol V$，则 $T \times T$ 注意力矩阵 $\boldsymbol A = \dfrac{\boldsymbol K^{\mathrm T} \boldsymbol Q \odot \boldsymbol U}{\sqrt{A}}$，其中因果解码器的掩码矩阵

        $$
        \boldsymbol U = \left\{\begin{aligned} & 1, & i \leqslant j \\ & 0, & i > j \end{aligned}\right.
        $$

        是一个上三角矩阵．对任意 $1 \leqslant j \leqslant T$，$\mathrm{col} (\boldsymbol A, j)$ 为 $\mathrm{col} (\boldsymbol Q, j)$ 对应的权重．设逐列 $\text{Softmax}$（忽略后导 $0$）的注意力矩阵为 $A'$，则有

        $$
        \mathrm{entry} (\boldsymbol A', i, j) = \left\{\begin{aligned}
        & \dfrac{\exp\left\{ \mathrm{entry} (\boldsymbol A, i, j) \right\}}{{\displaystyle \sum_{k=1}^{j} \exp\left\{ \mathrm{entry} (\boldsymbol A, k, j)\right\}}}, & i \leqslant j \\
        & 0, & i > j
        \end{aligned}\right.    
        $$

        于是 $A \times T$ 注意力输出矩阵 $\boldsymbol A'' = \boldsymbol V \boldsymbol A'$

    - 将 $t$ 个 $A \times T$ 注意力输出矩阵 $\boldsymbol A''_{1}, \boldsymbol A''_{2}, ..., \boldsymbol A''_{t}$ 纵向拼接为 $tA \times T$ 矩阵 $A_{O}$．设全连接层的 $C \times tA$ 投影矩阵为 $\boldsymbol P$，$C$ 维偏移向量 $\boldsymbol b_{P}$ 扩展为 $C \times T$ 偏移矩阵 $\boldsymbol B_{P}$，则还原后的 $C \times T$ 嵌入矩阵 $\boldsymbol E' = \boldsymbol P \boldsymbol A_{O} + \boldsymbol B_{P}$

5. 对于给定的 $C \times T$ 嵌入矩阵 $\boldsymbol E$，模型先通过线性层（相当于无偏移的全连接层前半部分）得到 $\text{Logits}$ 矩阵，再通过 $\text{Softmax}$ 归一化得到输出矩阵

    $$
    \boldsymbol O = \mathrm{Softmax}(\boldsymbol H \boldsymbol E)
    $$

    - $\text{Logits}$ 矩阵是一个 $N \times T$ 的矩阵，它标识了每一个 Token 概率值的原始值．设语言模型头部权重是一个 $N \times C$ 权重矩阵 $\boldsymbol H$，则 $\text{Logits}$ 矩阵 $\boldsymbol L = \boldsymbol H \boldsymbol E$
    - 设逐列 $\text{Softmax}$ 后的输出矩阵为 $\boldsymbol O$，则

        $$
        \mathrm{entry} (\boldsymbol O, i, j) = \dfrac{\mathrm{exp}\left\{ \mathrm{entry} (\boldsymbol L, i, j)\right\}}{{\displaystyle \sum_{k=1}^{N} \mathrm{exp}\left\{\mathrm{entry} (\boldsymbol L, k, j)\right\}}}
        $$

Nano-GPT 的结构：
- Token 嵌入 + 位置嵌入
- 多个 Transformers 层，每层包括
    - 「层归一化 + 自注意力层」的残差连接
    - 「层归一化 + 全连接层」的残差连接
- 层归一化 + 线性层 + $\text{Softmax}$ 层

#### Sampling
1. 输入序列 $S = \left<x_{1}, x_{2}, ..., x_{T}\right>$ 中仅有前 $t$ 个 Token 有意义，则输出矩阵 $\boldsymbol O$ 的第 $t$ 列 $\mathrm{col} (\boldsymbol O, t)$ 指示了下一个 Token 的概率分布 $P\left(x_{t+1} \mid x_1 x_2 ... x_{t}\right)$
    - Greedy Search：每一步都选择概率最高的 Token，即 $x_{t+1} = \underset{1 \leqslant i \leqslant N}{\mathrm{argmax}} \ \mathrm{entry} (\boldsymbol O, i, t)$
    - Beam Search：每步保留概率最高的 $n$ 个 Token，并最终从中选出最高概率的序列
    - Top-K 采样：从概率最高的 $K$ 个 Token 中采样，重新对概率进行归一化并按此概率随机选取 Token
    - Top-P 采样：从概率最高的 Token 中，累积概率首次超过 $P$ 的前若干个 Token 中采样，重新对概率进行归一化并按此概率随机选取 Token

2. 在最终的 $\text{Softmax}$ 过程中，若增加温度参数 $\theta > 0$

    $$
    \mathrm{entry} (\boldsymbol O, i, j) = \dfrac{\mathrm{exp}\left\{\dfrac{\mathrm{entry} (\boldsymbol L, i, j)}{\theta}\right\}}{{\displaystyle \sum_{k=1}^{N} \mathrm{exp}\left\{\dfrac{\mathrm{entry} (\boldsymbol L, k, j)}{\theta}\right\}}}
    $$

    则可改变概率分布的集中性

    - 当 $\theta$ 小于 $1$ 时，概率分布更分化，输出更为多样化
    - 当 $\theta$ 大于 $1$ 时，概率分布更均衡，输出更为单一化

#### Quantization
1. $Q$ 位量化即将浮点数映射到 $Q$ 位整数
    - 一般形式的均匀量化函数 $\boldsymbol x_{q} = R(\boldsymbol x / S) - Z$，其中 $S$ 表示缩放因子，$Z$ 表示零点因子（$Z = 0$ 时即为对称量化），$R$ 表示取整操作
    - 反量化函数 $\widetilde{\boldsymbol x} = S \cdot (\boldsymbol x_{q} + Z)$，定义量化误差 $\Delta = \left\|\boldsymbol x - \widetilde{\boldsymbol x}\right\|^{2}$
2. 权重量化：基于逐层量化的方法，$\underset{\widehat{\boldsymbol W}}{\mathrm{argmin}} \left\|\boldsymbol X \boldsymbol W - \boldsymbol X \widehat{\boldsymbol W}\right\|^{2}$

### Training
#### Pre-training
1. 损失函数：设 $P$ 为真实分布，$Q$ 为非真实分布
    - 交叉熵损失函数：${\displaystyle \mathrm E_{x \sim P(x)} \left[-\log Q(x)\right] = -\sum_{x \in X} \left[P(x) \cdot \log Q(x)\right]}$
    - $\text{KL}-$散度损失函数：${\displaystyle \mathrm E_{x \sim P(x)} \left[\log \dfrac{P(x)}{Q(x)}\right] = \sum_{x \in X} \left[P(x) \cdot \log \dfrac{P(x)}{Q(x)}\right]}$
2. 优化算法：设 $J(\theta)$ 为带有模型参数 $\theta$ 的目标函数，梯度下降法旨在使 $J(\theta)$ 最小化
    - 批量梯度下降算法：在整个训练数据集上计算损失函数关于参数 $\theta$ 的梯度

        $$
        \theta \leftarrow \theta - \eta \cdot \nabla J(\theta)
        $$

    - 随机梯度下降算法：根据每一条训练样本 $x^{(i)}$ 和标签 $y^{(i)}$ 更新参数

        $$
        \theta \leftarrow \theta - \eta \cdot \nabla J(\theta; x^{(i)}, y^{(i)})
        $$

        通常使用的随机梯度下降算法实际上是小批量梯度下降法：在每次更新时使用 $n$ 个小批量训练样本更新参数

        $$
        \theta \leftarrow \theta - \eta \cdot \nabla J(\theta; x^{(i:i+n)}, y^{(i:i+n)})
        $$

    - 动量法：在当前更新向量中的历史更新向量增加分量 $\gamma$

        $$
        \begin{aligned}
        v_{t} & = \gamma  v_{t-1} + \eta \cdot \nabla J(\theta) \\
        \theta & \leftarrow \theta - v_{t}
        \end{aligned}
        $$

#### SFT
1. 数据集构建：以 Stanford Alpaca 为例，一个 SFT 样本如下所示，输入到 `"### Response:\n"` 结束

    ```markdown
    Below is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.

    ### Instruction:
    Create a classification task by clustering the given list of items.

    ### Input:
    Apples, oranges, bananas, strawberries, pineapples

    ### Response:
    Class 1: Apples, Oranges
    Class 2: Bananas, Strawberries
    Class 3: Pineapples
    ```

2. LoRA：在自注意力层或全连接层处增加旁路．对于这些连接层，其 $M \times C$ 权重矩阵 $\boldsymbol W_0$ 在微调时的更新 $\boldsymbol W = \boldsymbol W_0 + \Delta \boldsymbol W$ 可近似为 $\Delta \boldsymbol W = \boldsymbol A \boldsymbol B$，其中 $\boldsymbol A \in \mathbf R^{M \times D}, \boldsymbol B \in \mathbf R^{D \times C}$ 且 $D \ll M$
    - 预训练时，中间状态 $\boldsymbol h = \boldsymbol W_0 \boldsymbol x$
    - 微调时，$\boldsymbol W_0$ 保持不变，中间状态计算变为 $\boldsymbol h = \boldsymbol W_0 \boldsymbol x + \boldsymbol A \boldsymbol B \boldsymbol x$，最终 $\boldsymbol W = \boldsymbol W_0 + \boldsymbol A \boldsymbol B$

#### RLHF
1. 使用精选的人类回答以微调预训练模型，得到 SFT 模型
2. 使用包含人类对同一查询的多个答案打分的数据集以微调预训练模型，得到独立的奖励模型
    - 线性变换头将语言模型最后一层的隐状态从 $\mathbf R^{C}$ 映射为 $\mathbf R$，该标量分数用于奖励模型对当前内容的打分
    - 设奖励模型为 $r_{\theta}$，$x$ 为输入，奖励模型的训练方式主要包括
        - 打分式：人类标注者针对输入，为相应的输出赋予离散分数

            $$
            \mathcal L = -\mathrm E_{(x, y, \widetilde{r}) \sim \mathcal{D}} \left[(r_{\theta}(x, y) - \widetilde{r})^{2}\right]
            $$

            其中 $y, \widetilde{r}$ 表示输出与人类标注者打分

        - 对比式：人类标注者针对输入，标注正例/负例

            $$
            \mathcal L = -\mathrm E_{(x, y^{+}, y^{-}) \sim \mathcal{D}} \left[\log(\sigma(r_{\theta}(x, y^{+} - r_{\theta}(x, y^{-})))\right]
            $$

            其中 $y^{+}, y^{-}$ 表示正例与负例

        - 排序式：人类标注者根据偏好对 $K$ 个模型生成的回复进行排序

            $$
            \mathcal L = -\dfrac{1}{\dbinom{K}{2}}\mathrm E_{(x, y^{+}, y^{-}) \sim \mathcal{D}} \left[\log(\sigma(r_{\theta}(x, y^{+} - r_{\theta}(x, y^{-})))\right]
            $$

            其中 $y^{+}, y^{-}$ 表示（相对的）正例与负例

3. 利用强化学习算法，根据奖励模型的反馈进一步微调 SFT 模型
    - 策略模型和外部环境 $s_{t}$ 第 $t$ 次交互的过程中选择行动 $a_{t}$ 后，外部环境变为 $s_{t+1}$ 并给予策略模型奖励分数 $r_{t}$．设参数为 $\theta$ 的模型做出策略轨迹 $\tau = \{a_1, a_2, \cdots\}$ 的概率为 $P_{\theta}(\tau)$，累积获得奖励为 $R(\tau)$，则强化学习目标函数

        $$
        \mathcal J(\theta) = \underset{\theta}{\mathrm{argmax}} \ \mathrm E_{\tau \in P_{\theta}} [R(\tau)] = \underset{\theta}{\mathrm{argmax}} \sum_{\tau} P_{\theta}(\tau) \cdot R(\tau)
        $$

        > 在语言模型任务中的对应关系
        > - 策略模型 → 语言模型
        > - 状态/动作/决策轨迹 → 已生成内容/下一个 Token/模型生成回复
        > - 累计奖励 → 偏好打分
        > - 目标函数 → 生成人类偏好回复的概率尽可能高

    - 策略梯度：采样多条决策轨迹，计算平均奖励以近似所有决策轨迹的期望奖励

        $$
        \begin{aligned}
        \nabla \mathcal{J}(\theta) & =\sum_\tau R(\tau) \nabla P_\theta(\tau) \\
        & =\sum_\tau R(\tau) \frac{P_\theta(\tau)}{P_\theta(\tau)} \nabla P_\theta(\tau) \\
        & =\sum_\tau P_\theta(\tau) R(\tau) \nabla \log P_\theta(\tau) \\
        & =\mathrm E_{\tau \sim P_{\theta}(\tau)} \left[R(\tau) \nabla \log P_\theta(\tau)\right] \\
        & \approx \frac{1}{N} \sum_{n=1}^{N} \left[R(\tau_{n}) \nabla \log P_\theta(\tau_{n})\right]
        \end{aligned}
        $$

        其中 $N$ 表示从策略空间 $\mathcal T$ 中采样得到的策略轨迹的数量

    - 近端策略优化（PPO）算法
        - 优势估计：引入优势函数 $\widehat{A}_t=Q\left(s_t, a_t\right)-V\left(s_t\right)$，其中, $Q\left(s_t, a_t\right)$ 表示在状态 $s_t$ 选取决策 $a_t$ 的奖励分数, $V\left(s_t\right)$ 表示从状态 $s_t$ 开始所有决策能得到的奖励的期望值
            - $V(s_t)$ 的值需要训练一个评价模型获得，可使用奖励模型进行初始化
            - 引导模型从当前能做出的所有决策中挑选最佳的决策（减少选取 $Q\left(s_t, a_t\right) > 0$ 但 $\widehat{A}_t < 0$ 的决策）
        - 重要性采样：只更新用于学习的策略模型 $\pi_{\theta}$，而保持用于采样的策略模型 $\pi_{\theta_{\text{old}}}$ 不变，修改目标函数

            $$
            \begin{aligned}
            \mathcal{J}(\theta) & = \mathrm{E}_{a_t \sim \pi_\theta}\left[\widehat{A}_t\right] \\
            & = \widehat{\mathrm{E}}_{a_t \sim \pi_{\theta_{\text {old }}}}\left[r_t(\theta) \widehat{A}_t\right],  r_t(\theta)=\frac{\pi_\theta\left(a_t \mid s_t\right)}{\pi_{\theta_{\text {old }}}\left(a_t \mid s_t\right)}
            \end{aligned}
            $$

            关键在于保证两个模型的分布（尤其是方差）尽可能相似

            - 基于梯度裁剪的目标函数：裁剪策略比率的变化范围，防止策略更新过于激进

                $$
                \mathcal{J}_{\mathrm{CLIP}}(\theta)=\widehat{\mathrm{E}}_t\left[\min \left(r_t(\theta) \widehat{A}_t, \mathrm{clip}\left(r_t(\theta), 1-\varepsilon, 1+\varepsilon\right) \widehat{A}_t\right)\right]
                $$

            - 基于 $\text{KL}-$散度的目标函数：设 $\beta$ 是超参数，则

                $$
                \mathcal{J}_{\mathrm{KLPEN}}(\theta)=\widehat{\mathrm{E}}_t\left[r_t(\theta) \widehat{A}_t-\beta \mathrm{KL}\left[\pi_{\theta_{\text {old }}}\left(\mid s_t\right), \pi_\theta\left(\mid s_t\right)\right]\right]
                $$

        > **PPO 训练流程**
        > 
        > 输入：SFT 模型，奖励模型  
        > 输出：与人类偏好对齐的语言模型 $\pi_{\theta}$  
        > 　　初始化与环境交互的策略模型 $\pi_{\theta_{\text{old}}} \leftarrow \text{SFT}$  
        > 　　初始化与用于学习的策略模型 $\pi_{\theta} \leftarrow \text{SFT}$  
        > 　　for step = 1, 2, ... do  
        > 　　　　$\pi_{\theta_{\text{old}}}$ 采样得到若干决策轨迹 $\{\tau_1, \tau_2, ...\}$  
        > 　　　　计算优势估计 $\widehat{A}_t$  
        > 　　　　for k = 1, 2, ..., K do  
        > 　　　　　　计算目标函数 $\mathcal{J}_{\mathrm{CLIP}}(\theta)$ 或 $\mathcal{J}_{\mathrm{KLPEN}}$  
        > 　　　　　　利用梯度下降优化 $\pi_{\theta}$：$\theta \leftarrow \theta+\eta \nabla \mathcal{J}(\theta)$  
        > 　　　　更新与环境交互的策略模型 $\pi_{\theta_{\text{old}}} \leftarrow \pi_{\theta}$  

## Python
### Data Type
1. 基本数据类型：根据「值变化时 ID 是否必然发生变化」分为两类
    - 不可变数据：数字（`int`、`float`、`bool`）与 `str`、`tuple`
    - 可变数据：`list`、`dict`、`set`

2. 与数据类型相关的内建函数或操作符
    - `id(obj)`：返回对象 ID
    - `type(obj)`：返回对象类型
    - `isinstance(obj, class)`：`obj` 是否为类 `class` 或其子类的对象
    - `issubclass(sub, class)`：`sub` 是否为 `class` 的子类
    - `del var`：直接删除变量（变量名变回未定义），也可用于删去特定 `list` 元素或 `dict` 键值对

#### String and Bytes
1. 字符串插值

    ```python
    name, age = "Alice", 14
    sprintf = "Name: %s, Age: %2d" % (name, age)
    format_list = "Name: {}, Age: {}".format(name, age)
    format_indx = "Name: {1}, Age: {0}".format(age, name)
    format_dict = "Name: {name}, Age: {age:2d}".format(name=name, age=age)
    f_string = f"Name: {name}, Age: {age}"
    ```

    对 `format(value, format_spec)` 的调用会转写为 `type(value).__format__(value, format_spec)`

2. 使用 r-string 或 R-string 生成原始字符串

3. 使用 u-string 生成含 Unicode 字符串
    - Python 3 开始普通字符串默认为 Unicode 字符串
    - 使用八进制 `\000 ~ \077` 或十六进制 `\x00 ~ \xff` 表示单个字节

4. 使用 b-string 生成 `bytes` 对象

    ```python
    s = "汉字"
    b = s.encode()
    
    print(b)                  # b'\xe6\xb1\x89\xe5\xad\x97'
    print(b.decode("utf-8"))  # 汉字
    ```

#### Container
1. 容器数据类型 `collections` 实现了部分专门化容器，提供对通用内建容器 `dict`、`list`、`set`、`tuple` 的补充
    - `namedtuple()`：子类的字段有名称的元组
    - `deque`：双向队列
    - `ChainMap`：用于创建包含多个映射的单个视图
    - `Counter`：用于计数 `hashable` 对象的字典子类
    - `OrderedDict`：字典的子类，能记住条目被添加进去的顺序
    - `defaultdict`：字典的子类，通过调用用户指定的工厂函数，为键提供默认值

2. 通用内建容器的初始化方式

    |   类    |    初始化为空     |        括号初始化         |            初始化函数             |                      推导式                      |
    | :-----: | :---------------: | :-----------------------: | :-------------------------------: | :----------------------------------------------: |
    | `tuple` | `()` 或 `tuple()` |        `(0, 1, 2)`        |           `tuple(iter)`           |          `(expr for i in iter if cond)`          |
    | `list`  | `[]` 或 `list()`  |        `[0, 1, 2]`        |           `list(iter)`            |          `[expr for i in iter if cond]`          |
    | `dict`  | `{}` 或 `dict()`  | `{ "zero": 0, "one": 1 }` | `dict(iter)` 或 `dict(key=value)` | `{ key_expr: value_expr for i in iter if cond }` |
    |  `set`  |      `set()`      |        `{0, 1, 2}`        |            `set(iter)`            |          `{expr for i in iter if cond}`          |

### Function
#### Parameter and Argument
1. 形式参数类型
    - 非默认参数：没有指定默认值的参数
    - 默认参数：指定默认值的参数．调用函数时，如果没有传递参数，则会使用默认参数
    - 不定长参数
        - 使用至多一个 `*args` 捕获所有未命名的变量参数，生成一个元组
        - 使用至多一个 `**kwargs` 捕获所有命名的变量参数，生成一个字典
2. 实际参数类型
    - 位置参数：按形式参数列表顺序传入的参数
    - 关键词参数：按参数名称传入的参数，此时参数的顺序可以与形式参数列表不一致
3. 形式参数顺序规则
    - `*args` 之前，所有非默认参数必须定义在默认参数前
    - `*args` 之后，可以任意定义默认参数或非默认参数，但实际参数必然全为关键词参数
    - `**kwargs` 必须定义在所有参数后

    ```python
    def func(first, second=2, *args, third=3, fourth, **kwargs):
        print(first, second, third, fourth)  # 1 2 3 4
        print(args)                          # (0, 0)
        print(kwargs)                        # {'fifth': 5}
    
    # Positional argument cannot appear after keyword arguments
    func(1, 2, 0, 0, third=3, fourth=4, fifth=5)
    ```

#### Iterator and Generator
1. 迭代器对象从集合的第一个元素开始访问，直到所有的元素被访问完结束

    ```python
    >>> it = iter([0, 1])
    >>> next(it)
    0
    >>> next(it)
    1
    >>> next(it)
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    StopIteration
    ```

    - `all(iterable)`：如果 `iterable` 的所有元素均为真值（或可迭代对象为空）时返回 `True`
    - `any(iterable)`：如果 `iterable` 的任一元素为真值时返回 `True`

2. 把一个类作为一个迭代器使用需要在类中实现魔术方法 `__iter__()` 与 `__next__()`（可以分开实现）

    ```python
    import sys

    class ins():
        def __iter__(self):
            return ins_iterator()

    class ins_iterator():
        def __init__(self):
            self.counter = 0

        def __next__(self):
            res = self.counter
            if res < 4:
                self.counter += 1
                return res
            else:
                raise StopIteration

    inst = ins()
    it = iter(inst)
    while True:
        try:
            print(next(it))
        except StopIteration:
            sys.exit()
    ```

3. 生成器：使用了 `yield` 关键字的函数

    ```python
    import sys
    
    def fibonacci(n):
        a, b, counter = 0, 1, 0
        while True:
            if (counter > n):
                return
            yield a
            a, b = b, a + b
            counter += 1
    
    f = fibonacci(10)
    while True:
        try:
            print(next(f), end=" ")
        except StopIteration:
            print()
            sys.exit()
    ```

#### Decorator
1. 用 `@` 实现装饰器模式

    ```python
    def decorator(func):
        def wrapper(*arg):
            print(id(func))
            func(*arg)
        return wrapper

    @decorator
    def p(msg):
        print(msg)

    p("Hello World!")
    ```

    用内置 `functools` 保证被装饰的函数信息保持原样

    ```python
    import functools

    def decorator(func):
        @functools.wraps(func)
        def wrapper(*arg):
            print(id(func))
            func(*arg)
        return wrapper

    @decorator
    def p(msg):
        print(msg)

    print(p.__name__)  # p
    ```

2. 类装饰器默认调用 `__call__` 方法

    ```python
    class Decorator:
        def __init__(self, func):
            self.func = func
    
        def __call__(self, *arg):
            print(id(self.func))
            self.func(*arg)
    
    @Decorator
    def p(msg):
        print(msg)
    
    p("Hello World!")
    ```

### Class and Object
#### Variable and Method
1. 类变量和实例变量
    - 类变量属于类所有，可以使用类名或对象名引用
        - 直接修改类变量，各实例未自行修改类变量时，引用到的值都会改变
        - 如果在实例中修改类变量，会复制一份为实例变量，覆盖类变量
    - 实例变量属于实例所有，只能使用对象名引用

2. 特殊方法
    - 私有方法：双下划线方法，类外只能通过 `_className__methodName` 访问
    - 类方法：附加 `@classmethod` 装饰器的方法，第一个参数为类
    - 静态方法：附加 `@staticmethod` 装饰器的方法，无强制参数

    ```python
    class Person:
        __counter = 0
        def __init__(self, name, age):
            self.__change(name, age)
    
        def __change(self, name, age):
            self.name = name
            self.age = age
    
        @classmethod
        def step(cls):
            cls.__counter += 1
            return cls
    
    alice = Person("Alice", 14)
    alice._Person__change("Aisling", 15)
    ```

#### Magic Method
1. 构造与初始化
    - `__new__(cls, [...)`：构造方法，在 `__init__` 之前调用
    - `__init__(self, [...)`：构造器
    - `__del__(self)`：析构器

2. 运算符相关
    - 比较运算符
        - `__cmp__(self, other)`：当 `self < other` 时返回负数，`self == other` 时返回零，`self > other` 时返回正数
        - `__eq__(self, other)`：定义运算符 `==` 的行为
        - `__ne__(self, other)`：定义运算符 `!=` 的行为
        - `__lt__(self, other)`：定义运算符 `<` 的行为
        - `__gt__(self, other)`：定义运算符 `>` 的行为
        - `__le__(self, other)`：定义运算符 `<=` 的行为
        - `__ge__(self, other)`：定义运算符 `>=` 的行为
    - 一元运算符
        - `__pos__(self)`：定义前缀 `+` 的行为
        - `__neg__(self)`：定义前缀 `-` 的行为
        - `__invert__(self)`：定义前缀 `~` 的行为
        - `__abs__(self)`：定义被 `abs()` 调用时的行为
        - `__round__(self, n)`：定义被 `round()` 调用时的行为
        - `__ceil__(self)`：定义被 `math.ceil()` 调用时的行为
        - `__floor__(self)`：定义被 `math.floor()` 调用时的行为
        - `__trunc__(self)`：定义被 `math.trunc()` 调用时的行为
    - 一般算术运算符
        - `__add__(self, other)`：定义运算符 `+` 的行为
        - `__sub__(self, other)`：定义运算符 `-` 的行为
        - `__mul__(self, other)`：定义运算符 `*` 的行为
        - `__div__(self, other)`：定义运算符 `/` 的行为
        - `__truediv__(self, other)`：定义运算符 `/`（真除法）的行为，Python 3 默认使用该除法
        - `__floordiv__(self, other)`：定义运算符 `//` 的行为
        - `__mod__(self, other)`：定义运算符 `%` 的行为
        - `__divmod__(self, other)`：定义被 `divmod()`（带余除法）调用时的行为
        - `__pow__(self, other)`：定义运算符 `**` 的行为
        - `__lshift__(self, other)`：定义运算符 `<<` 的行为
        - `__rshift__(self, other)`：定义运算符 `>>` 的行为
        - `__and__(self, other)`：定义运算符 `&` 的行为
        - `__or__(self, other)`：定义运算符 `|` 的行为
        - `__xor__(self, other)`：定义运算符 `^` 的行为
    - 反射算术运算符：`other` 是二元运算符的左侧值
        - `__radd__(self, other)`：定义运算符 `+` 的行为
        - `__rsub__(self, other)`：定义运算符 `-` 的行为
        - `__rmul__(self, other)`：定义运算符 `*` 的行为
        - `__rdiv__(self, other)`：定义运算符 `/` 的行为
        - `__rtruediv__(self, other)`：定义运算符 `/`（真除法）的行为
        - `__rfloordiv__(self, other)`：定义运算符 `//` 的行为
        - `__rmod__(self, other)`：定义运算符 `%` 的行为
        - `__rdivmod__(self, other)`：定义被 `divmod()` 调用时的行为
        - `__rpow__(self, other)`：定义运算符 `**` 的行为
        - `__rlshift__(self, other)`：定义运算符 `<<` 的行为
        - `__rrshift__(self, other)`：定义运算符 `>>` 的行为
        - `__rand__(self, other)`：定义运算符 `&` 的行为
        - `__ror__(self, other)`：定义运算符 `|` 的行为
        - `__rxor__(self, other)`：定义运算符 `^` 的行为
    - 增量赋值运算符
        - `__iadd__(self, other)`：定义运算符 `+=` 的行为
        - `__isub__(self, other)`：定义运算符 `-=` 的行为
        - `__imul__(self, other)`：定义运算符 `*=` 的行为
        - `__idiv__(self, other)`：定义运算符 `/=` 的行为
        - `__itruediv__(self, other)`：定义运算符 `/=`（真除法）的行为
        - `__ifloordiv__(self, other)`：定义运算符 `//=` 的行为
        - `__imod__(self, other)`：定义运算符 `%=` 的行为
        - `__ipow__(self, other)`：定义运算符 `**=` 的行为
        - `__ilshift__(self, other)`：定义运算符 `<<=` 的行为
        - `__irshift__(self, other)`：定义运算符 `>>=` 的行为
        - `__iand__(self, other)`：定义运算符 `&=` 的行为
        - `__ior__(self, other)`：定义运算符 `|=` 的行为
        - `__ixor__(self, other)`：定义运算符 `^=` 的行为
    - 类型转换运算符
        - `__int__(self)`：定义转换到 `int` 的行为
        - `__long__(self)`：定义转换到 `long` 的行为
        - `__float__(self)`：定义转换到 `float` 的行为
        - `__complex__(self)`：定义转换到 `complex` 的行为
        - `__bin__(self)`：定义转换到二进制字符串（被调用 `bin()`）的行为
        - `__oct__(self)`：定义转换到八进制字符串（被调用 `oct()`）的行为
        - `__hex__(self)`：定义转换到十六进制字符串（被调用 `hex()`）的行为
        - `__index__(self)`：存在此方法表明数字对象属于整数类型，此时必须返回一个整数
        - `__coerce__(self, other)`：用于异构运算符类型转换

    > **无魔术方法的运算符**
    > 
    > | 运算符               | 描述                    |
    > | -------------------- | ----------------------- |
    > | `=` / `:=`           | 赋值运算符/海象运算符 |
    > | `and` / `or` / `not` | 逻辑运算符              |
    > | `is` / `is not`      | 身份运算符              |

3. 类表示
    - `__str__(self)`：定义被 `str()` 调用时的行为
    - `__repr__(self)`：定义被 `repr()` 调用时的行为（`print()` 使用此函数转化对象）
    - `__unicode__(self)`：定义被 `unicode()` 调用时的行为
    - `__format__(self, format_str)`：定义字符串格式化时的行为
    - `__hash__(self)`：定义被 `hash()` 调用时的行为
    - `__nonzero__(self)`：定义被 `bool()` 调用时的行为
    - `__dir__(self)`：定义被 `dir()` 调用时的行为
    - `__sizeof__(self)`：定义被 `sys.getsizeof()` 调用时的行为

4. 访问控制
    - `__setattr__(self, key, value)`：设置某个属性时调用．在 `__setattr__` 使用 `self.key = value` 会导致循环调用，应使用 `self.__dict__[key] = value`
    - `__getattr__(self, key)`：获取某个属性时调用
    - `__delattr__(self, key)`：删除某个属性时调用（`del obj.key`）
    - `__getattribute__(self, key)`：无条件被调用以实现对类实例属性的访问
      - 如果类还定义了 `__getattr__()`，则后者不会被调用
      - 除非 `__getattribute__()` 显式地调用它或是引发了 `AttributeError`

5. 容器类相关
    - `__setitem__(self, key, value)`：定义设置容器中指定元素的行为
    - `__getitem__(self, key)`： 定义获取容器中指定元素的行为
    - `__delitem__(self, key)`：定义删除容器中指定元素的行为（`del obj[key]`）
    - `__missing__(self, key)`：定义元素不存在时的行为
    - `__len__(self)`：定义被 `len()` 调用时的行为
    - `__iter__(self)`：定义被 `iter()` 调用时的行为
    - `__next__(self)`：定义被 `next()` 调用时的行为
    - `__reversed__(self)`：定义被 `reversed()` 调用时的行为
    - `__contains__(self, item)`：定义成员测试运算符 `in` 或 `not in` 的行为

6. 反射与可调用对象
    - `__instancecheck__(self, instance)`：定义被 `isinstance()` 调用时的行为
    - `__subclasscheck__(self, subclass)`：定义被 `issubclass()` 调用时的行为
    - `__call__()`，将对象作为函数调用时调用；`callable(object)`：如果 `object` 参数是可调用的，则返回 `True`

7. 语境管理
    - `__enter__(self)`：定义被 `with` 语句调用时的行为
    - `__exit__(self, exception_type, exception_value, traceback)`：定义 `with` 语句被执行或终止时的行为

8. 复制
    - `__copy__(self)`：定义被 `copy.copy()` 调用时的行为
    - `__deepcopy__(self, memodict={})`：定义被 `copy.deepcopy()` 调用时的行为

### Module
#### Import
1. 在 Python 中，一个 `.py` 文件可以称为模块，包含了 `__init__.py` 文件的称为包
    - 当一个模块被执行时，Python 从 `sys.path` 的路径去找在模块中引入的包或其它模块，如果找不到则报错
    - 在执行文件所在目录或者其他 `sys.path` 可访问到的某个目录里面创建一个模块 `package`

        ```python
        package/
            __init__.py
            subpackage1/
                __init__.py
                moduleX.py
                moduleY.py
            subpackage2/
                __init__.py
                moduleZ.py
            moduleA.py
        ```

2. 绝对导入：使用 `import <>` 或 `from <> import <>` 两种语法
    - 在 `moduleA` 模块内，使用下面的绝对导入语句是有效的：

        ```python
        import subpackage1.moduleX as moduleX
        from subpackage2 import moduleZ
        ```

    - 假如要改变层级较高的包名，那么所有导入路径都要随之更改

3. 相对导入：相对导入只能使用 `from <> import <>` 语法，并且使用 `.` 作为前导点
    - 在 `subpackage1/moduleX.py` 或者 `subpackage1/__init__.py` 模块内可以使用相对导入的方式：

        ```python
        from .moduleY import spam
        from .moduleY import spam as ham
        from . import moduleY
        ```

    - 执行 `moduleA.py` 时，每个文件的 `__name__` 与 `__package__` 变量都不同
        - `moduleA.py` 的 `__name__` 是 `"__main__"`，即为顶层模块，此时 `__package__` 是 `None`
        - `subpackage1/moduleX.py` 的 `__name__` 是 `subpackage1.moduleX`，顶层模块为 `subpackage1`，此时 `__package__` 是 `subpackage1`．这表明 `moduleX` 无法通过相对导入访问到 `moduleZ`

    - **使用了相对导入的模块文件不能作为顶层执行文件**

4. `__init__.py` 可以用于导入，例如在 `subpackage2/__init__.py` 中加入

    ```python
    from .moduleZ import foo
    ```

    则可在 `moduleA.py` 用两种方式导入 `foo`

    ```python
    from subpackage2.moduleZ import funcZ
    from subpackage2 import funcZ
    ```

#### Packaging
1. 假设有一个测试包 `package-test`，文件结构如下（保证包文件无连字符，工程文件无此限制）

    ```
    package-test-root/
        setup.py
        package_test_pack/
            __init__.py
            ...
        README.md
        LICENSE
    ```

    编写 `setup.py` 如下

    ```python
    from setuptools import setup, find_packages

    setup(
        name="package-test-pack",
        version="0.0.1",
        packages=find_packages(),
    )
    ```

    - 执行 `python setup.py develop` 可将 `package-test-root` 加入到 `sys.path` 以实时响应包内容变化
    - 执行 `python setup.py install` 可将包安装到 `site-packages` 以全局调用 `package_test_pack`

2. 安装 `wheel` 以发布 `.whl` 文件
    - 执行 `python setup.py sdist bdist_wheel`，可在 `dist` 文件夹下看到 `package-test-pack-0.1.0.tar.gz` 与 `package_test_pack-0.1.0-py3-none-any.whl` 两个包
    - 执行 `pip install ./dist/package_test_pack-0.1.0-py3-none-any.whl`，可将包安装到 `site-packages`
    - 可将包发布到 TestPyPI 以测试包索引

### Built-in Definition
#### Attributes and Functions
1. 属性相关内置函数
    - `dir()` / `dir(object)`：无实参时返回当前本地作用域中的名称列表，否则返回该对象的有效属性列表
        - 如果对象是模块对象，则列表包含模块的属性名称
        - 如果对象是类型或类对象，则列表包含它们的属性名称，并且递归查找所有基类的属性
        - 否则列表包含对象的属性名称，它的类属性名称，并且递归查找它的类的所有基类的属性
    - `vars()` / `vars(object)`：返回模块、类、实例或任何其它具有 `__dict__` 属性的对象的 `__dict__` 属性
        - 模块和实例具有可更新的 `__dict__` 属性，但其它对象的 `__dict__` 属性可能会设为限制写入
        - 不带参数时，`vars()` 的行为类似 `locals()`
        - 如果指定了没有 `__dict__` 属性的对象，则会引发 `TypeError` 异常
    - `globals()`：返回实现当前模块命名空间的字典
    - `locals()`：返回当前本地符号表的字典
    - `hasattr(object, name)`：调用 `getattr(object, name)`，检测是否有 `AttributeError` 异常

    > `__slots__` 允许显式地声明数据成员（如特征属性）并禁止创建 `__dict__` 和 `__weakref__`

2. 语言实现为部分对象类型添加了一些特殊的只读属性，其中一些不会被 `dir()` 内置函数所列出
    - `object.__dict__`：一个字典或其他类型的映射对象，用于存储对象的（可写）属性
    - `instance.__class__`：类实例所属的类
    - `class.__bases__`：由类对象的基类所组成的元组
    - `class.__subclasses__()`：对直接子类的弱引用列表
    - `definition.__name__`：类、函数、方法、描述器或生成器实例的名称
    - `definition.__qualname__`：类、函数、方法、描述器或生成器实例的限定名称
    - `definition.__type_params__`：泛型类、函数和类型别名的类型形参

3. 其他特殊内置函数
    - `breakpoint(*args, **kws)`：在调用点进入调试器
    - `compile(source, filename, mode)`：将 `source` 编译成代码或 AST 对象
    - `__import__(name)`：由 `import` 语句发起调用

#### Constant
1. 少数的常量存在于内置命名空间
    - `None`：空值
    - `True` / `False`：真值/假值
    - `NotImplemented`：双目运算特殊方法返回的特殊值，表明该运算没有针对其他类型的实现
    - `Ellipsis`：相当于 `...`
    - `__debug__`：如果 Python 没有以 `-O` 选项启动，则此常量为真值
2. `site` 模块将几个常量添加到内置命名空间
    - `quit` / `exit`
    - `copyright` / `credits`
    - `license`

### Typing
1. 变量与函数的类型标注方式

    ```python
    num: int = 0
    def add(left: float, right: float) -> float:
        return left + right
    ```

    - 类型尚未被定义时，可以使用字符串代替

        ```python
        def greet(person: 'Person') -> str:
            return f"Hello, {person.name}"

        class Person:
            def __init__(self, name: str) -> None:
                self.name = name
        ```

    - 函数没有返回值时，可以标注 `-> None` 或不标注；函数无法返回时，可以标注 `-> NoReturn`

        ```python
        from typing import NoReturn

        def return_none() -> None:
            pass

        def no_return() -> NoReturn:
            raise RuntimeError
        ```

    - 使用 `typing.Any` 标注任意类型

2. 定义新类型
    - 容器类型：通过 `typing` 模块标注容器内元素类型
        - `Tuple[...]`：参数数量不限，分别标注各元素类型
        - `List[type]`：一个参数，标注元素类型
        - `Dict[key_type, value_type]`：两个参数，分别标注键/值元素类型
        - `Set[type]`：一个参数，标注元素类型
    - 函数类型：通过 `typing.Callable[list[type], type]` 标注函数类型
        - 参数列表必须是一个由类型组成的列表，返回类型必须是单一类型
        - 如果将省略号字面值 `...` 作为参数列表，则表示可以接受包含任意形参列表的可调用对象
    - 可选类型
        - `typing.Union[List[type]]` 表示任意列表中类型
        - `typing.Optional[type]` 相当于 `typing.Union[type, None]`
        - 字面值：通过 `Literal[List]` 标注字面值枚举类型

3. 类型变量
    - 定义类型别名/新类型：后者定义的类型与原类型不相同

        ```python
        from typing import Tuple, NewType, TypeAlias

        Vector2D: TypeAlias = Tuple[int, int]
        Vector3D = NewType('Vector3D', Tuple[int, int, int])

        vec_2d: Vector2D = (0, 0)
        vec_3d = Vector3D((0, 0, 0))
        ```

    - 泛型：通过 `typing.TypeVar` 记录一个类型变量

        ```python
        from typing import TypeVar
        
        T = TypeVar('T', str, int)
        def add(left: T, right: T) -> T:
            return left + right
        ```

## Package
### Tensor
#### Attribute and Property
1. 张量属性
    - `tensor.ndim`：维度的数量（`int` 类型）
    - `tensor.shape`：数组的形状（`torch.Size` 类型）
    - `tensor.size()`：数组元素的总个数（`torch.Size` 类型）
    - `tensor.dtype`：数组对象的元素类型（例如 `torch.float32` 或 `torch.int64`）
    - `tensor.device`：数组对象存储设备（CPU 或 GPU）

2. 初始化方法
    - 从 `List` 或 `torch.Tensor` / `numpy.array` 转换

        ```python
        import torch
        import numpy as np

        new_list = [[1, 2, 3], [4, 5, 6]]
        new_array = np.array(new_list)

        new_tensor = torch.tensor(new_list)
        from_tensor = torch.tensor(new_tensor)
        from_numpy = torch.from_numpy(new_array)
        ```

    - 随机赋值或指定值（`torch.float32`）

        ```python
        shape = (2, 3)
        randn = torch.randn(shape)  # or randn(*shape), randn ~ N(0, 1)
        rand = torch.rand(shape)    # or rand(*shape), rand ~ U(0, 1)
        ones = torch.ones(shape)    # or ones(*shape)
        zeros = torch.zeros(shape)  # or zeros(*shape)
        
        new_randn = torch.randn_like(randn)
        new_rand = torch.rand_like(rand)
        new_ones = torch.ones_like(ones)
        new_zeros = torch.zeros_like(zeros)
        ```
        
    - 使用 `torch.arange` 生成范围

3. 切片与索引：假设有数组如下

    ```python
    # tensor([[ 0,  1,  2,  3],
    #         [ 4,  5,  6,  7],
    #         [ 8,  9, 10, 11],
    #         [12, 13, 14, 15]])
    X = torch.arange(16).reshape(4, 4)
    ```
    
    - 使用 `start:end:step` 或数组确定范围
    
        ```python
        >>> X[::2]
        tensor([[ 0,  1,  2,  3],
                [ 8,  9, 10, 11]])
        >>> X[[1, 3]]
        tensor([[ 4,  5,  6,  7],
                [12, 13, 14, 15]])
        ```
    
    - 使用逗号分隔不同维度，`...` 相当于 `:`
    
        ```python
        >>> X[1:3, 1:3]
        tensor([[ 5,  6],
                [ 9, 10]])
        >>> X[1:3, [1, 3]]
        tensor([[ 5,  7],
                [ 9, 11]])
        >>> X[[1, 3], 1:3]
        tensor([[ 5,  6],
                [13, 14]])
        >>> X[np.ix_([1, 3], [1, 3])]
        tensor([[ 5,  7],
                [13, 15]])
        >>> X[[1, 3], [1, 3]]
        tensor([ 5, 15])
        ```
    
    - 使用 `bool` 数组选择特定元素
    
        ```python
        >>> X[X > 12]
        tensor([13, 14, 15])
        ```
    
4. 广播：两个数组逐元素操作时，需保证两数组形状一致，否则需按照广播规则扩张较小数组
    - 输入数组向维度最多的数组看齐，不足的维度在前面加 `1` 补齐
    - 输出数组的形状是输入数组形状的各个维度上的最大值
    - 若输入数组的某个维度和输出数组的对应维度的长度相同或者其长度为 `1` 时（此时沿着此维度运算时都用此维度上的第一组值），这个数组能够用来计算

        ```python
        X = torch.rand(3, 1, 4, 5)
        Y = torch.rand(6, 4, 1)
        # X     -> [3, 1, 4, 5]
        # Y     -> [1, 6, 4, 1]
        # X * Y -> [3, 6, 4, 5]
        print((X * Y).shape)
        ```

#### Operation and Calculation

> - 绝大部分 `torch` 模块的函数均可以首个参数的方法形式调用，例如 `torch.transpose(X, dim_1, dim_2)` 等价于 `X.transpose(dim_1, dim_2)`
> - 改变成员内容的函数以下划线结尾，例如 `X.transpose_(dim_1, dim_2)`

1. 张量操作
    - `torch.reshape(X, shape)`：修改数组形状，可使用至多一个 `-1` 表示自动推测该维度的长度

        `torch.flatten(X)`：数组平坦化，相当于 `torch.reshape(X, (-1,))`

    - `torch.broadcast_to(X, shape)` / `torch.broadcast_tensors(*tensors)`：显式广播数组

        `torch.squeeze(X, dim)`：若指定维度长度为 `1`，则删除这一维度；未指定维度时则移除全部维度

    - `torch.split(X, size, dim)`：在指定维度切分数组

        ```python
        X = torch.arange(4).reshape(2, 2)
        torch.split(X, 1, dim=0)  # (tensor([[0, 1]]), tensor([[2, 3]]))
        torch.split(X, 1, dim=1)  # (tensor([[0], [2]]), tensor([[1], [3]]))
        ```

        `torch.cat(tensor_tuple_or_list, dim)`：在指定维度连接数组

        ```python
        X = torch.arange(4).reshape(2, 2)
        Y = torch.arange(5, 9).reshape(2, 2)
        # tensor([[0, 1],
        #         [2, 3],
        #         [5, 6],
        #         [7, 8]])
        print(torch.cat((X, Y), 0))
        # tensor([[0, 1, 5, 6],
        #         [2, 3, 7, 8]])
        print(torch.cat((X, Y), 1))
        ```

2. 向量或矩阵运算
    - `torch.transpose(X, dim_1, dim_2)`：矩阵转置，指定两个维度，也可以使用 `tensor.T`
    - `torch.round(X)` / `torch.floor(X)` / `torch.ceil(X)`：近似值
    - `torch.sin(X)` / `torch.cos(X)` / `torch.tan(X)`：三角函数，输入角度制
    - `torch.arcsin(X)` / `torch.arccos(X)` / `torch.arctan(X)`：反三角函数，返回弧度制
    - `torch.add(X, Y)` / `torch.subtract(X, Y)` / `torch.multiply(X, Y)` / `torch.divide(X, Y)`：逐元素四则运算，分别等价于 `X + Y` / `X - Y` / `X * Y` / `X / Y`
    - `torch.power(X, Y)` / `torch.mod(X, Y)` / `torch.reciprocal(X)`：幂/模/倒数运算，分别等价于 `X**Y` / `X % Y` / `1 / X`
    - `torch.dot(X, Y)` / `torch.inner(X, Y)`：向量内积
    - `torch.matmul(X, Y)`：矩阵乘积，等价于 `X @ Y`

3. 线性代数相关计算
    - `torch.linalg.det(X)`：计算矩阵行列式
    - `torch.linalg.solve(A, B)`：计算使得方程 $\boldsymbol A \boldsymbol X = \boldsymbol B$ 成立的矩阵 $\boldsymbol X$
    - `torch.linalg.inv(X)`：计算逆矩阵

### PyTorch
#### Dataset and Dataloader
1. `Dataset` 必须实现三个函数：`__init__`、`__len__`、`__getitem__`
2. `Dataloader` 接受一个 `Dataset`，将数据分批输出（并打乱）

    ```python
    import torch
    from torch.utils.data import Dataset, DataLoader
    
    class SampleDataset(Dataset):
        def __init__(self, size, row_size, col_size):
            self.size = size
            self.data = torch.rand(size, row_size, col_size)
    
        def __len__(self):
            return self.size
    
        def __getitem__(self, key):
            return self.data[key], key
    
    dataset = SampleDataset(32, 4, 4)
    loader = DataLoader(dataset, batch_size=6, shuffle=True)
    
    # torch.Size([6, 4, 4]) tensor([20,  3, 18, 14, 26, 13])
    # torch.Size([6, 4, 4]) tensor([11,  1, 17, 30,  5, 16])
    # torch.Size([6, 4, 4]) tensor([10, 24,  2, 23,  4, 22])
    # torch.Size([6, 4, 4]) tensor([12,  0,  9,  7, 29, 19])
    # torch.Size([6, 4, 4]) tensor([28, 31, 27,  8, 21, 25])
    # torch.Size([2, 4, 4]) tensor([15,  6])
    for data, indices in loader:
        print(data.shape, indices)
    ```

#### Neural Network and Optimizer
`nn.Module` 必须实现 `forward()` 函数，并直接调用对象以使用 `forward()`

```python
import torch
import torch.nn as nn

class MLP(nn.Module):
    def __init__(self, n_embd):
        super().__init__()
        self.c_fc = nn.Linear(n_embd, 4 * n_embd, bias=True)
        self.gelu = nn.GELU()
        self.c_proj = nn.Linear(4 * n_embd, 2 * n_embd, bias=True)
        self.dropout = nn.Dropout(0.0)

        nn.init.normal_(self.c_fc.weight)
        nn.init.zeros_(self.c_proj.weight)

    def forward(self, x):
        x = self.c_fc(x)
        x = self.gelu(x)
        x = self.c_proj(x)
        x = self.dropout(x)
        return x

mlp = MLP(16)
X = torch.rand(4, 8, 16)

# MLP(
#   (c_fc): Linear(in_features=16, out_features=64, bias=True)
#   (gelu): GELU(approximate='none')
#   (c_proj): Linear(in_features=64, out_features=32, bias=True)
#   (dropout): Dropout(p=0.0, inplace=False)
# )
print(mlp)
# torch.Size([4, 8, 32])
print(mlp(X).shape)
# torch.Size([64, 16])
print(mlp.c_fc.weight.shape)
```

1. 预定义 `nn.Module` 子类
    - `nn.Embedding(n_embd, dim)`：嵌入层

        ```python
        embedding = nn.Embedding(10, 6)
        input = torch.LongTensor([[1, 2, 4, 5], [4, 3, 2, 9]])
        output = embedding(input)
        print(input.shape, output.shape)  # torch.Size([2, 4]) torch.Size([2, 4, 6])
        ```

    - `nn.Linear(in, out, bias)`：指定输入维度、输出维度以及是否需要偏移

        ```python
        linear = nn.Linear(16, 32)
        input = torch.rand(4, 8, 16)
        output = linear(input)
        print(output.size())  # torch.Size([4, 8, 32])
        ```

    - `nn.Softmax(dim)`：归一化

        ```python
        softmax = nn.Softmax(dim=1)
        input = torch.rand(4, 8)
        output = softmax(input)
        print(torch.sum(output, dim=1))  # tensor([1.0000, 1.0000, 1.0000, 1.0000])
        ```

    - `nn.Sequential(*module)`：一系列容器，可以直接调用
    - `nn.ModuleList(module_list)` / `nn.ModuleDict(module_dict)`：一系列容器，不可直接调用
    - `nn.Sigmoid()` / `nn.ReLU()` / `nn.GELU()`：激活函数

2. 非模块 `nn` 类
    - `nn.functional`：一系列预定义函数，例如卷积
    - `nn.init`：初始化方法，例如零初始化 / 正态分布初始化
    - `nn.Parameter(X)`：用于参数的张量
    - `nn.Dropout()`：随机将元素归零

        ```python
        row_size, col_size = 24, 16
        dropout = nn.Dropout(p=0.2)
        input = torch.rand(row_size, col_size)
        output = dropout(input)
        before, after = torch.count_nonzero(input == 0), torch.count_nonzero(output == 0)
        print(before, after / (row_size * col_size))  # tensor(0) tensor(0.2109)
        ```

3. 损失函数：包括 `nn.CrossEntropyLoss(X, Y)` / `nn.KLDivLoss(X, Y)` 等
4. 优化器：包括 `optim.SGD` / `optim.Adam` 等

#### Backward
1. PyTorch 自动求导基于计算图，其中 `grad_fn` 是计算导数值的函数

    ```python
    X = torch.rand(2, 6)
    Y = torch.rand(6, 4)
    X.requires_grad_(True)
    Y.requires_grad_(True)
    
    A = X @ Y
    B = torch.autograd.Variable(torch.rand(2, 4), requires_grad=True)
    L = torch.sum(A + B)
    A.retain_grad()
    B.retain_grad()
    L.retain_grad()
    
    L.backward()
    print(A.grad_fn)  # <MmBackward0 at 0x26029e53ac0>
    ```
    
    - 在上例 $L = \mathrm{sum} (\boldsymbol A + \boldsymbol B) = \mathrm{sum} (\boldsymbol X \boldsymbol Y + \boldsymbol B)$ 中，有 $\dfrac{\partial L}{\partial \boldsymbol X} = \dfrac{\partial L}{\partial \boldsymbol A} \cdot \dfrac{\partial \boldsymbol A}{\partial \boldsymbol X} = \boldsymbol Y^{\mathrm T} \cdot \dfrac{\partial L}{\partial \boldsymbol A}$ 成立

        ```python
        # tensor([[2.5367, 1.3179, 2.5914, 1.9586, 1.9559, 1.6149],
        #         [2.5367, 1.3179, 2.5914, 1.9586, 1.9559, 1.6149]],
        #        grad_fn=<MmBackward0>)
        print(A.grad @ Y.T)
        # tensor([[2.5367, 1.3179, 2.5914, 1.9586, 1.9559, 1.6149],
        #         [2.5367, 1.3179, 2.5914, 1.9586, 1.9559, 1.6149]])
        print(X.grad)
        # tensor([[1., 1., 1., 1.],
        #         [1., 1., 1., 1.]])
        print(B.grad)
        ```
    
    - 使用 `with torch.no_grad()` 或 `tensor.detach()` 禁用自动梯度以提速
    - `model.eval()` 也可禁用梯度，但此函数用于后续评估，会改变某些模块的运行方式（例如停止 `dropout`）
    - 一次计算只能进行一次反向传播，若需要多次计算，则需要在前一次使用 `backward(retain_graph=True)`

2. 梯度下降训练：假设前述 `MLP` 与 `SampleDataset` 已经定义

    ```python
    learning_rate = 1e-5
    epochs = 2
    batch_size = 6

    dataset = SampleDataset(32, 8, 16)
    loader = DataLoader(dataset, batch_size=batch_size, shuffle=True)
    model = MLP(16)
    loss_fn = nn.CrossEntropyLoss()
    optimizer = torch.optim.SGD(model.parameters(), lr=1e-5)
    ```

    则训练函数主体部分如下

    ```python
    def train_loop(dataloader, model, loss_fn, optimizer):
        for X, y in dataloader:
            pred = model(X)
            y = nn.functional.one_hot(y, 32)
            loss = loss_fn(pred, y)
    
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
    ```

3. 将输入向量与模型转换到 CUDA 以在 GPU 上训练

    ```python
    device = "cuda" if torch.cuda.is_available() else "cpu"
    tensor = tensor.to(device)
    model = model.to(device)
    ```
