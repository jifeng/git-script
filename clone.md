
## 拉分支

```bash
git clone ...
git checkout stg

#分支已经存在的情况
Branch stg set up to track remote branch stg from origin.
Switched to a new branch 'stg'

#分支不存在
error: pathspec 'stg' did not match any file(s) known to git.
```


判断branch 代码比master 新， 保证已经发布的master代码被合并到过branch上

前提本地已经有该分支的代码
```
git log stg ..master
```