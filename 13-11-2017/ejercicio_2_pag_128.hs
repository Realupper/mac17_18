calculaPi::Double->Double
calculaPi t= t^2 * fromIntegral(length(cuadradosDentro t))

calculaPi2 t= t^2 * fromIntegral(length(centrosDentro t))

calculaPi3 t= (t^2 * (fromIntegral(length(cuadInf t)+(length(cuadSup t))+(length(cuadIzq t))+(length(cuadDer t)))))+(1.5^2)


cuadradoDentro::Double->Double->Bool
cuadradoDentro x y = if (sqrt(x^2+y^2)<=1.0)
			then True
			else False

			
centros t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))]]


cuadradosDentro t=[n|n<-centros t, cuadradoDentro (head(n)) (head(tail(n)))==True]


--Funcion para CalculaPi2

centrosDentro t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],cuadradoDentro x y==True]


--Funciones para CalculaPi3

cuadSup t=[ [x, y] |x<-[(-0.75+(t/2)),(-0.75+t+(t/2))..(0.75-(t/2))], y<- [(0.75+(t/2)),(0.75+t+(t/2))..(1-(t/2))],cuadradoDentro x y==True]
cuadInf t=[ [x, y] |x<-[(-0.75+(t/2)),(-0.75+t+(t/2))..(0.75-(t/2))], y<- [(-0.75-(t/2)),(-0.75-t-(t/2))..(-1+(t/2))],cuadradoDentro x y==True]

cuadIzq t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(-0.75-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],cuadradoDentro x y==True]
cuadDer t=[ [x, y] |x<-[(0.75+(t/2)),(0.75+t+(t/2))..(1-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],cuadradoDentro x y==True]


--CalculaPi3 debe ser depurada. Tiene fallos.
--Otras opciones:
	-- Como la figura siempre será geometrica puede ser dividida en 4 piezas vertical e horizontalmente. Calcular una de ellas y multiplicar por 4
	-- De esta ultima version se puede podar tambien igual que hemos intentado en CalculaPi3


cuadSup2 t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(0-(t/2))], y<- [(0.5+(t/2)),(0.5+t+(t/2))..(1-(t/2))],cuadradoDentro x y==True]
cuadInf2 t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(-0.5-(t/2))], y<- [(0+(t/2)),(0+t+(t/2))..(0.5-(t/2))],cuadradoDentro x y==True]



centrosDentro2 t=[ [x, y] |x<-[(-1+(t/2)),(-1+t+(t/2))..(0-(t/2))], y<- [(-1+(t/2)),(-1+t+(t/2))..(0-(t/2))],cuadradoDentro x y==True]
calculaPi4 t= 4*(t^2 * fromIntegral(length(centrosDentro2 t)))


calculaPi5 t = 4*((t^2 * fromIntegral(length(cuadSup2 t)+length(cuadInf2 t)))+0.5^2)
