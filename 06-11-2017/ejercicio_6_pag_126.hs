doble x = 2*x
triple x= 3*x


evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones a b = [[n x|n<-b] | x<-a] 


comparaciones x = [[(!!)n 0 >0, (!!)n 1 ==0, (!!)n 2==0] |n<-x ]



-- Linea de codigo a ejecutar en terminal

--(comparaciones . evaluaciones [0,(3.14/2),((-3.14)/2),3.14,(-3.14)]) [sin,cos,tan]