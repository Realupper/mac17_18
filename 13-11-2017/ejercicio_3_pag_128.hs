-- Recibe una lista [a1,a2,...,an]
-- Internamente debe calcular los n-esimos primeros primos

divisores y = [x|x<-[1..y], mod y x ==0]
primo y = divisores y==[1,y]

primos= [x|x<-[1..], primo x]
nprimos n= [(primos!!m)|m<-[0..n-1]]

hashF m= sum[(m!!y)*((nprimos (length(m)))!!(length(m)-1-y))|y<-[0..length(m)-1]]