Array.prototype.contain = function (value) {
    for (var i = 0; i < this.length; i += 1) {
        if (this[i] == value) {
            return true;
        }
    }
    return false;
};

let LocalStorageMananger = function (keyName, regulation) {
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

    this.getValue = function () {
        return localStorage.getItem(this.keyName);
    }

    this.removeValue = function () {
        return localStorage.removeItem(this.keyName);
    }
}

const changeMathJax = () => {
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
        }
    };
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
        changeVar("--md-text-font", "\"ML Modern Roman\", \"Noto Serif SC\", serif");
        changeVar("--normal-font-weight", "500");
        changeVar("--bold-font-weight", "700");
        changeVar("--title-font-weight", "500");
    } else {
        changeVar("--md-text-font", "\"Noto Sans SC\", sans-serif");
        changeVar("--normal-font-weight", "400");
        changeVar("--bold-font-weight", "600");
        changeVar("--title-font-weight", "300");
    }
}

// cookie of local setting
let binaryBool = ["true", "false"];
let localSerif = new LocalStorageMananger("isSerif", binaryBool);

// execute in each page
changeMathJax();
changeYear();

// execute when mobile phone is detected
if (/Android|iPhone/i.test(navigator.userAgent)) {
    changeFont(true);
}

// execute when cookie is enabled
if (__md_get("__consent")?.local) {
    localSerif.initValue("true");
    window.cookie_callback?.({
        localSerif: localSerif
    })

    if (localSerif.getValue() == "false") {
        changeFont(false);
    }
} else {
    localSerif.removeValue();
}
