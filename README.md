# whatweb-plus

已内测、已公测, 暂无缺陷性问题反馈, 代码开源, 放心使用.

=====================================

ruby下运行必须安装以下模块：

    gem install mmh3 
    
    #gem install nokogiri #nokogiri无法打包进exe,0.5.5.8版本已取消使用该模块
    #mmh3是0.5.5.6版本支持favioch hash的附件库
    #nokogiri是0.5.5.7版本解决title插件提取乱码的附件库 
    
=====================================

whatweb主程序更新记录：

0.5.5.6 默认支持动态请求头。打包可执行exe文件。修复md5hash指纹计算BUG。添加:mmh3 hash规则。指纹库增强【目前全部指纹库5000+】
    
0.5.5.7 biref输出添加空行,使用nokogiri的解码功能修复title提取乱码的问题（加入nokogiri模块后无法打包exe）

0.5.5.8 重写nokogiri的解码功能修复title提取乱码的问题（打包成功后发布）

=====================================

插件更新记录：

WhatWeb-plugins-all-202107301602.zip 初步指纹优化

WhatWeb-plugins-all-202107312109.zip 指纹优化合并

WhatWeb-plugins-all-202108090926.zip 支持shiro识别、其他指纹优化

WhatWeb-plugins-all-202108091957.zip 修复shiro识别判断条件误报-严重

=====================================

插件需求投递与更新发布:

    NOVASEC指纹交流群请联系【NOVASEC】公众号后台加入。

    github不定时更新与优化插件

=====================================

Whatweb增强版介绍与使用：

痛点重谈-Web指纹识别与解决方案-NOVASEC

https://mp.weixin.qq.com/s/lHIJmIWbm8ylK6yjjmmNkg

=====================================






