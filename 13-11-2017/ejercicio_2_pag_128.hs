calculaPi::Double->Double
calculaPi t= t^2 * fromIntegral(length(cuadradosDentro t))


cuadradoDentro::Double->Double->Bool
cuadradoDentro x y = if (sqrt(x^2+y^2)<=1.0)
			then True
			else False

			
centros t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))]]


cuadradosDentro t=[n|n<-centros t, cuadradoDentro (head(n)) (head(tail(n)))==True]





centrosDentro t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],cuadradoDentro x y==True]

calculaPi2 t= t^2 * fromIntegral(length(centrosDentro t))