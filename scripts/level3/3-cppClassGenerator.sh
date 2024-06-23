#!/bin/bash

read -p " please enter your name :" name
echo " hello mr ${name}"
echo " hint: the class name  will be same name of file"
read -p " please enter class name " classname
read -p " please enter namespace :" namespace

echo " the class is $classname and namespace is $namespace"

echo "
/********************************************/
//                                          
//              CopyRight ${name}                 
//                                          
/********************************************/
/*
author : Abdallah Salah
date :`date`
brief:
*/
namespace $namespace {
class ${classname}{

public:
    ${classname}();
    ~${classname}();
private:

};
}
" >> ${classname}.hpp
echo "
/********************************************/
//                                          
//              CopyRight ${name}                 
//      
/********************************************/
/*
author : Abdallah Salah
date :`date`
brief:
*/
#include \"${classname}.hpp\"

namespace $namespace {
    ${classname}::${classname}(){}
    ${classname}::~${classname}(){}
}
" >> ${classname}.cpp
echo " class is created"