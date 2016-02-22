def double(n)
	return n*2
end

proc = ->double(Int32)
puts typeof(proc)
puts proc.call(3)  # => 6

def fn2(myProc : Proc, val)
	res = myProc.call(val)
	puts "res #{res}"
end

fn2(proc, 3)
