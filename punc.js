const path = require("path");
const fs = require('fs');

const config = {
  path: path.join(__dirname, "docs"),
  list: {
    ". ": "。",
    // ". ": "．",
    ": ": "：",
    "; ": "；",
    ", ": "，"
  }
};

const isNotFile = (fpath) => {
  return fs.existsSync(fpath) && fs.statSync(fpath).isDirectory();
}

const replacePunc = (fileStr) => {
  let ptr = 0, line = false, block = false;
  const detect = Object.keys(config.list); 
  outer: while (ptr < fileStr.length) {
    if (fileStr[ptr] == "\n") {
      line = false;
      ptr += 1;
      continue;
    }
    if (fileStr[ptr - 1] != "\\" && fileStr[ptr] == "$" && fileStr[ptr + 1] != "$") {
      line = !line;
      ptr += 1;
      continue;
    }
    if (fileStr[ptr - 1] != "\\" && fileStr[ptr] == "$" && fileStr[ptr + 1] == "$") {
      block = !block;
      ptr += 2;
      continue;
    }
    if (/\n *\w+\.$/.test(fileStr.substr(0, ptr + 1))) {
      ptr += 2;
      continue;
    }

    inner: for (index = 0; index < detect.length; index += 1) {
      const detectLength = detect[index].length;
      if (!line && !block && fileStr.substr(ptr, detectLength) === detect[index]) {
        fileStr = fileStr.substr(0, ptr) + config.list[detect[index]] + fileStr.substr(ptr + detectLength);
        ptr += config.list[detect[index]].length;
        continue outer;
      }
    }
    ptr += 1;
  }
  return fileStr;
}

const readFile = (fpath) => {
  if (isNotFile(fpath)) {
    const dir = fs.readdirSync(fpath);
    for (let index = 0; index < dir.length; index += 1) {
      readFile(path.join(fpath, dir[index]))
    }
  } else if (path.extname(fpath) === ".md") {
    const fileStr = fs.readFileSync(fpath).toString();
    newStr = replacePunc(fileStr);
    fs.writeFileSync(fpath, newStr);
  }
}

readFile(path.join(__dirname, "docs/intro/dir.md"))
