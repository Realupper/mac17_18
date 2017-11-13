doble x = 2*x
triple x= 3*x


evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones a b = [[n x|n<-b] | x<-a] 