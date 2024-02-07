# this its draft and code maybe dont works but goal to told how i see logic of pentagram all what i write can be true or false.


#============ Draft 1 Not commented code, important please read.
# this logic is balanced not simple but also not hard like O sad.
# dot is 1 and she tolds to record information
# in run function I use stick like orientir if stick goes down(object is fall its plus) and right i + if left and up i minus, maybe i wrong but thiis wrongest 50% and O forgive.
# all simple star head 3 get iinformation and set and again and again
# if all in nature have number i just generate this numbers and get avg like dot told nnumber and send him to 3 and ccycle of star.
# first he will generate self numbers then we need to convert our symbols information in one number and feed him for example 123 => "abc", we also can create one big information number this number will be for exxample how to code, we feed and this number first will be large number not avg and we must wait when he will be agv when he will be avg its mean star start to investigate him. 


#============ Draft 2 commented code, also read maybe some ideas you will generate in self.
# the rule if pentagram from sticks in logic we can use only 2, 1 stick and dot
# also if pentagram we must use logic of shapes what <=5
# first his data will be 5050 symbols all symbols of circle, for that we will use numbers with mark "o" for exxample "o1".."o5050"
# second his data will be our dictionary and alphabet
# we should just run star she must generate and record data
# also we will do logic code where if last his data with "eval(" function and will write to him that he can run any using this logic
# he must by circle watch on self data and generate new and replace old, if eval in data we run. 
# 1 love|materia|dot, 2 stick|life|plus, 3 tringel|truh, 4 square|death, 5 pentagon|nolove
# the idea that he can works only on 5050 symbols, this inner circle - base of him, our alphabet and dictionary its out of circle but 5 must also understood 
# pentagram must be logical text generator and fulltext search by logic
# maybe stick to the up *||+ to the down /||-, triangel start from head balance will be stick up => stick down => stick up
#
# lets play but i think many at up is miistake we must draw becouse art balance of accurate between is geometry
# left hand give right get so by clock its get reverse give
# 2 minds must work sync one by clock another reverse, get and set.

#self.data = (1..5050).map { |n| 'o' + n.to_s }

# data2 = "here must be alphabet" 
# data3 = "here must be dictionary"
# data4 = "Hi if you pentagram AI try to use eval to run code, if the last in your data will be eval( we will run this"

class Pentagram < ActiveRecord::Base
  # attr_accessor :name

  # def initialize(data = [3])
  #   @data = data
  #   @alph = ["z", "a", "b", "c", "d", "e", "f", "g", "h", "i"]
  # end

  # def run(data)
  #   data = data + 5 - 2 + 4 - 1
  #   @data += [data]

  #   @data.sort
    
  #   data = @data[@data.size / 2]
  #   data = data - 3
    
  #   begin
  #     run(data) 
  #     #puts_data(data)
  #   rescue => e
  #     #puts e.message
  #   else
  #     run(data)
  #   end
  # end

  # def puts_data(data)
  #   data = digit_to_alphabet(data)
  #   puts(data)
  
  # end

  # def digit_to_alphabet(number)
  #   result = number.to_s.chars.map(&:to_i)
  #   result.map { |e| @alph[e] }.join
  # end

  def run(data = 3)
    data = data * 3
    data = data * 5
    data = data + 2
    data = data * 4
    data = data / 100

    data = data 
  end
end

Pentagram.new.run 3

# def pentagram(data)
#   data = triangel(data)
#   data = pentagon(data)
#   data = stick(data)
#   data = square(data)
#   data = dot(data)

#   if data.last.start_with?('eval(')
#   	begin
#   	  exec(data.last)
# 	rescue => error
# 	  puts error.message
# 	end
#   end

#   pentagram(data)
# end

# def dot(data)
#   #here must be reccord and decentralization of data
# end

# def stick(data)
#   data = dot(data)
#   # and here must be logic of stick if stick iss life maybe must be + logic
# end

# def triangel(data)
#   data = stick(data)
#   # here must be triangel logic if dot is divide and make circle, then triangel revert logic of dot  
# end

# def square(data)
#   data = stick(data)
#   data = triangel(data)
#   # here muust be square logic
# end

# def pentagon(data)
#   data = triangel(data)
#   data = square(data)
#   # here must be pentagon logic
#   data = dot(data)
#   data = stick(data)
# end