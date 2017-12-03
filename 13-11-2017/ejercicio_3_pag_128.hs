-- Recibe una lista [a1,a2,...,an]
-- Internamente debe calcular los n-esimos primeros primos

module Ejercicio3 where

divisores y = [x|x<-[1..y], mod y x ==0]
primo y = divisores y==[1,y]

primos= [x|x<-[1..], primo x]
nprimos n= [(primos!!m)|m<-[0..n]]

hashF m= sum[(m!!y)*((nprimos (length(m)))!!y)|y<-[0..length(m)-1]]