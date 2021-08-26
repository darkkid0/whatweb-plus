# whatweb-plus


已内测、已公测, 无缺陷性问题反馈, 代码开源, 放心使用.  ---NOVASEC 酒零

    whatweb自开始改造截至目前已更新10个版本以上，
    目前版本是0.5.5.12，是最新版，也是最终版，后续只会对插件进行增删和优化。
    这个版本后，我已将我目前对指纹识别工具所有的要求和理解都进行了实现。
    如果没有其他的同样功能支持的Go版本替代，这应该是最强大的指纹识别工具了。
    
重点注意

    1、使用ruby运行whatweb脚本，需要安装mmh3模块 【gem install mmh3】
    
    2、whatweb.exe为了缩小打包体积，仅包含简单的基础插件，请-p指定插件目录调用。
    
    3、关于waf识别问题：
        支持waf指纹，但没用添加会触发waf的请求。请主动请求会出发waf的url，如whatweb http://www.baidu.com/index?/etc/passed
        
    4、关于运行环境的问题：
        windows下有exe打包版本，其他系统未打包成功，需要安装ruby环境（kali ruby2.5-2.7 测试通过）
   
    

下一步规划

    1、对插件进行分类规划。
    2、使用Golang重构整个项目，需要技术支持
    3、欢迎【NOVASEC】公众号后台联系获取酒零微信

最近更新记录

    whatweb-Plugins-202108232230.zip
    1、更新到8000+插件,大部分由于名称问题重复。
    2、修复shiro指纹的https支持
    3、增加要给fastjson指纹插件(未找到测试站点)
    4、替换my-plugins文件夹使用



关于后续更新

    whatweb所有功能设计完毕，后续更新只涉及插件。
    为了促进插件更新，后续插件更新只对【提插件需求、提交插件的、提交插件bug】人员提供
    
    NOVASEC指纹交流群请联系【NOVASEC】公众号最新文章末尾的运营微信加入。
    github不定时更新与优化插件



Whatweb增强版介绍与使用：

    Whatweb 0.5.5.12 完善使用及插件文档【非常重要】
    https://mp.weixin.qq.com/s/F9sXIhCfFCZ3WtMMltnP5Q

    痛点重谈-Web指纹识别与解决方案-NOVASEC
    https://mp.weixin.qq.com/s/lHIJmIWbm8ylK6yjjmmNkg


    Whatweb特征修改、插件编写、EXE打包
    https://mp.weixin.qq.com/s/TaYHrzw5Yb6jxj046nR_DA

    Ruby and Whatweb Install on Windows
    https://mp.weixin.qq.com/s/ZjQfsovGP-GK_xUYuP7M-A
        
    NOVASEC 开源工具记录
    https://mp.weixin.qq.com/s/h4rYBZ36xaEHF34vyW4WQg

    里程碑思路: Go工具框架实现动态插件
    https://mp.weixin.qq.com/s/ihNalwYQGNcWlG7TJ8yazw

    whatweb增强版公开发布
    https://mp.weixin.qq.com/s/njxWqxw-TJH2MKAvOvI-kg

关于[-X][-Y][-Z]三个重点匹配优化项

没开[-Z]会请求几个默认指纹路径,表现为多几个请求。

没开[-Y]会将所有请求URL进行一次完整请求，表现为会多一些一个站点的多个子请求，最好使用包装器的--log-csv来统合排序。
![image](https://user-images.githubusercontent.com/46115146/130211813-fc6343c8-43af-49b6-be64-8786b050a280.png)


