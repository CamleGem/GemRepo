
value = [1, 2, 3, 4].inject do |sum, x|
   sum + x
end

p value


back = if 10 > 5 then 10 elsif  4 < 3 then 10 end
p back


back2 = if 10 > 5
           20
        end

p back2