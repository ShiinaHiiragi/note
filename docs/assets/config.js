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

// user `checker()` in console to enanle hanging lines checker
// ensure the recall ratio which means false positive samples may occur
window.checker = () => {
  const counter = Array
    .from(document.querySelectorAll("article p, article li"))
    .map((element) => {
      const nodes = Array.from(element.childNodes);
      const isList = (node) => node.nodeType === Node.ELEMENT_NODE
        && ["OL", "UL"].includes(node.nodeName);

      return nodes
        .reduce((prev, current, currentIndex) => {
          const isLast = currentIndex === nodes.length - 1;
          if (isList(current) || isLast) {
            return {
              lastIndex: currentIndex + 1,
              elementList: [
                ...prev.elementList,
                nodes.slice(
                  prev.lastIndex,
                  currentIndex + Number(isLast)
                )
              ]
            }
          } else {
            return prev;
          }
        }, {
          lastIndex: 0,
          elementList: []
        })
        .elementList
        .flat(1);
    })
    .reduce((prev, elementList) => {
      const getRects = (element) => {
        const range = document.createRange();
        range.selectNodeContents(element);
        return range.getClientRects();
      };

      const rectInfo = elementList
        .map((item) => Array.from(getRects(item)))
        .flat(1)
        .reduce((prev, current) => ({
          left: Math.min(prev.left, current.left),
          right: Math.max(prev.right, current.right),
          lastRect: current
        }), {
          left: Infinity,
          right: -Infinity,
          lastRect: null
        });

      if (rectInfo.lastRect !== null) {
        const lastLineWidth = rectInfo.right - rectInfo.left;
        const lastLineRight = rectInfo.lastRect.right - rectInfo.left;
        if (lastLineRight < lastLineWidth * 0.1) {
          elementList.forEach((item) => {
            return item.parentElement.classList.add("hanging");
          });
          return prev + 1
        }
      }
      return prev;
    }, 0);
  console.log(counter);
};
