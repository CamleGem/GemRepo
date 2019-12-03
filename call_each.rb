def call_each(array, &block)
  array.each(&block)
end


call_each [1, 2, 3] do |num|
  p num
end