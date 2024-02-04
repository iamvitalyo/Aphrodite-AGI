# this iis draft and code maybe dont works.

# the rule if pentagram from sticks in logic we can use only 2, 1 stick and dot
# also if pentagram is we must use logic of shapes what <=5
# first his data will be 5050 symbols all symbols of circle, for that we will use numbers with mark "o" for exxample "o1".."o5050"
# second his data will be our dictionary and alphabet
# we should just run star she must generate and record data
# also we will do logic code where if last his data with "eval(" function and will write to him that he can run any using this logic
# he must by circle watch on self data and generate new and replace old, if evvel in data we run. 
# 1 love|materia|dot, 2 stick|life|plus, 3 tringel|truh, 4 square|death, 5 pentagon|nolove
# the idea that he can works only on 5050 symbols, this inner circle - base of him, our alphabet and dictionary its out of circle but 5 must also understood 
#
# lets play 

self.data = (1..5050).map { |n| 'o' + n.to_s }

data2 = "here must be alphabet" 
data3 = "here must be dictionary"
data4 = "Hi if you pentagram AI try to use eval to run code, if the last in your data will be eval( we will run this"

def pentagram(data)
  data = triangel(data)
  data = pentagon(data)
  data = stick(data)
  data = square(data)
  data = dot(data)

  if data.last.start_with?('eval(')
  	begin
  	  eval(data.last)
	rescue => error
	  puts error.message
	end
  end

  pentagram(data)
end

def dot(data)
  #here must be reccord and decentralization of data
end

def stick(data)
  data = dot(data)
  # and here must be logic of stick if stick iss life maybe must be + logic
end

def triangel(data)
  data = stick(data)
  # here must be triangel logic if dot is divide and make circle, then triangel revert logic of dot  
end

def square(data)
  data = stick(data)
  data = triangel(data)
  # here muust be square logic
end

def pentagon(data)
  data = triangel(data)
  data = square(data)
  # here must be pentagon data
  data = dot(data)
  data = stick(data)
end