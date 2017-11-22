esConjunto [] =True			
esConjunto conjunto1 = if(pertenece (head(conjunto1)) (tail(conjunto1))==True) then False
						else esConjunto (tail(conjunto1))

-- True si elemento pertenece al conjunto
pertenece elemento []=False
pertenece elemento conjunto= if head(conjunto)==elemento then True
							else pertenece elemento (tail(conjunto))


-- True si el primer argumento es subconjunto del segundo
subconjunto [] conjunto2 =True
subconjunto conjunto1 conjunto2 =if pertenece (head(conjunto1)) conjunto2 then subconjunto (tail(conjunto1)) conjunto2
									else False


--True si dos conjuntos son iguales
iguales conjunto1 conjunto2 = if ((length(conjunto1)==length(conjunto2))&&
									(esConjunto conjunto1==True)&&
									(esConjunto conjunto2==True)) then subconjunto conjunto1 conjunto2
								else False
								

--Devuelve lista con los dos conjuntos sin repeticion
--Asume que le metes dos conjuntos. Si hay elementos repetidos dentro del conjunto1 los añadirá igual
union conjunto1 [] =conjunto1
union conjunto1 conjunto2 =if (pertenece (head(conjunto2)) conjunto1) ==False then union (conjunto1++[head(conjunto2)]) (tail(conjunto2))
							else union conjunto1 (tail(conjunto2))