File.open("sample.txt", "r") do |f|
  f.each_line do |l|
    puts l
  end
end

puts "===="

f = File.open("sample.txt", "r")
puts f.readline
puts f.readline
