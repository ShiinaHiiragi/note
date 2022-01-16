# 逻辑与形而上学

## 简介
这是一个记录『逻辑与形而上学』相关知识的笔记, 内容是数学、逻辑学、语言学与哲学的结合, 索引部分记录了更加详细的大纲架构. 由于主要记录的是结论而不是推导或论证过程, 因此更适用于「事后回忆」而非「学习」.

因能力有限, 本站以 `mkdocs-material` 作为框架, 使用中文作为描述语言, 所有源文件在 GitHub 可见. 为了输入方便, 中文部分使用英文标点符号分隔句子, 每个半角标点符号后面会附加一个半角空格.

!!! warning "此项目仍未完成, 可能存在若干疏漏和错误"
    <label> 现在进度: 数学哲学 - 结构主义 </label>
    <div class="progress-container">
        <div class="progress-percentage" style="width: 89%;"> 89% </div>
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
entryList = [
    "蔡曙山.认知科学导论[M]. 人民出版社:北京, 2021:1-697.",
    "华东师范大学哲学系逻辑学教研室.形式逻辑[M]. 华东师大出版社:上海, 2016:1-193.",
    "[英]Julian Baggini, [美]Peter S. Fosl.简单的哲学[M]. 陶涛,译. 中国人民大学出版社:北京, 2016:1-266.",
    "Robin Turner,Nick Nicholas.Lojban For Beginners[EB/OL].",
    "蔡曙山,邹崇理.自然语言形式理论研究[M]. 人民出版社:北京, 2010:1-604.",
    "陈波.逻辑哲学[M]. 北京大学出版社:北京, 2006:1-364.",
    "黄敏.分析哲学导论[M]. 中山大学出版社:广州, 2009:1-362.",
    "[美]Stewart Shapiro.数学哲学：对数学的思考[M]. 郝兆宽,杨睿之,译. 复旦大学出版社:上海, 2009:1-281.",
    "汪芳庭.数学基础[M]. 高等教育出版社:北京, 2018:1-271.",
    "汪芳庭.数理逻辑[M]. 中国科学技术大学出版社:合肥, 2010:1-188.",
    "郝兆宽,杨睿之,杨跃.数理逻辑：证明及其限度[M]. 复旦大学出版社:上海, 2020:1-243.",
    "[美]Michael Sipser.计算理论导引[M]. 唐常杰,陈鹏,向勇,刘齐宏,译. 机械工业出版社:北京, 2006:155-220",
    "徐利治.现代数学手册·近代数学卷[M]. 华中科技大学出版社:武汉, 2001:1-52.",
    "熊金城.点集拓扑讲义[M]. 高等教育出版社:北京, 2020:1-162.",
    "Rob Nederpelt,Herman Geuvers.Type Theory and Formal Proof: an Introduction[M]. Cambridge UniversitPress:Cambridge, 2014:1-390.",
    "The Univalent Foundations Program.Homotopy Type Theory[EB/OL]."
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
