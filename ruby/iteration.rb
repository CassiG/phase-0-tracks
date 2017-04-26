def test 
	puts "Status message before the block"
	yield
	puts "Status message after the block"
end

test {puts "here I fixed it"}