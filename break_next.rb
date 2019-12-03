# num = 0
# loop do
#   num += 10
#   break  if num >= 10
# end
# p num

array = ['perl', 'python',  'ruby', 'golang']
i = 0
array.each do |lang|
  i += 1
  if  i == 3
    next
  end
  p [i, lang]
end