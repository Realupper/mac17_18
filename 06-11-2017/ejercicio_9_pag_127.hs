quitablancos::[Char] -> [Char]
quitablancos b = if head(b)/=' '
				then b
				else quitablancos (tail(b))
