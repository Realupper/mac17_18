divisores y = [x|x<-[1..y], mod y x ==0]
primo y = divisores y==[1,y]

evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones a b = 