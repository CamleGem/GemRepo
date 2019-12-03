ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do |file|
  begin
  file_obj = File.open(file)
  file_obj.each_line do |line|
    ltotal += 1
    ctotal += line.size
    line.sub(/^\s+/, '')
    ary = line.split(/\s+/)
    wtotal += ary.size
  end
    file_obj.close
  rescue => error
    print "#{error.message} #{error.class} #{error.backtrace}\n"
  end

  printf("%d %d %d %s\n", ltotal, ctotal, wtotal, file)
end
