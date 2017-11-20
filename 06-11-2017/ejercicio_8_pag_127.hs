tomarmientras::(a->Bool)->[a]->[a]
tomarmientras f b = [n |n<-b, f n == True] 

eliminarmientras::(a->Bool)->[a]->[a]
eliminarmientras f b = [n |n<-b, f n == False]