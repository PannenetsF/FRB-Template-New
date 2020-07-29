# 冯如杯 $\LaTeX$ 模板 （非官方）

本项目由 [Pannenets.F](https://github.com/PannenetsF) 创建并维护。


## 项目起源

本人曾基于 [Someday-XeLaTex-Template](https://github.com/Somedaywilldo/Someday-XeLaTex-Template) 进行调整，最终完成 [FRB Template](https://github.com/PannenetsF/FRB-Template) ，并且借此通过了学院初审以及学校审核，未出现格式问题。

![](figures/pass.png)

但是由于该项目未完成类文件 `.cls` ，并且使用大量未经注释的命令，存在较多的问题，调整较为耗时耗力，并且存在在某些时候通过该模板进行基础物理实验报告的重写需求，出于以上目的对其进行**完全**重构。

## 项目 Flag

1. 完成基本的 `.cls` `.bib` 文件，规范冯如杯格式与引用 (已完成)
2. 提供一些简单的 trick (已完成)

## 使用平台

测试平台为 Manjaro 网络安装 TeX Live 2020 ，基于 `xelatex` 与 `bibtex`。

## 编译方式

- 通过 `xelatex -> bibtex -> xelatex * 2`
- 直接 `latexmk -xelatex frb.tex` （简单，推荐）
- 直接使用脚本/批处理文件
  - Windows：双击 `frb.bat`
  - Linux/Mac: `chmod +x frb.sh && ./frb.sh` 

## 文件组织

以下是本项目需要的文件结构。

- 图片：放在 `figures` 文件夹下可以直接 `\figref` ，如 `\figref{buaa.png}`而无需`\figref{figures/buaa.png}` 
- 章节：如有分章节需要，将单独的 section 放在 `chap` 文件夹下，通过 `\input` 导入主文档。
- 引用：在 `frbrefer.bib` 中添加 bib 条目

```
.
├── chap
├── figures
│   ├── buaa.png
│   ├── buaa-symbol.png
│   └── pass.png
├── fonts
│   ├── FZCSK.TTF
│   ├── FZFSK.TTF
│   ├── FZHTK.TTF
│   ├── FZKTK.TTF
│   ├── FZSSK.TTF
│   ├── HWXW.TTF
│   └── HWZS.TTF
├── frbpaper.cls
├── frb.pdf
├── frbrefer.bib
├── frb.tex
├── gbt7714-plain.bst
├── gbt7714.sty
├── gbt7714-unsrt.bst
├── LICENSE
└── README.md
```

## License

本项目采用 BSD 3-Clause License .


