--factorial::Int->Int   Limita el tamaño

factorial 0 = 1
factorial n = n * factorial (n-1)