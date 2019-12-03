

def cop (filename)
   File.open(filename) do |file|
      File.open('second', 'w') do |file2|
         file2.write(file.read)
      end
   end
end

cop('new')

require 'fileutils'

# FileUtils.cp()
# File.delete()
# File.unlink

#p Dir.pwd
#Dir.chdir('../')
#p Dir.pwd

def traverse(path)
   if File.directory?(path)
      dir = Dir.open(path)
      while file = dir.read
         next if file == '.'
         next if file == '..'
         traverse(path + "#{file}")
      end
      dir.close
   elsif
      puts path
   end
end

traverse(ARGV[0])



