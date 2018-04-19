a = 1..16

c = 0
a.each {|e|
  c += 1
  print(e, c % 4 == 0 ? "\n" : " ")
}

puts "===="

a.each_slice(4) {|s|
  puts s.join(" ")
}
