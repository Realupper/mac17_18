doble x = 2*x
triple x= 3*x


evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones a b = [[n x|n<-b] | x<-a] 


igualacero::[a]->Bool
igualacero x = 

mayorquecero::[a]->Bool
mayorquecero x= x>0



comparaciones::[a]->[Bool]
comparaciones x = [evaluaciones n [igualacero, mayorquecero, mayorquecero]|n<-x]


(comparaciones . evaluaciones [0,(3.14/2),((-3.14)/2),3.14,(-3.14)]) [sin,cos,tan]



--evaluaciones [0,(3.14/2),((-3.14)/2),3.14,(-3.14)] [sin,cos,tan]