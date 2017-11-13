divisores y = [x|x<-[1..y], mod y x ==0]
primo y = divisores y==[1,y]


isInt :: (Integral a, RealFrac b) => b -> a -> Bool
isInt x n = (round $ 10^(fromIntegral n)*(x-(fromIntegral $ round x)))==0


descomposicion n =  [(x,fromIntegral(maximum ([ y |y<-[1..n], ((fromIntegral(n)/(fromIntegral(x)^y)) - fromIntegral(round (fromIntegral(n)/(fromIntegral(x)^y))))==0])))|x<-[1..n], primo x && mod n x == 0]

--[(x,fromIntegral(maximum ([ y |y<-[1..60], ((60/(fromIntegral(x)^y)) - fromIntegral(round (60/(fromIntegral(x)^y))))==0])))|x<-[1..60], primo x && mod 60 x == 0]