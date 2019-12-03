
def grep(pattern, filename)
  file = File.open(filename)
  file.each_line do |line|
    if pattern =~ line
      puts line
    else puts "---------not matched!-------------\n"
    end
  end
end

