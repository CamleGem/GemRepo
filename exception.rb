# error = Class.new(StandardError)
# error1 = Class.new(error)
# error2 = Class.new(error)
# error3 = Class.new(error)

begin
  file =  File.open('te')
rescue  => exp
  # puts "#{exp.message}"
  # file.close
  # retry
  # sleep 3
  # File.open('te')
end

puts "failed"
