doble x = 2*x
triple x= 3*x


evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones a b = [[n x|n<-b] | x<-a] 


igualacero x = x==0

mayorquecero x= x>0









--evaluaciones [0,(3.14/2),((-3.14)/2),3.14,(-3.14)] [sin,cos,tan]