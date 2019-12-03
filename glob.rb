
require 'etc'
p Dir.glob('*.rb')

back = File.stat('cop.rb')
p back.uid
p back.gid

p Etc.getpwuid(back.uid).name
p Etc.getgrgid(back.gid).name

p File.dirname('/user/bin/file')

p File.basename("/usr/bin/file.c", '.c')

p File.dirname('file')

p File.split("/usr/bin/file")

p File.extname("/usr/bin/file.pl")

p File.join("/usr/bin", "perl.pl")

p File.expand_path("perl")

p File.expand_path("../perl", "/etc/")

p File.expand_path("~liuyang/file")

require 'find'

IGNORES = [ /^\./, /^\.svn$/, /^\.git$/]

def listdir(top)
   Find.find(top) do |path|
      if FileTest.directory(path)
         dir, base = File.split(path)
         IGNORES.each do |re|
            if re =~ base
               Find.prune
            end
         end
         puts path
      end
   end
end



