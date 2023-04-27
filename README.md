# whatweb-plus 

whatweb-plus 是基于国际通用的 Whatweb 优化改造的国内版Web指纹识别工具。



主体程序:
https://github.com/winezer0/whatweb-plus

插件存储:
https://github.com/winezer0/whatweb-plus-plugins

原始项目:
https://github.com/urbanadventurer/WhatWeb


# TODO

```
whatweb 自开始改造截至目前已迭代多个版本，目前已实现个人对Web指纹识别所有的要求和理解，后续基本只会对插件进行增删和优化。

本菜已学会使用 Github Desktop , 以后指纹更新会更加实时与积极，希望大家积极提交指纹和指纹需求！！！

希望一起努力,让同名插件变得越来少（建议新人使用 Github Desktop 来协同作战哦）

必选:
	暂无
日常:
	对指纹扫描插件进行分类规划，主要是进行指纹文件规划和规则合并整理耗费,需要较多的时间，有兴趣的朋友可以联系加入这个项目进行支持。
可选：
	添加一个可选参数和部分语句来主动探测waf。
```

# 更新记录

    20220418 更新whatweb VERSION = 0.5.5.13 ,并发布新版本的windows下的可执行文件
    
    20220418 对于输入没有协议头的域名,从默认的添加http协议头变为同时添加http和https协议头。Example:输入域名 www.baidu.com 将请求:http://www.baidu.com 与 https://www.baidu.com
    
    20210819 更新8000+指纹插件,大部分由于名称问题重复,需要进一步处理。
        已合并指纹来源:
        应用指纹:wappalyzer|dismap|tidefinger-python3|tidefinger-python2|Ehole|Finger|   
        WAF指纹:Fscan+glass    
        致谢开源指纹的各项目工程师！！！
        
    20210820 修复shiro指纹的https支持
    20210821 增加要给fastjson指纹插件(未找到测试站点)
    20210821 重新规划插件存放格式： plugins文件夹内仅保存基本插件,其他应用插件存放于my-plugins文件夹
    20210821 重新规划插件分类方式: 可使用多级目录实现插件分类, (最高3级目录)。
    20210822 新增指纹匹配优化参数，减少主动识别时的指纹数量,具体请查看[新增参数说明]



# 新增参数说明

```
-Z --no-base-path
    新增，关闭自动访问高频指纹路径，默认True,  建议根据使用条件关闭
    whatweb-plus 默认会请求几个内置指纹路径,表现为每个目标都会额外多出几个请求。

-Y --no-min-urls
    新增，关闭最小化访问插件:url，默认True
    whatweb-plus 默认会将匹配插件的每一个请求URL作为完整的新URL作为请求，以避免全局重复请求相同的URL
    缺点是会表现出一个站点的多个子请求，建议使用novafinger.py包装器的--log-csv参数进行结果输出，便于排序处理

-X  --no-max-match
    新增，忽略匹配:url要求，默认True , 不建议关闭 
    whatweb-plus 匹配规则时,默认会忽略:url需要相同的前提，形成更多的结果匹配，需要高精度的匹配时可以开启

注意:URL去重使用全局数组和临时数组实现, 对于【超级超级超级超级大量】请求的情况建议定时优化。
```

![image](https://user-images.githubusercontent.com/46115146/130211813-fc6343c8-43af-49b6-be64-8786b050a280.png)

 

# 其他注意事项

```
1.关于运行环境
    使用ruby运行whatweb脚本，需要安装mmh3模块 [gem install mmh3]
    windows下有exe打包版本，其他系统未打包成功，需要安装ruby环境（kali ruby2.5-2.7 测试通过） 
    whatweb.exe为了缩小打包体积，仅包含简单的基础插件，请-p 指定插件目录调用。

2.关于WAF指纹识别
	支持WAf指纹，但没有添加会触发waf的请求,需要用户主动请求会触发waf的请求.
	如whatweb http://www.baidu.com/index?/etc/passed
```

# 程序安装

## ruby环境需求

```
运行whatweb需要ruby2.3及以上环境
ruby2.7环境下运行测试通过。

ruby2.0.0 版本报错记录:
Fetching: bundler-2.3.11.gem (100%)
ERROR:  Error installing bundle:
        bundler requires Ruby version >= 2.3.0.
```



## windows环境安装ruby

```
参考:
Ruby and Whatweb Install on Windows
https://mp.weixin.qq.com/s/ZjQfsovGP-GK_xUYuP7M-A

windows下可以直接使用打包好的EXE程序,不过相比直接使用ruby调用whatweb会慢一些。

```

## centOS7 环境安装ruby

```
kali系统下多次尝试打包linux下的可执行文件失败了，有兴趣的朋友可以看看ruby-packer这个项目，猜测可以使用ubuntu进行打包。

参考:
CentOS7安装最新版ruby
https://blog.csdn.net/NetRookieX/article/details/108308734

centos7下直接通过yum安装的ruby2.0版本太低。
centos7下测试使用rvm安装ruby比较复杂。
因此建议centos7下使用源码安装 

下载ruby源代码
http://www.ruby-lang.org/en/downloads/
https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.6.tar.gz

安装ruby环境依赖包
yum -y install gcc openssl-devel make

编译ruby环境
tar -xvf ruby-2.7.6.tar.gz 
cd ruby-2.7.6/
./configure --prefix=/usr/local/ruby
make && make install
rm -rf ruby-2.7.6* #可选


添加环境变量
echo "PATH=$PATH:/usr/local/ruby/bin" >> /etc/bashrc
source /etc/bashrc

运行测试
ruby -v           #2.7.6
gem -v            #3.1.6

PS：如果gem不存在 yum install gem

替换gem源
#查看当前源,如果是国内源可以忽略以下操作
gem sources -l		
#增加源
gem sources -a  http://mirrors.aliyun.com/rubygems/
或
#gem sources -a http://gems.ruby-china.com/   
#删除原有源
gem sources --remove https://rubygems.org/     
```

## Linux安装whatweb

```
上传解压
unzip WhatWeb*.zip
mv  WhatWeb whatweb
cd whatweb
chmod +x whatweb

安装bundle
gem install bundle

#更新Bundler  [可选]
#bundle update

批量安装依赖
bundle install
gem install mmh3 
PS：由于mmh3是后面修改的,所以bundle不一定会自动安装,此时需要手动安装

运行测试
whatweb -v     #WhatWeb version 0.5.5.12
whatweb www.baidu.com -X -Y -Z

快捷运行配置--弃用
apt-get remove whatweb #卸载kali whatweb可选
mv whatweb /opt/whatweb  【自定义目录】
ln -s  /opt/whatweb/whatweb /usr/bin

快捷运行配置--更优的解决方案
cp whatweb whatweb+
mv whatweb /opt/whatweb 【自定义目录】
ln -s  /opt/whatweb/whatweb+ /usr/bin
whatweb+ www.baidu.com -X -Y -Z
```



## Kali安装whatweb

```
上传解压
unzip WhatWeb*.zip
mv  WhatWeb whatweb
cd whatweb
chmod +x whatweb

安装mmh3依赖库
gem install mmh3 

运行测试
whatweb -v     #WhatWeb version 0.5.5.12
whatweb www.baidu.com -X -Y -Z

快捷运行配置--更优的解决方案
cp whatweb whatweb+
mv whatweb /opt/whatweb 【自定义目录】
ln -s  /opt/whatweb/whatweb+ /usr/bin
whatweb+ www.baidu.com -X -Y -Z
```

# 工具使用说明

Whatweb 0.5.5.12 完善使用及插件文档【非常重要,记录各种功能更新及基本使用】

https://mp.weixin.qq.com/s/F9sXIhCfFCZ3WtMMltnP5Q

痛点重谈-Web指纹识别与解决方案-NOVASEC

https://mp.weixin.qq.com/s/lHIJmIWbm8ylK6yjjmmNkg

Whatweb特征修改、插件编写、EXE打包

https://mp.weixin.qq.com/s/TaYHrzw5Yb6jxj046nR_DA

NOVASEC 开源工具记录

https://mp.weixin.qq.com/s/h4rYBZ36xaEHF34vyW4WQg

里程碑思路: Go工具框架实现动态插件

https://mp.weixin.qq.com/s/ihNalwYQGNcWlG7TJ8yazw

whatweb增强版公开发布

https://mp.weixin.qq.com/s/njxWqxw-TJH2MKAvOvI-kg



# NEED STAR And ISSUE

```
1、右上角点击Star支持更新.
2、ISSUE或NOVASEC提更新需求
```

![NOVASEC](doc/NOVASEC.jpg)
