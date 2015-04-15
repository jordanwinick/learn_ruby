def reverser
   ary=yield.split ' '
   ary.each {|word| word.reverse!}
   ary.join ' '
end

def adder(x=1)
	yield + x
end

def repeater(x=1)
	x.times {yield}
end



