hello = Proc.new do |num|
  puts "hello world #{num}!"
end

hello2 = Proc.new do
  puts "hello ruby and perl!"
end

hello.call(10)
hello2.call
