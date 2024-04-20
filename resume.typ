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

  // 如果需要姓名及联系信息居中, 请删除下面关于头像的三行参数, 并取消headerCenter的注释
  //headerCenter : true, 
  
  // 如果不需要头像, 则将下面三行的参数注释或删除
  // photograph: "profile.jpg", 
  // photographWidth: 10em, 
  // gutterWidth: 2em, 
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
  // (
  //   icon: faGithub, 
  //   content: "github.com/zwdq", 
  //   link: "https://github.com/zwdq", 
  // ), 
)
][
#h(2em)  // 手动顶行, 2em 代表两个字的宽度

我是乾栋, 在大数据、机器学习领域已有5年+经验, 热爱技术, 热爱代码, 目前在中金公司做数据分析师。人生苦短, 希望自己永远面临挑战, 与有趣的人一起做困难的事。
]

== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 21%)[
  2012.09 - 2016.06
  
  2016.09 - 2018.06
][
  *上海财经大学* · 统计学本科 
  
  *上海财经大学* · 统计学硕士
]


== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 12%)[

  *掌握*

  *熟悉*

  **
][
  C/C++, Python, Sql, Pytorch, LangChain
  
  Tensorflow

]

== #faAward 工作经历

#item(
  [ *中金公司* ], 
  [ *数据分析师* ], 
  [ 2023 年 11 月 – 至今 ]
)
- 中金股票业务部业务数据挖掘、分析探索, 优化量化客群支持、衍生品对冲交易等。

#item(
  [ *中信建投证券有限公司* ], 
  [ *算法工程师* ], 
  [ 2022 年 08 月 – 2023 年 11 月 ]
)
- 优化公司经纪业务人群画像, 通过机器学习, 助力财富管理业务客户流失、营收预测等场景。

#item(
  [ *北京快手科技有限公司* ], 
  [ *算法工程师* ], 
  [ 2020年 12 月 – 2022 年 06 月 ]
)
- 通过超大规模深度学习模型和系统, 使用先进的检索和排序手段, 优化社区生态, 优化快手的推荐效果。

#item(
  [ *银联数据服务有限公司* ], 
  [ *算法工程师* ], 
  [ 2018 年 07 月 – 2020 年 02 月 ]
)
- 依据亿级用户信贷场景营销、风控、监管等业务需求, 优化评分卡场景套现、调额、反欺诈模型。

// == #faWork 实习经历

// 在这里添加你的实习经历

== #faCode 项目经历
#item(
  link(
    "https://github.com/OrangeX4/Reversi", 
    [ *中信集团大语言模型* ]
  ), 
  [ *公司项目* ], 
  [ 2022 年 12 月 – 2023 年 11 月 ]
)

基于text2sql及投行投研报告撰写等场景, 探索LLM实现方案并落地。

- 基于ptuning-v2、lora微调Llama、ChatGLM-6B等模型, 实现垂类场景模型效果提升, 并减少幻觉。
- 基于LangChain开发RAG、Agent AI智能体, 将LLM和数仓元数据信息结合, 数据查询效率+80%。

#item(
  link(
    "https://github.com/OrangeX4/Latex-Sympy-Calculator", 
    [ *快手核心推荐系统* ]
  ), 
  [ *公司项目* ], 
  [ 2021 年 01 月 – 2022 年 04 月 ]
)

利用因果推断、深度学习, 对快手发现页双列Feed流推荐系统中的精排算法进行升级。

- 训练PPnet模型, 基于因果推断IPW方法优化效果, 进行消偏, 亿级场景点击+3%, 日活+0.15%, 时长+0.2%。
- 训练SIM模型, 基于超长兴趣建模CTR, 落地在发现页精排, 亿级场景点击率+5%, 日活+0.3%。

#item(
  link(
    "https://github.com/OrangeX4/Reversi", 
    [ *银联信用评分卡模型* ]
  ), 
  [ *公司项目* ], 
  [ 2019 年 02 月 – 2020 年 02 月 ]
)
基于超大规模贷前、贷中、贷后数据, 训练优化风控模型, 控制银行不良风险, 提高营收。

- 构建银联信贷客户画像, 建立指标标签和特征库, 风控模型工程化, 落地智能建模算法, 大幅提供建模效率。
- 通过XGBoost和BERT特征筛选和处理, 用于训练lr模型, 兼顾可解释性基础上使auc提高10%至0.82。