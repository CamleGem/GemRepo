string = '424092928@qq.com'

string =~ /(\d*)@(.*)/i

print "#{[$1, $2]}\n"

%r|(\d*)@(.*)|

re = Regexp.new('(\d*)@(.*)')
p re


lang = "正则表达式真难啊，怎么这么难懂。"

lang.gsub!(/难/, "容易")

p lang

def word_capitalize(str)
   return str.gsub(/(\w+)/) do |matched|
      matched.capitalize
   end
end

p word_capitalize("in-reply-to")
p word_capitalize("X-mailer")