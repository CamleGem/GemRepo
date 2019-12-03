

class Range

   def by(step)
      x = self.begin
      if exclude_end?
         while x < self.end
            yield x
            x += step
         end
      else
         while x <= self.end
            yield x
            x += step
         end
      end
   end
end




( 1..10  ).by(2) { |num| puts num }
( 1...10 ).by(2) { |num| puts num }

obj = Range.new(1, 2, 3)
p obj.is_a?(Range)
