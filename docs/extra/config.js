window.MathJax = {
  tex: {
    inlineMath: [["\\(", "\\)"]],
    displayMath: [["\\[", "\\]"]],
    packages: { '[+]': ['autoload'] },
    processEscapes: true,
    processEnvironments: true
  },
  loader: { load: ['[tex]/autoload'] },
  options: {
    ignoreHtmlClass: ".*|",
    processHtmlClass: "arithmatex"
  },
  chtml: {
    scale: 0.94
  }
};
