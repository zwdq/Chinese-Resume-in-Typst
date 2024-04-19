#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")
#let faWork = icon("icons/fa-work.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,

  // 如果需要姓名及联系信息居中,请删除下面关于头像的三行参数,并取消headerCenter的注释
  //headerCenter : true,
  
  // 如果不需要头像,则将下面三行的参数注释或删除
  photograph: "profile.jpg",
  photographWidth: 10em,
  gutterWidth: 2em,
)[

= 仇乾栋

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 188-1795-0317"
  ),
  (
    icon: faBuildingColumns,
    content: "上海财经大学",
  ),
  (
    icon: faGraduationCap,
    content: "统计学",
  ),
  (
    icon: faEnvelope,
    content: "zhuwudaoqin@outlook.com",
    link: "mailto:zhuwudaoqin@outlook.com"
  ),
  (
    icon: faGithub,
    content: "github.com/zwdq",
    link: "https://github.com/zwdq",
  ),
)
][
#h(2em)  // 手动顶行, 2em 代表两个字的宽度

我是乾栋,擅长统计学和机器学习、推荐算法,对金融科技领域比较有经验,希望一起学习沟通。
]


== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 12%)[
  2012.09
  
  2016.06
][
  *上海财经大学* · 统计与管理学院 · 统计学
  
  GPA: 4.48 / 5 · Rank: 15%
]


== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 12%)[

  *精通*

  *熟悉*
][
  C++, Python, Sql, Pytorch, LLM
  
  Rust, Golang, Tensorflow

]

== #faAward 工作经历

#item(
  [ *中金公司* ],
  [ *数据分析师* ],
  [ 2021 年 11 月 – 至今 ]
)
#item(
  [ *中信建投证券有限公司* ],
  [ *算法工程师* ],
  [ 2021 年 11 月 – 2022 年 11 月 ]
)
#item(
  [ *北京快手科技有限公司* ],
  [ *算法工程师* ],
  [ 2021 年 11 月 – 2022 年 11 月 ]
)
#item(
  [ *银联数据服务有限公司* ],
  [ *算法工程师* ],
  [ 2021 年 11 月 – 2022 年 11 月 ]
)

// == #faWork 实习经历

// 在这里添加你的实习经历

== #faCode 项目经历

#item(
  link(
    "https://github.com/OrangeX4/Latex-Sympy-Calculator",
    [ *快手推荐系统精排模型* ]
  ),
  [ *公司项目* ],
  [ 2021 年 02 月 – 2021 年 04 月 ]
)

利用因果推断、深度学习,对快手发现页双列Feed流推荐系统中的精排算法进行升级。

- 优化PPnet模型
- 优化SIM模型

#item(
  link(
    "https://github.com/OrangeX4/Reversi",
    [ *中信建投大语言模型落地* ]
  ),
  [ *公司项目* ],
  [ 2021 年 02 月 – 2021 年 04 月 ]
)

基于ptuning微调的chatglm2模型,成功落地在text2sql及稽核审计法律助手场景。

- 使用ptuning,提高了效果
- 使用langchain开发rag,提高了效果

#item(
  link(
    "https://github.com/OrangeX4/Reversi",
    [ *银联信用卡评分模型* ]
  ),
  [ *公司项目* ],
  [ 2021 年 02 月 – 2021 年 04 月 ]
)
基于ptuning微调的chatglm2模型,成功落地在text2sql及稽核审计法律助手场景

- 使用ptuning,提高了效果
- 使用langchain开发rag,提高了效果

== #faBuildingColumns 个人总结


#item(
  [ *微软学生俱乐部技术部部长* ],
  [],
  date[ 2021 年 09 月 – 2022 年 09 月 ]
)