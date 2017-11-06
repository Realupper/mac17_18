divisores y = [x|x<-[1..y], mod y x ==0]
primo y = divisores y==[1,y]

mapea :: (a -> b) -> [a] -> [b]
mapea f x = [f n|n<-x]

filtra :: (a -> Bool) -> [a] -> [a]
filtra f x = [n |n<-x, f n]