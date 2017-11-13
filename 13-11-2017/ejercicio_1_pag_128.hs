--Descargado de internet. 
integrator f a b n = sum.map((e*).f).take n $ [a + m, a + m + e..] 

  where e = (b - a) / fromIntegral n 

        m = e / 2