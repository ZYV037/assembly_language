# assembly_language
assembly language

Video:  
https://next.xuetangx.com/learn/THU08091000320/THU08091000320/1510508/video/1246638     
https://www.bilibili.com/video/BV1G7411Z7VP?p=25

20200629:Start

完成一个汇编语言程序设计大作业
每天代码commit

20200629 day01
1.编译成汇编代码 
    gcc -O2 -S code.c -m32 -fno-omit-frame-pointer
2.汇编指令编译为中间.o文件
    as -o hello.o hello.s
    -gstabs //产生带调试信息的object文件
    --32    //64位环境编译32位
3.链接
    ld -o hello hello.o
    -m_elf_i386 //64位环境添加命令行参数
    
sudo apt install g++-multilib

20200702
完成P62学习课程
