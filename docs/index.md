# 逻辑与形而上学

## 简介
这是一个记录『逻辑与形而上学』相关知识的笔记，内容是逻辑学、数学、哲学与语言学的综合，相比较深度的探索而言更注重广度的收集。由于主要记录的是结论而不是推导或论证过程；是已被广为承认观点的收集而不是个人研究的阐述，因此更适用于「索引」而非「学习」或「研究」。

全站以 `mkdocs-material` 作为框架，使用中文作为描述语言，所有源文件在 GitHub 可见。标点符号的使用基本符合普遍规则，绝大部分不符合规范的排版均为有意编排。

!!! info "此项目仍未完成，可能存在若干疏漏和错误"
    <label> 现在进度：分析哲学 · 演绎与证成 </label>
    <div class="progress-container">
        <div class="progress-percentage"> </div>
    </div>

## 参考文献

<div class="ref"> </div>

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
        ref: "蔡曙山.认知科学导论[M]. 人民出版社:北京, 2021:1-697.",
        author: ["蔡曙山"],
        title: "认知科学导论",
        type: "M",
        press: "人民出版社",
        locate: "北京",
        year: 2021,
        page: [1, 697],
        plot: 180
    },
    {
        ref: "华东师范大学哲学系逻辑学教研室.形式逻辑[M]. 华东师大出版社:上海, 2016:1-193.",
        author: ["华东师范大学哲学系逻辑学教研室"],
        title: "形式逻辑",
        type: "M",
        press: "华东师大出版社",
        locate: "上海",
        year: 2016,
        page: [1, 193],
        plot: 193
    },
    {
        ref: "[英]Julian Baggini, [美]Peter S. Fosl.简单的哲学[M]. 陶涛,译. 中国人民大学出版社:北京, 2016:1-266.",
        author: ["[英]Julian Baggini", "[美]Peter S. Fosl"],
        title: "简单的哲学",
        type: "M",
        trans: ["陶涛"],
        press: "中国人民大学出版社",
        locate: "北京",
        year: 2016,
        page: [1, 266],
        plot: 266
    },
    {
        ref: "Robin Turner,Nick Nicholas.Lojban For Beginners[EB/OL].",
        author: ["Robin Turner", "Nick Nicholas"],
        title: "Lojban For Beginners",
        type: "EB/OL",
        page: [1, 185],
        plot: 0
    },
    {
        ref: "赵毅衡.符号学：原理与推演[M]. 南京大学出版社:南京, 2016:1-370.",
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
        ref: "蔡曙山,邹崇理.自然语言形式理论研究[M]. 人民出版社:北京, 2010:1-604.",
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
        ref: "陈波.逻辑哲学[M]. 北京大学出版社:北京, 2006:1-364.",
        author: ["陈波"],
        title: "逻辑哲学",
        type: "M",
        press: "北京大学出版社",
        locate: "北京",
        year: 2006,
        page: [1, 364],
        plot: 29
    },
    {
        ref: "黄敏.分析哲学导论[M]. 中山大学出版社:广州, 2009:1-362.",
        author: ["黄敏"],
        title: "分析哲学导论",
        type: "M",
        press: "中山大学出版社",
        locate: "广州",
        year: 2009,
        page: [1, 362],
        plot: 0
    },
    {
        ref: "[美]Stewart Shapiro.数学哲学：对数学的思考[M]. 郝兆宽,杨睿之,译. 复旦大学出版社:上海, 2009:1-281.",
        author: ["[美]Stewart Shapiro"],
        title: "数学哲学：对数学的思考",
        type: "M",
        trans: ["郝兆宽", "杨睿之"],
        press: "复旦大学出版社",
        locate: "上海",
        year: 2009,
        page: [1, 281],
        plot: 281
    },
    {
        ref: "马明辉.结构证明论[M]. 科学出版社:北京, 2019:1-252.",
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
        ref: "郝兆宽,杨睿之,杨跃.数理逻辑：证明及其限度[M]. 复旦大学出版社:上海, 2014:175-236.",
        author: ["郝兆宽", "杨睿之", "杨跃"],
        title: "数理逻辑：证明及其限度",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2014,
        page: [175, 236],
        plot: 0
    },
    {
        ref: "姚宁远.初等模型论[M]. 复旦大学出版社:上海, 2018:1-229.",
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
        ref: "郝兆宽,杨睿之,杨跃.递归论：算法与随机性基础[M]. 复旦大学出版社:上海, 2018:1-191.",
        author: ["郝兆宽", "杨睿之", "杨跃"],
        title: "递归论：算法与随机性基础",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2018,
        page: [1, 191],
        plot: 0
    },
    {
        ref: "[美]Michael Sipser.计算理论导引[M]. 唐常杰,陈鹏,向勇,刘齐宏,译. 机械工业出版社:上海, 2020:174-246",
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
        ref: "John Stillwell.Reverse Mathematics: Proofs from the Inside out[M]. Princeton University Press:Oxford, 2018:1-167",
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
        ref: "郝兆宽,杨跃.集合论：对无穷概念的探索[M]. 复旦大学出版社:上海, 2014:1-237.",
        author: ["郝兆宽", "杨跃"],
        title: "集合论：对无穷概念的探索",
        type: "M",
        press: "复旦大学出版社",
        locate: "上海",
        year: 2014,
        page: [1, 237],
        plot: 0
    },
    {
        ref: "贺伟.范畴论[M]. 科学出版社:北京, 2006:1-104.",
        author: ["贺伟"],
        title: "范畴论",
        type: "M",
        press: "科学出版社",
        locate: "北京",
        year: 2006,
        page: [1, 104],
        plot: 0
    },
    {
        ref: "胡典顺,徐汉文.初等数论[M]. 科学出版社:北京, 2017:1-151.",
        author: ["胡典顺", "徐汉文"],
        title: "初等数论",
        type: "M",
        press: "科学出版社",
        locate: "北京",
        year: 2017,
        page: [1, 151],
        plot: 151
    },
    {
        ref: "熊金城.点集拓扑讲义[M]. 高等教育出版社:北京, 2020:1-162.",
        author: ["熊金城"],
        title: "点集拓扑讲义",
        type: "M",
        press: "高等教育出版社",
        locate: "北京",
        year: 2020,
        page: [1, 162],
        plot: 162
    },
    {
        ref: "[美]Walter Rudin.数学分析原理[M]. 赵慈庚,蒋铎,译. 机械工业出版社:上海, 2006:1-304.",
        author: ["[美]Walter Rudin"],
        title: "数学分析原理",
        type: "M",
        trans: ["赵慈庚", "蒋铎"],
        press: "机械工业出版社",
        locate: "上海",
        year: 2006,
        page: [1, 304],
        plot: 0
    },
    {
        ref: "李文威.代数学方法：基本架构[M]. 高等教育出版社:北京, 2019:11-423.",
        author: ["李文威"],
        title: "代数学方法：基本架构",
        type: "M",
        press: "高等教育出版社",
        locate: "北京",
        year: 2019,
        page: [11, 423],
        plot: 0
    },
    {
        ref: "陈有祺.形式语言与自动机[M]. 机械工业出版社:上海, 2008:1-227.",
        author: ["陈有祺"],
        title: "形式语言与自动机",
        type: "M",
        press: "机械工业出版社",
        locate: "上海",
        year: 2008,
        page: [1, 227],
        plot: 0
    },
    {
        ref: "Rob Nederpelt,Herman Geuvers.Type Theory and Formal Proof: an Introduction[M]. Cambridge UniversitPress:Cambridge, 2014:1-390.",
        author: ["Rob Nederpelt", "Herman Geuvers"],
        title: "Type Theory and Formal Proof: an Introduction",
        type: "M",
        press: "Cambridge UniversitPress",
        locate: "Cambridge",
        year: 2014,
        page: [1, 390],
        plot: 0
    }
];

const [plot, total] = refList.reduce(([plot, total], item) => {
    item.total = item.page[1] - item.page[0] + 1;
    item.percent = (100 * item.plot / item.total).toFixed(2) + "%";
    plot += item.plot;
    total += item.total;
    return [plot, total];
}, [0, 0]);
const progress = (100 * plot / total);
const progressBar = document.querySelector(".progress-percentage");
progressBar.innerText = progress.toFixed(2) + "%";
progressBar.style.width = progress.toFixed(0) + "%";

refList
    .filter((item) => item.plot)
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
        document.querySelector(".ref").append(newEntry);
    });
</script>
