#! /bin/bash
# This is a simple wrapper of [ladot](http://brighten.bigw.org/projects/ladot/)(which created by [Brighten Godfrey](http://brighten.bigw.org/)), it can generate eps from a dot file with Latex equation.

function get_name(){
    name=$(echo $1 | cut -f1 -d.)
    echo $name
}

function call_ladot(){
    cd $1/tmp
    ../ladot/ladot *.ladot
    gen_ps
    ps2eps -B dot2dvi.ps
    cp -u dot2dvi.eps ${2}/${3}.eps
}

function gen_ps(){
    cp -u ../ladot/dot2dvi.tex ./dot2dvi.tex
    latex ./dot2dvi.tex
    dvips dot2dvi.dvi -o dot2dvi.ps
}

  cwd=$(cd "$(dirname "$0")"; pwd)
  start_dir=${PWD}
  echo CWD:${cwd}
  mkdir ${cwd}/tmp

  dotfile=$1
  filename=$(echo $(basename "$dotfile")| cut -f1 -d.)
  cp $dotfile ${cwd}/tmp/graph.ladot
  call_ladot ${cwd} ${start_dir} ${filename}
  rm -rf ${cwd}/tmp/
