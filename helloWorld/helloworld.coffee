targetStr = "hello world!"
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

targetArr = []
targetArr[i] = ' ' for i in [0..maxLen-1]
targetArr[i] = targetStr[i] for i in [0..targetStr.length-1]

str = []
str[i] = esc for i in [0..maxLen-1]

while str.join('') != targetArr.join('')
	str = fitness(str)
	str = mutate(str)
	console.log str.join('')
