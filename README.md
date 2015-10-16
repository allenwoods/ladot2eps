# ladot2eps
#### A simple wrapper of ladot that makes using LaTeX in Dot files relatively easy

[中文说明](http://allenwoods.gitcafe.io/2015/10/15/ladot-intro/)

This is a simple wrapper of [ladot](http://brighten.bigw.org/projects/ladot/)(created by [Brighten Godfrey](http://brighten.bigw.org/)), it can generate eps from a dot file with Latex equation.

#### Dependency:
  - latex
  - graphviz
  - ps2eps

Tested on Ubuntu 14.04

#### Usage:
```shell
#!bin/sh
git clone https://github.com/allenwoods/ladot2eps.git
cd ladot2eps
chmod +x ./ladot2eps
./ladot2eps dotfile.dot
```

#### Example:
![Example](./lossfunc.png)
The .dot file saved in `./example`
