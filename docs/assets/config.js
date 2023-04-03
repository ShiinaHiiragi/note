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

Array.prototype.contain = function (value) {
    for (var i = 0; i < this.length; i += 1) {
        if (this[i] == value) {
            return true;
        }
    }
    return false;
};

LocalStorageMananger = function(keyName, regulation) {
    this.keyName = keyName;
    this.regulation = regulation;
    if (!new.target) {
        return new window.LocalStorageMananger(keyName);
    }

    this.initValue = function (value, regulation) {
        if (regulation === undefined) {
            regulation = this.regulation;
        }

        if (regulation !== undefined) {
            console.assert(regulation.contain(value));
            if (!regulation.contain(localStorage.getItem(this.keyName))) {
                localStorage.setItem(this.keyName, value);
            }
        } else if (localStorage.getItem === null) {
            localStorage.setItem(this.keyName, value);
        }
    }

    this.setValue = function (value, regulation) {
        if (regulation === undefined) {
            regulation = this.regulation;
        }

        if (regulation !== undefined) {
            console.assert(regulation.contain(value));
        }
        localStorage.setItem(this.keyName, value);
    }

    this.getValue = function() {
        return localStorage.getItem(this.keyName);
    }
}

const changeYear = () => {
    document.querySelectorAll(".year").forEach((item) => {
        item.innerText = new Date().getFullYear()
    });
}

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

// cookie of local setting
let binary = ["true", "false"];
let localSerif = new window.LocalStorageMananger("isSerif", binary);

// execute in each page
changeYear();
if (__md_get("__consent")?.local) {
    localSerif.initValue("true");
    cookies_callback?.({
        localSerif: localSerif
    })

    if (localSerif.getValue() == "false") {
        changeFont(false);
    }
}
