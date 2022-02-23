# 冯如杯 $\LaTeX$ 模板 （非官方）

本项目由 [Pannenets.F](https://github.com/PannenetsF) 创建并维护。

- [冯如杯 $\LaTeX$ 模板 （非官方）](#冯如杯-latex-模板-非官方)
  - [项目起源](#项目起源)
  - [项目 Flag](#项目-flag)
  - [使用平台](#使用平台)
  - [编译方式](#编译方式)
  - [文件组织](#文件组织)
  - [冯如杯格式审查](#冯如杯格式审查)
  - [Bug 反馈](#bug-反馈)
  - [License](#license)

## 项目起源

本人曾基于 [Someday-XeLaTex-Template](https://github.com/Somedaywilldo/Someday-XeLaTex-Template) 进行调整，最终  [FRB Template](https://github.com/PannenetsF/FRB-Template) ，并且借此通过了学院初审以及学校审核，未出现格式问题。

![](figures/pass.png)

但是由于该项目未 类文件 `.cls` ，并且使用大量未经注释的命令，存在较多的问题，调整较为耗时耗力，并且存在在某些时候通过该模板进行基础物理实验报告的重写需求，出于以上目的对其进行**完全**重构。

## 项目 Flag

1.  基本的 `.cls` `.bib` 文件，规范冯如杯格式与引用 (已 )
2. 提供一些简单的 trick (已 )

## 使用平台

测试平台为 Manjaro 网络安装 TeX Live 2020 ，基于 `xelatex` 与 `bibtex`。

## 编译方式

请注意本步骤需要您先将相关字体复制到 `fonts` 文件夹内，请参考下一小节。

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
│   ├── HWXW.TTF （请自行复制到本文件夹并重命名）
│   └── HWZS.TTF （请自行复制到本文件夹并重命名）
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


## 冯如杯格式审查

| 项目     | 要求                                                                   | 检查 |
| -------- | ---------------------------------------------------------------------- | ---- |
| 毕设大字 titile | 初号 华文行楷 居中                                                |   |
| 论文题目 subtitile   | 一号 黑体 居中                                              |   |
| 个人信息 | 四号 黑体 居中                                        |   |
| 章节标题 | 四号 黑体 靠右                                                          |   |
| 正文     | 小四号 宋体 Times New Roman 首行缩进 两端对齐                          |   |
| 页码     | 五号 数字字母 Times New Roman                                          |   |
| 页边距   | 上下左右 25 25 30 20 mm                                                |   |
| 标题行距 | 三级标题为单倍行距，段前段后各 0.5 行                                  |   |
| 正文行距 | 1.5 倍行距 段前段后无空行                                              |   | 
| 页眉     | 小五 宋体 居中 正文开始                                                |       |
| 页码     | 正文开始 页脚居中 五号 摘要目录 图表清单 符号表用5号罗马数字           |       |
| 图表附注 | 题目五号宋体/TNR加粗 图编号与图题直接空半角2格 ，若有附注，注明 附注1: | 附注可在提供的环境中自行设置     |
| 封面     | 主题不超过25汉字，副标题加破折号                                       |       |
| 参考文献 | 不需要标注文献标识码                                                   | 在 bib 中去掉即可     |
| 正文引用 | 小四号上标 [1]                                                         |  很不理解，正文是小四，上标也是小四？欢迎讨论    |


## Bug 反馈

请提 Issue （推荐） 或者邮件联系我： [pannenets.f@foxmail.com](mailto:pannenets.f@foxmail.com)

## License

本项目采用 BSD 3-Clause License .


