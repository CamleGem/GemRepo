ltotal = 0
ctotal = 0
wtotal = 0
ARGV.each do |file|
  begin
    file_obj = File.open(file)
    l = 0
    c = 0
    w = 0
    file_obj.each_line do |line|
      l  += 1
      c  += line.size
      line.sub!(/^\s+/, "")
      arg = line.split(/\s+/)
      w += arg.size
    end
    ltotal += l
    ctotal += c
    wtotal += w
    printf("%s %d %d %d %s\n", file, l, c, w, 'Total')
  rescue => exp
    puts "#{exp.class} #{exp.message}"
  ensure
    file_obj.close
    puts "pass!!"
  end
end
printf("%d %d %d %s\n", ltotal, ctotal, wtotal, 'Total')



