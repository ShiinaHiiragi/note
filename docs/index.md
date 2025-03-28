# 逻辑与形而上学

## 简介

<div class="entry start">
    <img src="assets/icons/cube-outline.svg" style="width: 1.2rem" />
    <div class="sub-entry">
        <div class="caption">逻辑与形而上学</div>
        <div class="value">
            关于逻辑学、数学、哲学、语言学与理论计算机科学等学科基础的笔记
        </div>
    </div>
</div>

<div class="entry start">
    <img src="assets/icons/book-search-outline.svg" style="width: 1.2rem" />
    <div class="sub-entry">
        <div class="caption">如何使用</div>
        <div class="value">
            根据需求进行索引，而非从零开始的学习或阐述个人立场的研究
        </div>
    </div>
</div>

<div class="entry start">
    <img src="assets/icons/pencil.svg" style="width: 1.2rem" />
    <div class="sub-entry">
        <div class="caption">前置知识</div>
        <div class="value">
            中国义务教育毕业水平的语言与数学能力，后者包括基本算术、初等代数与直观几何
        </div>
    </div>
</div>

<div class="entry start">
    <img src="assets/icons/monitor-cellphone.svg" style="width: 1.2rem" />
    <div class="sub-entry">
        <div class="caption">手机访问</div>
        <div class="value">
            纯文字排版已经过优化，推荐使用宽度高于 800 像素的屏幕查阅含公式的内容
        </div>
    </div>
</div>

<div class="entry start">
    <img src="assets/icons/github.svg" style="width: 1.2rem" />
    <div class="sub-entry">
        <div class="caption">本项目已开源</div>
        <div class="value">
            所有源文件在 <a href="https://github.com/ShiinaHiiragi/note/" target="_blank"> GitHub </a> 可见，采用 GPL-3.0 协议开源
        </div>
    </div>
</div>


## 参考文献

<div class="ref"> </div>

<script>
const refList = [
    {
        author: ["华东师范大学哲学系逻辑学教研室"],
        title: "形式逻辑",
        type: "M",
        year: 2016,
        page: [1, 193],
        press: "华东师大出版社",
        locate: "上海"
    },
    {
        author: ["[英]Julian Baggini", "[美]Peter S. Fosl"],
        title: "简单的哲学",
        type: "M",
        year: 2016,
        page: [1, 266],
        trans: ["陶涛"],
        press: "中国人民大学出版社",
        locate: "北京"
    },
    {
        author: ["[英]Patrick J. Hurley"],
        title: "简明逻辑学导论",
        type: "M",
        year: 2010,
        page: [85, 140],
        trans: ["陈波", "宋文淦", "熊力文", "谷振诣"],
        press: "世界图书出版公司",
        locate: "北京"
    },
    {
        author: ["Robin Turner", "Nick Nicholas"],
        title: "Lojban For Beginners",
        type: "DB/OL",
        page: [1, 185]
    },
    {
        author: ["John W. Cowan"],
        title: "The Complete Lojban Language",
        type: "M",
        page: [489, 503],
        year: 2016,
        press: "Logical Language Group, Incorporated",
        locate: "Fairfax"
    },
    {
        author: ["Leonardo de Moura", "Sebastian Ullrich"],
        title: "The Lean 4 Theorem Prover and Programming Language",
        type: "DB/OL",
        page: [1, 11]
    },
    {
        author: ["David Thrane Christiansen"],
        title: "Functional Programming in Lean",
        type: "DB/OL",
        page: [1, 437]
    },
    {
        author: ["Jeremy Avigad", "Leonardo de Moura", "Soonho Kong", "Sebastian Ullrich"],
        title: "Theorem Proving in Lean 4",
        type: "DB/OL",
        page: [1, 194]
    },
    {
        author: ["Arthur Paulino", "Damiano Testa", "Edward Ayers", "Evgenia Karunus", "Henrik Böving", "Jannis Limperg", "Siddhartha Gadgil", "Siddharth Bhat"],
        title: "Metaprogramming in Lean 4",
        type: "DB/OL",
        page: [1, 103]
    },
    {
        author: ["Microsoft Corporation"],
        title: "Lean Manual",
        type: "DB/OL",
        page: [1, 154]
    },
    {
        author: ["蔡曙山"],
        title: "认知科学导论",
        type: "M",
        year: 2021,
        page: [1, 697],
        press: "人民出版社",
        locate: "北京"
    },
    {
        author: ["[英]Julian Baggini", "[美]Peter S. Fosl"],
        title: "好用的哲学",
        type: "M",
        year: 2016,
        page: [1, 273],
        trans: ["陶涛"],
        press: "中国人民大学出版社",
        locate: "北京"
    },
    {
        author: ["[美]Robert C. Solomon"],
        title: "大问题：简明哲学导论",
        type: "M",
        year: 2018,
        page: [413, 435],
        trans: ["张卜天"],
        press: "清华大学出版社",
        locate: "北京"
    },
    {
        author: ["赵毅衡"],
        title: "符号学：原理与推演",
        type: "M",
        year: 2016,
        page: [1, 390],
        press: "南京大学出版社",
        locate: "南京"
    },
    {
        author: ["陈波"],
        title: "逻辑哲学",
        type: "M",
        year: 2006,
        page: [1, 364],
        press: "北京大学出版社",
        locate: "北京"
    },
    {
        author: ["[美]Stewart Shapiro"],
        title: "数学哲学：对数学的思考",
        type: "M",
        year: 2009,
        page: [1, 281],
        trans: ["郝兆宽", "杨睿之"],
        press: "复旦大学出版社",
        locate: "上海"
    },
    {
        author: ["马明辉"],
        title: "结构证明论",
        type: "M",
        year: 2019,
        page: [1, 252],
        press: "科学出版社",
        locate: "北京"
    },
    {
        author: ["张清宇"],
        title: "逻辑哲学九章",
        type: "M",
        year: 2004,
        page: [234, 264],
        press: "江苏人民出版社",
        locate: "南京"
    },
    {
        author: ["J. P. Aguilera"],
        title: "The Order of Reflection",
        type: "J",
        page: [1, 21],
        year: 2019,
        arXiv: "1906.11769"
    },
    {
        author: ["David Madore"],
        title: "A Zoo of Ordinals",
        type: "DB/OL",
        page: [1, 10]
    },
    {
        author: ["姚宁远"],
        title: "初等模型论",
        type: "M",
        page: [1, 229],
        press: "复旦大学出版社",
        locate: "上海",
        year: 2018
    },
    {
        author: ["郝兆宽", "杨睿之", "杨跃"],
        title: "递归论：算法与随机性基础",
        type: "M",
        page: [1, 191],
        press: "复旦大学出版社",
        locate: "上海",
        year: 2018
    },
    {
        author: ["[美]Thomas H. Cormen", "[美]Charles E. Leiserson", "[美]Ronald L. Rivest", "[美]Clifford Stein"],
        title: "算法导论",
        type: "M",
        year: 2013,
        page: [25, 36],
        trans: ["殷建平", "徐云", "王刚", "刘晓光", "苏明", "邹恒明", "王宏志"],
        press: "机械工业出版社",
        locate: "上海"
    },
    {
        author: ["[美]Michael Sipser"],
        title: "计算理论导引",
        type: "M",
        year: 2020,
        page: [174, 246],
        trans: ["唐常杰", "陈鹏", "向勇", "刘齐宏"],
        press: "机械工业出版社",
        locate: "上海"
    },
    {
        author: ["郝兆宽", "杨睿之", "杨跃"],
        title: "数理逻辑：证明及其限度",
        type: "M",
        page: [1, 236],
        press: "复旦大学出版社",
        locate: "上海",
        year: 2014
    },
    {
        author: ["R. L. Goodstein"],
        title: "Logic-free formalisations of recursive arithmetic",
        type: "DB/OL",
        page: [1, 15]
    },
    {
        author: ["田中一之"],
        title: "逆数学と 2 階算術",
        type: "M",
        year: 2018,
        page: [1, 105],
        press: "河合文化教育研究所",
        locate: "名古屋"
    },
    {
        author: ["郝兆宽", "杨跃"],
        title: "集合论：对无穷概念的探索",
        type: "M",
        year: 2014,
        page: [1, 237],
        press: "复旦大学出版社",
        locate: "上海"
    },
    {
        author: ["杨睿之"],
        title: "作为哲学的数理逻辑",
        type: "M",
        year: 2016,
        page: [1, 182],
        press: "复旦大学出版社",
        locate: "上海"
    },
    {
        author: ["Thomas Jech"],
        title: "Set Theory",
        type: "M",
        year: 2003,
        page: [311, 365],
        press: "Springer Science & Business Media",
        locate: "London"
    },
    {
        author: ["W. Hugh Woodin"],
        title: "The Ultimate-L Conjecture",
        type: "DB/OL",
        page: [1, 107]
    },
    {
        author: ["李文威"],
        title: "代数学方法",
        type: "M",
        year: 2018,
        page: [11, 26],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["周焕山"],
        title: "初等代数研究",
        type: "M",
        year: 2014,
        page: [56, 377],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["胡典顺", "徐汉文"],
        title: "初等数论",
        type: "M",
        year: 2017,
        page: [1, 151],
        press: "科学出版社",
        locate: "北京"
    },
    {
        author: ["张巍", "阚海斌", "倪卫明"],
        title: "线性代数",
        type: "M",
        year: 2016,
        page: [1, 186],
        press: "科学出版社",
        locate: "北京"
    },
    {
        author: ["张贤达"],
        title: "矩阵分析与应用",
        type: "M",
        year: 2013,
        page: [143, 151],
        press: "清华大学出版社",
        locate: "北京"
    },
    {
        author: ["Terence Parr", "Jeremy Howard"],
        title: "The Matrix Calculus You Need for Deep Learning",
        type: "J",
        page: [1, 33],
        year: 2018,
        arXiv: "1802.01528"
    },
    {
        author: ["フィッシュ"],
        title: "巨大数論",
        type: "M",
        year: 2018,
        page: [1, 258],
        press: "株式会社インプレス R&D",
        locate: "東京"
    },
    {
        author: ["曹知秋"],
        title: "大数理论",
        type: "DB/OL",
        page: [1, 1524]
    },
    {
        author: ["顾沛", "邓少强"],
        title: "简明抽象代数",
        type: "M",
        year: 2003,
        page: [1, 126],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["王兵山", "毛晓光", "刘万伟"],
        title: "高级范畴论",
        type: "M",
        year: 2012,
        page: [1, 153],
        press: "清华大学出版社",
        locate: "北京"
    },
    {
        author: ["[苏]М. М. По́стников"],
        title: "几何讲义：解析几何",
        type: "M",
        year: 1992,
        page: [1, 44],
        trans: ["周友成"],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["项武义", "王申怀", "潘养廉"],
        title: "古典几何学",
        type: "M",
        year: 2014,
        page: [41, 54],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["徐利治"],
        title: "现代数学手册·经典数学卷",
        type: "M",
        year: 2000,
        page: [905, 1040],
        press: "华中科技大学出版社",
        locate: "武汉"
    },
    {
        author: ["数理化自学丛书编委会"],
        title: "平面解析几何",
        type: "M",
        year: 1965,
        page: [1, 407],
        press: "上海科学技术出版社",
        locate: "上海"
    },
    {
        author: ["[德]Eberhard Zeidler"],
        title: "数学指南：实用数学手册",
        type: "M",
        year: 2012,
        page: [787, 798],
        trans: ["李文林"],
        press: "科学出版社",
        locate: "北京"
    },
    {
        author: ["吕林根", "徐子道"],
        title: "解析几何",
        type: "M",
        year: 2006,
        page: [1, 295],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["梅向明", "刘增贤", "王汇淳", "王智秋"],
        title: "高等几何",
        type: "M",
        year: 2020,
        page: [1, 151],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["彭家贵", "陈卿"],
        title: "微分几何",
        type: "M",
        year: 2002,
        page: [3, 152],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["熊金城"],
        title: "点集拓扑讲义",
        type: "M",
        year: 2020,
        page: [1, 162],
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["赵一鸣", "阚海斌", "吴永辉"],
        title: "离散数学",
        type: "M",
        year: 2011,
        page: [2, 221],
        press: "人民邮电出版社",
        locate: "北京"
    },
    {
        author: ["欧阳光中", "朱学炎", "金福临", "陈传璋"],
        title: "数学分析",
        type: "M",
        page: [1, 430],
        year: 2018,
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["陈纪修", "於崇华", "金路"],
        title: "数学分析",
        type: "M",
        page: [424, 638],
        year: 2019,
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["程其襄", "张奠宙", "胡善文", "薛以峰"],
        title: "实变函数与泛函分析基础",
        type: "M",
        page: [1, 221],
        year: 2019,
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["潘永亮", "汪琥庭", "汪芳庭", "宋立功"],
        title: "复变函数",
        type: "M",
        page: [1, 175],
        year: 2004,
        press: "科学出版社",
        locate: "北京"
    },
    {
        author: ["汪嘉冈"],
        title: "现代概率论基础",
        type: "M",
        page: [1, 165],
        year: 2005,
        press: "复旦大学出版社",
        locate: "上海"
    },
    {
        author: ["苏淳", "冯群强"],
        title: "概率论",
        type: "M",
        page: [1, 292],
        year: 2020,
        press: "科学出版社",
        locate: "北京"
    },
    {
        author: ["李贤平"],
        title: "概率论基础",
        type: "M",
        page: [1, 391],
        year: 2010,
        press: "高等教育出版社",
        locate: "北京"
    },
    {
        author: ["平冈和幸", "堀玄"],
        title: "程序员的数学 ② 概率统计",
        type: "M",
        page: [1, 403],
        year: 2015,
        trans: ["陈篠烟"],
        press: "人民邮电出版社",
        locate: "北京"
    },
    {
        author: ["方兆本", "缪柏其"],
        title: "随机过程",
        type: "M",
        page: [1, 160],
        year: 2011,
        press: "人民邮电出版社",
        locate: "北京",
    },
    {
        author: ["Rob Nederpelt", "Herman Geuvers"],
        title: "Type Theory and Formal Proof",
        type: "M",
        page: [1, 409],
        year: 2014,
        press: "Cambridge University Press",
        locate: "Cambridge"
    },
    {
        author: ["Hanne Riis Nielson", "Flemming Nielson"],
        title: "Semantics with Applications: an Appetizer",
        type: "M",
        page: [1, 254],
        year: 2007,
        press: "Springer Science & Business Media",
        locate: "London"
    },
    {
        author: ["陈有祺"],
        title: "形式语言与自动机",
        type: "M",
        page: [1, 227],
        year: 2008,
        press: "机械工业出版社",
        locate: "上海"
    },
    {
        author: ["蔡曙山", "邹崇理"],
        title: "自然语言形式理论研究",
        type: "M",
        page: [1, 551],
        year: 2010,
        press: "人民出版社",
        locate: "北京"
    }
];

refList.forEach((item) => {
    item.total = item.page[1] - item.page[0] + 1;
    item.plot = item.plot ?? item.total;
    item.percent = (100 * item.plot / item.total).toFixed(2) + "%";
});

window.stat = {
    split: refList.map((item) => ({
        title: item.title,
        pages: item.total
    })),
    total: refList.reduce(
        (prev, item) => prev + item.total,
        0
    )
};

((query) => {
    refList
        .filter((item) => item.plot)
        .map((item => {
            const catRef = (item) => {
                const { author, title, type, page } = item;
                const { year } = item;

                const { trans, press, locate } = item;
                const { journal, section, arXiv } = item;
                result = `${author.join(", ")}. ` + `${title} [${type}]. `

                switch (type) {
                    case "M":
                        return result +
                            (trans ? `${trans.join(",")},译. ` : ``) +
                            `${press}:${locate}, ${year}.`
                        break;
                    case "J":
                        return result + (
                            arXiv === undefined
                            ? `${journal}, ${year}, ${section}.`
                            : `arXiv:${arXiv}, ${year}.`
                        )
                        break;
                    default:
                        // [DB/OL]
                        return result;
                        break;
                }
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
            document.querySelector(query)?.append(newEntry);
        });
})(".ref")
</script>

<style>
.ref {
    display: flex;
    flex-direction: column;
}

.entry {
    display: flex;
    flex-direction: row;
}

.start {
    align-items: start;
    padding-top: 4px;
}

.sub-entry {
    display: flex;
    flex-grow: 1;
    flex-direction: row;
    padding-left: 8px;
}

@media (max-width: 800px) {
    .sub-entry {
        flex-direction: column;
    }
}

.caption {
    min-width: 8em;
    font-weight: var(--bold-font-weight);
}

.value {
    flex-grow: 1;
}

.index {
    min-width: 2.25em;
    margin-right: 0.75em;
    font-weight: var(--bold-font-weight);
    text-align: right;
}

.index:before {
    content: "[";
}

.index:after {
    content: "]";
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
    background-color: rgb(32, 148, 243);
    border-radius: 0.1rem;
    color: white;
}
</style>
