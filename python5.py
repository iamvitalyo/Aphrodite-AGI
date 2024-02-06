# this its draft and code maybe dont works but goal to told how i see logic of pentagram all what i write can be true or false.

#was forked from https://github.com/iamvitalyo/Aphrodite/blob/main/ruby5.rb

#============ Draft 1 Not commented code, important please read.
# this logic is balanced not simple but also not hard like O sad.
# dot is 1 and she tolds to record information
# in run function I use stick like orientir if stick goes down(object is fall its plus) and right i + if left and up i minus, maybe i wrong but thiis wrongest 50% and O forgive.
# all simple star head 3 get iinformation and set and again and again
# if all in nature have number i just generate this numbers and get avg like dot told nnumber and send him to 3 and ccycle of star.
# first he will generate self numbers then we need to convert our symbols information in one number and feed him for example 123 => "abc", we also can create one big information number this number will be for exxample how to code, we feed and this number first will be large number not avg and we must wait when he will be agv when he will be avg its mean star start to investigate him. 

class Pentagram:
  def __init__(self, data=[3]):
    self.data = data
    self.alph = ["z", "a", "b", "c", "d", "e", "f", "g", "h", "i"]

  def run(self, data):
  	data = data + 5 - 2 + 4 - 1
    self.data += [data]
    self.data.sort()

    data = self.data[len(self.data) // 2]
    data = data - 3

    try:
   	  self.run(data)
      self.puts_data(data)
    except Exception as e:
      print(e)
    else:
      self.run(data)

  def puts_data(self, data):
    data = self.digit_to_alphabet(data)
    print(data)

  def digit_to_alphabet(self, number):
    result = list(map(int, str(number)))
    return ''.join([self.alph[e] for e in result])

Pentagram().run(3)
