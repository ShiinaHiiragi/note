window.MathJax = {
    tex: {
        inlineMath: [
            ["\\(", "\\)"]
        ],
        displayMath: [
            ["\\[", "\\]"]
        ],
        packages: { '[+]': ['autoload'] },
        processEscapes: true,
        processEnvironments: true
    },
    loader: {
        load: [
            '[tex]/autoload'
        ]
    },
    options: {
        ignoreHtmlClass: ".*|",
        processHtmlClass: "arithmatex"
    },
    chtml: {
        scale: 0.94
    }
};

const changeFont = (isSerif) => {
    const changeVar = (key, value) => {
        document.querySelector(":root").style.setProperty(key, value);
    }

    if (isSerif) {
        changeVar("--md-text-font", "\"Noto Serif SC\"");
        changeVar("--normal-font-weight", "500");
        changeVar("--bold-font-weight", "700");
        changeVar("--title-font-weight", "500");
    } else {
        changeVar("--md-text-font", "\"Noto Sans\", \"Noto Sans SC\"");
        changeVar("--normal-font-weight", "400");
        changeVar("--bold-font-weight", "600");
        changeVar("--title-font-weight", "300");
    }
}

// execute in each page
document.querySelectorAll(".year").forEach((item) => item.innerText = new Date().getFullYear());
