require 'date'

result = Date.today - Date.new(1993, 2, 24)
puts result.to_i

require 'pp'

list = [
    {larry: 100, wall: 200, perl: 'good'},
    {matz: 200, ruby: 'good'},
    {tony: 888, yang: 'love perl and ruby!'},
]

pp list