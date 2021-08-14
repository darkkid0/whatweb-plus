# whatweb-plus

已内测、已公测, 无缺陷性问题反馈, 代码开源, 放心使用.  ---NOVASEC 酒零

=====================================

插件需求投递与更新发布:

    NOVASEC指纹交流群请联系【NOVASEC】公众号最新文章末尾的运营微信加入。
    github不定时更新与优化插件

=====================================

Whatweb增强版介绍与使用：

痛点重谈-Web指纹识别与解决方案-NOVASEC

https://mp.weixin.qq.com/s/lHIJmIWbm8ylK6yjjmmNkg

=====================================
whatweb更新规划：

    1、使用python对本程序输入输出的进行完美包装。  【基本完成】
    2、使用ruby对本程序进行功能上的增强和分类      【基本完成】
    3、对whatweb增强版提供一份完美的技术和使用文档
    
    4、使用Golang语言重构整个项目，需要您的技术支持。欢迎【NOVASEC】公众号后台联系获取酒零微信
=====================================

新增Novafinger封装脚本

    WhatWeb-0.5.5.9+plugins  新增Novafinger封装脚本,主要是为了添加输出格式化功能
    1、除使用-wh用于调用whatweb的-h外，复用whatweb所有原生参数,
    2、添加输出项目--log-csv,用于生成json并导出为csv格式(基于python3)
    请先修改lib-wrapper目录下wrapper.conf的whatweb的调用方式, 例如可以直接命令行whatweb调用可以直接设置为whatweb或None

=====================================

whatweb主程序更新记录：
    
    0.5.5.6 基于0.5.5进行修复，默认支持动态请求头。打包可执行exe文件。修复md5hash指纹计算BUG。添加:mmh3 hash规则。指纹库增强【目前全部指纹库5000+】
    0.5.5.7 biref输出添加空行,使用nokogiri的解码功能修复title提取乱码的问题（加入nokogiri模块后无法打包exe）
    0.5.5.8 重写nokogiri的解码功能修复title提取乱码的问题（已发布）
    0.5.5.8-new 重新打包exe文件,不再内置任何修改插件，只基于原版whatweb修改。 kali linux下打包测试失败,有需要的朋友请自行研究rubyc。
    WhatWeb-0.5.5.9+plugins.zip whatweb主程序修复
    1、修改插件目录导入逻辑,当指定导入目录时，也会导入子目录内的插件，用于为插件分类做预备,递归三级目录
    2、打包时,删除plugins插件中的cms插件,只保留基本的探测功能缩小打包exe的大小。
    3、添加allhash规则,用于替代mmh3和md5hash,实现减少URL请求的效果。
    4、添加windows下默认颜色输出参数，优化显示效果 --color=always,(开始是auto,所以windows没有颜色,linux有)
       
=====================================

whatweb插件更新记录：

    WhatWeb-plugins-202107301602.zip 初步指纹优化
    WhatWeb-plugins-202107312109.zip 指纹优化合并
    WhatWeb-plugins-202108090926.zip 支持shiro识别、其他指纹优化
    WhatWeb-plugins-202108091957.zip 修复shiro识别判断条件误报-严重
    WhatWeb-plugins-202108100951.zip 修复shiro识别的一个BUG, 修复title插件中文乱码
    WhatWeb-plugins-2021081014XX.zip 优化两个插件,修改插件目录名称用于区别,无更新情况以后不再频繁更新整个文件夹
    WhatWeb-Plugins-202108111130.zip  修复swaggerUI指纹,和其他多个批量指纹中特征与方法不匹配的问题
    
    WhatWeb-0.5.5.9+plugins插件修复
    1、修复一些插件匹配的BUG
    2、简单对插件按照文件夹分类，全部存放到了my-plugins目录下, 指定主目录会自动递归调用,重复插件只会调用一个。
        
=====================================

ruby下运行必须安装以下模块：

    gem install mmh3 
    
    #gem install nokogiri #nokogiri无法打包进exe,0.5.5.8版本已取消使用该模块
    #mmh3是0.5.5.6版本支持favioch hash的附件库
    #nokogiri是0.5.5.7版本解决title插件提取乱码的附件库 
    
=====================================

kali下安装WhatWeb增强版：

1、卸载WhatWeb  apt-get remove WhatWeb

2、上传WhatWeb增强版到kali /opt 文件夹 

（其他文件夹也行, 如果解压失败可以先解压后上传，或使用其他压缩程序打包）

（测试使用MobaXterm工具拖动整个文件夹进行上传成功）

3、配置WhatWeb

#添加可执行权限

    cd /opt/WhatWeb/
    chmod +x whatweb  

#使得WhatWeb可以直接被调用运行

    ln -s /opt/WhatWeb/whatweb   /usr/bin

#更新插件目录,便于自动调用

#先上传插件到文件夹下面

    rm -rf /opt/WhatWeb/pluings
    mv /opt/WhatWeb/pluings-novasec /opt/WhatWeb/pluings

#重启一下或刷新环境变量运行WhatWeb进行调用

=====================================


