# 逻辑与形而上学

## 简介
这是一个记录『逻辑与形而上学』相关知识的笔记，内容是逻辑学、数学、哲学与语言学的综合，相比较深度的探索而言更注重广度的收集。由于主要记录的是结论而不是推导或论证过程；是已被广为承认观点的收集而不是个人研究的阐述，因此更适用于「索引」而非「学习」或「研究」。

全站以 `mkdocs-material` 作为框架，使用中文作为描述语言，所有源文件在 GitHub 可见。标点符号的使用基本符合普遍规则，绝大部分不符合规范的排版均为有意编排。

!!! info "此项目仍未完成，可能存在若干疏漏和错误"
    <label> 现在进度：分析哲学 · 演绎与证成 </label>
    <div class="progress-container">
        <div class="progress-percentage" style="width: 25%;"> 24.50% </div>
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
</style>

<script>
const entryList = [
    // PART I
    "蔡曙山.认知科学导论[M]. 人民出版社:北京, 2021:1-697.",
    "华东师范大学哲学系逻辑学教研室.形式逻辑[M]. 华东师大出版社:上海, 2016:1-193.",
    "[英]Julian Baggini, [美]Peter S. Fosl.简单的哲学[M]. 陶涛,译. 中国人民大学出版社:北京, 2016:1-266.",
    // "Robin Turner,Nick Nicholas.Lojban For Beginners[EB/OL].",
    // PART II
    "蔡曙山,邹崇理.自然语言形式理论研究[M]. 人民出版社:北京, 2010:1-604.",
    "陈波.逻辑哲学[M]. 北京大学出版社:北京, 2006:1-364.",
    // "黄敏.分析哲学导论[M]. 中山大学出版社:广州, 2009:1-362.",
    "[美]Stewart Shapiro.数学哲学：对数学的思考[M]. 郝兆宽,杨睿之,译. 复旦大学出版社:上海, 2009:1-281.",
    // PART III
    "马明辉.结构证明论[M]. 科学出版社:北京, 2019:1-252.",
    // "郝兆宽,杨睿之,杨跃.数理逻辑：证明及其限度[M]. 复旦大学出版社:上海, 2014:175-236.",
    "姚宁远.初等模型论[M]. 复旦大学出版社:上海, 2018:1-229.",
    // "郝兆宽,杨睿之,杨跃.递归论：算法与随机性基础[M]. 复旦大学出版社:上海, 2018:1-191.",
    // "[美]Michael Sipser.计算理论导引[M]. 唐常杰,陈鹏,向勇,刘齐宏,译. 机械工业出版社:上海, 2020:174-246",
    // "John Stillwell.Reverse Mathematics: Proofs from the Inside out[M]. Princeton University Press:Oxford, 2018:1-167",
    // "郝兆宽,杨跃.集合论：对无穷概念的探索[M]. 复旦大学出版社:上海, 2014:1-237.",
    // PART IV
    // "贺伟.范畴论[M]. 科学出版社:北京, 2006:1-104.",
    // "胡典顺,徐汉文.初等数论[M]. 科学出版社:北京, 2017:1-151.",
    "熊金城.点集拓扑讲义[M]. 高等教育出版社:北京, 2020:1-162.",
    // "[美]Walter Rudin.数学分析原理[M]. 赵慈庚,蒋铎,译. 机械工业出版社:上海, 2006:1-304.",
    // "李文威.代数学方法：基本架构[M]. 高等教育出版社:北京, 2019:11-423.",
    // PART V
    // "陈有祺.形式语言与自动机[M]. 机械工业出版社:上海, 2008:1-227.",
    // "Rob Nederpelt,Herman Geuvers.Type Theory and Formal Proof: an Introduction[M]. Cambridge UniversitPress:Cambridge, 2014:1-390.",
];

entryList.forEach((item, index) => {
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
