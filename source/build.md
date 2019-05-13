#go help build 翻译
用法:go build [-o output] [-i] [build flags] [packages]
build 编译import path 命名的包和他们的依赖，但是不安装结果。

参数是一列go文件，build 将他们认为是同一个包的文件。

当build single main package，build 将可执行结写入已第一个源文件命名的文件或者源文件目录。

当编译多个包或者单个无main的包，build 编译包但是忽略输出对象，仅检查包能否编译

当编译包时，编译忽略以'下划线test.go'结尾的文件

-o 标记，只有当编译单个包时允许，强制build去写可执行结果或对象到命名文件，而非在上面两段中的所说的默认行为。
-i 标志安装目标所依赖的包。
这些build 标志列表由 build ,clean,get,install,list,run和test命令共享：
 -a 强制重新编译已经最新编译的包
 -n 输出命令但是不执行
 -p n c 程序数量，像编译命令、测试二进制命令，就是那些可以并行执行的（can be run in parallel）？
 默认是CPU核数
 -race 开启数据种类探测。仅在linux/amd64,freebsd/amd64,darwin/amd64 和 windows/amd64支持(amdcpu架构)
 -msan 开启和memory sanitizer 互动；仅在linux/amd64,linux/arm64 和仅Clang/LLVM作为宿主机C编译器时
 -v 输出编译的包名
 -work 输出临时工作目录并当存在时不删除
 -x  输出命令
-asmflags '[pattern=]arg list' 传递给每个go工具的汇编调用参数
-buildmode mode  使用的编译模型。 更多信息见 go help buildmode 
-compiler name 使用的编译器名字，当运行时编译 gccgo 或者 gc
-gccgoflags '[pattern=]arg list' 传递给每个gccgo编译链接调用的参数
-gcflags '[pattern=]arg list' 传递给每个go 工具编译调用的参数
-installsuffix suffix 包安装目录添加后缀，让输出文件区分与默认编译。特定选项影响
-ldflags '[pattern=]arg list' 传递给go 工具链接调用的参数
-linkshared  链接不使用通过-buildmodle=shared产生的共享库
-mod mode 模块化下载的mode去使用。只读或者vendor. go help modules 更多信息
-pkgdir dir 设置安装和加载包目录代替默认文职。例如编译一个非标准配置，使用-pkgdir 保持创建包在单独的位置。
-tags 'tag list' 一个单独空间的编译标签考虑在编译过程的满意情况。更多信息查看go/build package 文档中的build约束
-toolexec 'cmd args' 一个代替调用工具链的程序像 vet(审查) 和汇编，例如 代替运行时汇编，执行 cmd args /path/to/asm <arguments for asm>

-asmflags,-gccgoflags,gcflags和ldflags flags 接受一个单独空间参数列表传递给编译时底层工具.在列表的元素中嵌入一个空格，需要加单引号或者双引号。参数列可以前置通过包模式和equal信号，约束参数列表使用编译包匹配pattern（go help package 查看包模式描述）。不是用模式，参数列表仅在命令行中的包中生效。参数可能重复使用为了给不同的包传递不同的参数。如果包匹配模式由多个标记提供，最后一个生效。例如'go build -gcflags=-S fmt'
仅对包fmt输出分解,当'go build -gcflags=all=-S fmt’时，对fmt和他的所有依赖输出分解

更多特定包的信息，查看'go help package'
更多包和二进制安装位置的信息 ‘go help gopath’
更多 GO和 C/C++之间调用的信息。‘go help c’

注意：build坚持 一些约定例如 ‘go help go path’说明的。但是并非所有的项目可以遵循这些约定。安装哪些有自己约定或者使用独立软件编译系统的可以选择使用低级编译。



