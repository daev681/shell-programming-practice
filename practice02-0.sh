#!/bin/bash

set "hong gildong" jangbogo janggilsan
declare -i cnt=0
for i in $* # 이 부분을 $*, $@, "$*", "$#" 네가지로 변경하며 실행하면 차이를 알 수 있음
do
        echo $cnt
        echo $i
        cnt+=1
done


#기억하기 쉽게 설명하자면, "$*"는 모든 파라미터를 한개의 문자열로 퉁치고, "$@"는 인용문자(', ")의 의미를 살려 파라미터를 배열로 취급한다.
