def add(x, y)
	x+y
end

def subtract(x, y)
	x-y
end

def sum(ary)
	sum = ary.inject {|sum, x| sum+=x}
	sum ? sum : 0
end
