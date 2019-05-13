#go help environment
go命令和他调用的工具，测试一点环境变量的不同。其中大多数可以通过运行“go env NAME”查看系统默认变量，NAME位置是变量的名字。

一般用途环境变量：
    GCCGO    gccgo控制器去运行 'go build -compiler=gccgo'
    GOARCH   编译 架构|处理器
    GOBIN    ‘go install’ 安装的命令目标目录
    GOCACHE  目录；go 命令存储缓存，未来编译时信息复用
    GOFLAGS  空格分割列表 “-flag=value” 设置给go commands命令，当被当前命令适用时。命令行的flags 将覆盖这些命令
    GOOS     编译代码的操作系统；例如 linux,darwin,windows,netbsd.
    GOPATH   详细信息，‘go help gopath’
    GOPROXY  Go module 代理。 查看'go help goproxy'
    GOROOT   go树根目录;//安装位置？
    GOTMPDIR go 命令写临时源文件、包、和二进制文件

GOFLAGS列表中实体每个都是一个单独的特征位。由于实体是空格分割的，特征位不能包含空格。

cgo使用的环境变量;同样是go 环境变量，使用go env 查看
    CC 编译c代码使用的命令
    CGO_ENABLED 是否支持cgo命令，0|1
    CGO_CFLAGS  编译c代码时cgo传递给编译器的特征值
    CGO_CFLAGS_DISALLOW 规则表达式指明允许出现在 #cgo CFLAGS源码说明中的附加标记
    CGO_CFLAGS_DISALLOW 规则表达式指明不允许出现在 #cgo CFLAGS源码说明中的附加标记
    CGO_CPPFLAGS,CGO_CPPFLAGS_ALLOW,CGO_CPPFLAGS_DISALLOW     
        类似 CGO_CFLAGS,CGO_CFLAGS_ALLOW和CGO_CFLAGS_DISALLOW 但是针对C预处理器
    CGO_CXXFLAGS,CGO_CXXFLAGS_ALLOW,CGO_CXXFLAGS_DISALLOW
        类似 CGO_CFLAGS,CGO_CFLAGS_ALLOW和CGO_CFLAGS_DISALLOW 针对C++编译器
    CGO_FFLAGS, CGO_FFLAGS_ALLOW, CGO_FFLAGS_DISALLOW
        类似 CGO_CFLAGS,CGO_CFLAGS_ALLOW和CGO_CFLAGS_DISALLOW 针对Fortran编译器
    CGO_LDFLAGS, CGO_LDFLAGS_ALLOW, CGO_LDFLAGS_DISALLOW
         类似 CGO_CFLAGS,CGO_CFLAGS_ALLOW和CGO_CFLAGS_DISALLOW 针对链接器
    CXX 编译C++代码的命令
    PKG_CONFIG pkg-config 工具路径
    AR    巧妙的修改文库归档当使用gccgo 编译器创建时；默认是 'ar'
针对架构的环境变量
    GOARM 针对GOARCH=arm,哪个arm架构去编译。验证的值 5，6，7
    GO386 针对GOARCH=386,浮点指针说明设置，验证的值 387，sse2
    GOMIPS 针对GOARCH=mips{,le},是否使用浮点指针指令，有效值hardfloat(默认)，softfloat
    GOMIPS64 针对GOARCH=mips64{,le},是否是否使用浮点指针指令，有效值hardfloat(默认)，softfloat
目标专用 环境变量：
    GCCGOTOOLDIR 如果设置了，去哪里找gccgo工具，例如cgo.默认是依赖gccgo配置
    GOROOT_FINAL go树根目录，它安装的本地位置，而不是它构建的位置
    GO_EXTLINK_ENABLED 链接器是否该使用额外的链接模式，当使用 -linkmode=auto 用cgo处理代码时。
0不使用，1使用。
    GIT_ALLOW_PROTOCOL git定义。逗号分隔的列表结构，git fetch/clone时使用。如果设置了，任何没有明确提及的结构将考虑（不那么安全的）被通过'go get' 

go env 附加的信息，但是不从环境中读取
    GOEXE 可执行文件后缀(".exe" 在Windows,""其它系统)
    GOHOSTARCH  Go 二进制工具链架构
    GOHOSTOS    Go 二进制工具链操作系统
    GOMOD       main模块到go.mod的相对路径或者空字串不使用模块
    GOTOOLDIR   go 工具(compile,cover,doc,etc)安装目录







    
