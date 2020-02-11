# frps-docker
frp内网穿透的docker-compose一键部署

## 配置

* 需要挂在一个目录到`/conf`
    * `frps.ini`的文件来初始化配置fprs
    * 你也可以配置`log_file`来吧日志文件也放到这里

* 需要根据自己配置的各个端口来配置暴露的端口

## frp官方地址
* [frp的项目地址](https://github.com/fatedier/frp)
* frp 是一个可用于内网穿透的高性能的反向代理应用，支持 tcp, udp 协议，为 http 和 https 应用协议提供了额外的能力，且尝试性支持了点对点穿透。
* frps是frp的服务端，frps踢动 
* 配置文件[官方文档](https://github.com/fatedier/frp/blob/master/README_zh.md#%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6)