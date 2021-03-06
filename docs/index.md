# 逻辑与形而上学

## 简介
这是一个记录『逻辑与形而上学』相关知识的笔记，内容是逻辑学、数学、哲学与语言学的综合，相比较深度的探索而言更注重广度的收集。由于主要记录的是结论而不是推导或论证过程；是已被广为承认观点的收集而不是个人研究的阐述，因此更适用于「索引」而非「学习」或「研究」。

全站以 `mkdocs-material` 作为框架，使用中文作为描述语言，尽可能保证符号的使用与书写风格具有一致性，所有源文件在 GitHub 可见。标点符号的使用基本符合普遍规则，绝大部分不规范的排版均为有意编排。

!!! info "此项目仍未完成，可能存在若干疏漏和错误"
    <label> 现在进度：分析哲学 · 意义理论 </label>
    <div class="progress-container">
        <div class="progress-percentage"> </div>
    </div>

## 参考文献

<div class="ref"> </div>

??? info "正在记录的书目"
    <div class="ongoing"> </div>

??? info "尚未记录的书目"
    <div class="uncomp"> </div>

<style>
.ref {
    display: flex;
    flex-direction: column;
}

.entry {
    display: flex;
    flex-direction: row;
}

.index {
    min-width: 2.4em;
    font-weight: 600;
}
.index:before {
    content: "[";
}
.index:after {
    content: "]";
}

.value {
    flex-grow: 1;
}

.progress-container {
    margin-top: -8px;
    height: 16px;
    width: 100%;
    background-color: #ddd;
    border-radius: 0.1rem;
}

.progress-percentage {
    text-align: right;
    font-size: 12px;
    padding-right: 8px;
    line-height: 16px;
    background-color: rgb(0, 184, 212);
    border-radius: 0.1rem;
    color: white;
}
</style>

<script>
const refList = [
    {
        author: ["蔡曙山"],
        title: "认知科学导论",
        type: "M",
        press: "人民出版社",
        locate: "北京",
        year: 2021,
        page: [1, 697]
    },
    {
        author: ["华东师范大学哲学系逻辑学教研室"],
        title: "形式逻辑",
        type: "M",
        press: "华东师大出版社",
        locate: "上海",
        year: 2016,
        page: [1, 193]
    },
    {
        author: ["[英]Julian Baggini", "[美]Peter S. Fosl"],
        title: "简单的哲学",
        type: "M",
        trans: ["陶涛"],
        press: "中国人民大学出版社",
        locate: "北京",
        year: 2016,
        page: [1, 266]
    },
    {
        author: ["[英]Patrick J. Hurley"],
        title: "简明逻辑学导论",
        type: "M",
        trans: ["陈波", "宋文淦", "熊力文", "谷振诣"],
        press: "世界图书出版公司",
        locate: "北京",
        year: 2010,
        page: [85, 140]
    },
    {
        author: ["Robin Turner", "Nick Nicholas"],
        title: "Lojban For Beginners",
        type: "EB/OL",
        page: [1, 185],
        plot: 0
    },
    {
        author: ["赵毅衡"],
        title: "符号学：原理与推演",
        type: "M",
        press: "南京大学出版社",
        locate: "南京",
        year: 2016,
        page: [1, 370],
        plot: 0
    },
    {
        author: ["蔡曙山", "邹崇理"],
        title: "自然语言形式理论研究",
        type: "M",
        press: "人民出版社",
        locate: "北京",
        year: 2010,
        page: [1, 604],
        plot: 294
    },
    {
        author: ["陈波"],
        title: "逻辑哲学",
        type: "M",
        press: "北京大学出版社",
        locate: "北京",
        year: 2006,
        page: [1, 364],
        plot: 144 + (364 - 345)
    },
    {
        author: ["黄敏"],
        title: "分析哲学导论",
        type: "M",
        press: "中山大学出版社",
        locate: "广州",
        year: 2009,
        page: [295, 362],
        plot: 0
    },
    {
        author: ["[美]Stewart Shapiro"],
        title: "数学哲学：对数学的思考",
        type: "M",
        trans: ["郝兆宽", "杨睿之"],
        press: "复旦大学出版社",
        locate: "上海",
        year: 2009,
        page: [1, 281]
    },
    {
        author: ["马明辉"],
        title: "结构证明论",
        type: "M",
        press: "科学出版社",
        locate: "北京",
        year: 2019,
        page: [1, 252],
        plot: 28
    },
    {
        author: ["郝兆宽", "杨睿之", "杨跃"],
        title: "数理逻辑：证明及其限度",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2014,
        page: [1, 236],
        plot: 0
    },
    {
        author: ["姚宁远"],
        title: "初等模型论",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2018,
        page: [1, 229],
        plot: 30
    },
    {
        author: ["郝兆宽", "杨睿之", "杨跃"],
        title: "递归论：算法与随机性基础",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2018,
        page: [1, 191],
        plot: 16
    },
    {
        author: ["[美]Michael Sipser"],
        title: "计算理论导引",
        type: "M",
        trans: ["唐常杰", "陈鹏", "向勇", "刘齐宏"],
        press: "机械工业出版社",
        locate: "上海",
        year: 2020,
        page: [174, 246],
        plot: 0
    },
    {
        author: ["John Stillwell"],
        title: "Reverse Mathematics: Proofs from the Inside out",
        type: "M",
        press: "Princeton University Press",
        locate: "Oxford",
        year: 2018,
        page: [1, 167],
        plot: 0
    },
    {
        author: ["郝兆宽", "杨跃"],
        title: "集合论：对无穷概念的探索",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2014,
        page: [1, 237],
        plot: 61
    },
    {
        author: ["周焕山"],
        title: "初等代数研究",
        type: "M",
        press: "高等教育出版社",
        locate: "北京",
        year: 2014,
        page: [56, 377]
    },
    {
        author: ["胡典顺", "徐汉文"],
        title: "初等数论",
        type: "M",
        press: "科学出版社",
        locate: "北京",
        year: 2017,
        page: [1, 151]
    },
    {
        author: ["フィッシュ"],
        title: "巨大数論",
        type: "M",
        press: "株式会社インプレス R&D",
        locate: "東京",
        year: 2018,
        page: [1, 258],
        plot: 0
    },
    {
        author: ["Sheldon Axler"],
        title: "Linear Algebra Done Right",
        type: "M",
        press: "Springer",
        locate: "Cham",
        year: 2015,
        page: [1, 202],
        plot: 0
    },
    {
        author: ["项武义"],
        title: "基础几何学",
        type: "EB/OL",
        page: [1, 194],
        plot: 0
    },
    {
        author: ["项武义", "王申怀", "潘养廉"],
        title: "古典几何学",
        type: "M",
        press: "高等教育出版社",
        locate: "北京",
        year: 2014,
        page: [1, 180],
        plot: 0
    },
    {
        author: ["熊金城"],
        title: "点集拓扑讲义",
        type: "M",
        press: "高等教育出版社",
        locate: "北京",
        year: 2020,
        page: [1, 162]
    },
    {
        author: ["欧阳光中", "朱学炎", "金福临", "陈传璋"],
        title: "数学分析",
        type: "M",
        press: "高等教育出版社",
        locate: "北京",
        year: 2018,
        page: [1, 526],
        plot: 0
    },
    {
        author: ["赵一鸣", "阚海斌", "吴永辉"],
        title: "离散数学",
        type: "M",
        press: "人民邮电出版社",
        locate: "北京",
        year: 2011,
        page: [2, 141],
        plot: 87
    },
    {
        author: ["陈有祺"],
        title: "形式语言与自动机",
        type: "M",
        press: "机械工业出版社",
        locate: "上海",
        year: 2008,
        page: [1, 227]
    },
    {
        author: ["Rob Nederpelt", "Herman Geuvers"],
        title: "Type Theory and Formal Proof: an Introduction",
        type: "M",
        press: "Cambridge University Press",
        locate: "Cambridge",
        year: 2014,
        page: [1, 390],
        plot: 0
    }
];

const [plot, total] = refList.reduce(([plot, total], item) => {
    item.total = item.page[1] - item.page[0] + 1;
    item.plot = item.plot ?? item.total;
    item.percent = (100 * item.plot / item.total).toFixed(2) + "%";
    plot += item.plot;
    total += item.total;
    return [plot, total];
}, [0, 0]);
const progress = (100 * plot / total);
const progressBar = document.querySelector(".progress-percentage");
progressBar.innerText = progress.toFixed(2) + "%";
progressBar.style.width = progress.toFixed(0) + "%";

const renderRef = (query, filterCond) => {
refList
    .filter(filterCond)
    .map((item => {
        const catRef = (item) => {
            const { author, title, type, trans, press, locate, year, page } = item;
            return `${author.join(",")}.` +
                `${title}[${type}]. ` + (type === "M"
                    ? (trans ? `${trans.join(",")},译. ` : ``) +
                        `${press}:${locate}, ${year}:${page[0]}-${[page[1]]}.`
                    : ``
                )
        };
        return catRef(item);
    }))
    .forEach((item, index) => {
        const newEntry = document.createElement("div");
        const newValue = document.createElement("div");
        const newIndex = document.createElement("div");
        newEntry.className = "entry";
        newValue.className = "value";
        newIndex.className = "index";
        newValue.innerText = item;
        newIndex.innerText = index + 1;
        newEntry.append(newIndex);
        newEntry.append(newValue);
        document.querySelector(query).append(newEntry);
    });
};

renderRef(".ref", (item) => item.plot);
renderRef(".ongoing", (item) => item.plot && item.plot < item.total);
renderRef(".uncomp", (item) => !item.plot);
</script>
