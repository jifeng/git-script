#git的eclipse插件
eclipse git plugin
http://www.eclipse.org/egit/download/

git on windows

Step 0
#Git Bash命令行工具
#下载windows客户端 http://windows.github.com/
#跟linux下的命令行一样，有个别命令无法使用 比如 $> ll，窗口中的内容无法拷贝（右键无效）

Step 1
#安装完成后设置账号，邮箱,提交的时候显示的名称。    
git config --global user.name "jifeng"
git config --global user.email "wade428@163.com"
#查看设置情况    
git config --get user.name
git config --get user.email


Step 2
#创建sshkey用于连接服务器的时候认证
cd .ssh

# 保证.ssh目录下名称为id_rsa, id_rsa.pub的文件是唯一的，如果已经存在的话先备份一下。
mkdir back_rsa
cp id_rsa* back_rsa
rm id_rsa*
ssh-keygen -t rsa -C "wade428@163.com"
#之后一路回车即可

#复制id_rsa.pub中的内容添加到github中
#登陆github系统。点击右上角的 Account Settings--->SSH Public keys ---> add another public keys
#把你本地生成的密钥复制到里面（key文本框中）， 点击 add key 就ok了

#测试是否连接成功
ssh -t git@github.com 
Hi coolme200/top! You've successfully authenticated, but GitHub does not provide shell access.'

Step 3
#创建工作目录
mkdir helloworld
cd helloworld (到workspace的项目目录下执行)
    
#初始化，否则这不会被认为是一个git项目
git init

#设置项目远程版本库地址
#例1（适用github）
git remote add origin master http://github.com/coolme200/hello
#例2（适用gitlab）
git remote add origin master git@gitlab.taobao.ali.com:varworld.git

#错误提示：
fatal: remote origin already exists.
#解决办法：
git remote rm origin


Step 4
#获取代码,这里不要太偷懒,直接git pull 会把master和branch的代码全部拿过来
git pull origin master

Step 5

#修改代码
#提交代码至本地版本库，即使代码已经加到版本库，但做过改动，依然需要add
git add test.js
git commit -m 'commit'
#或者 可以减少add这一步
git commit -a


Step 6
#提交至服务器，这里不要太偷懒，不然会往master和各个branch发送一次push
git push origin master

#错误提示：
error: failed to push som refs to ........
#解决办法,先pull 下来 再push 上去
git pull origin master

ex:1
git push origin
default to pushing only the current branch to <code> origin </code> use <code> git config remote.origin.push HEAD </code>.



