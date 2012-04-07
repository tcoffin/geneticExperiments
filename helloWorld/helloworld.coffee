targetArr = "hello world!".split('')
targetLen = targetArr.length
maxLen = 255
esc = String.fromCharCode(27)

# fitness function
fitness = (str) ->
	i = 0
	for c in str
		if c != targetArr[i]
			str[i] = esc
		i++

	return str

mutate = (fitness) ->
	str = fitness
	i = 0
	for c in fitness
		if c == esc
			str[i] = String.fromCharCode(Math.floor((Math.random()*90)+32))
		i++

	return str

str = []
str.length = maxLen

while str.join('') != targetArr.join('')
	str = fitness(str)
	str = mutate(str)
	console.log str.join('')
