keyword = "f"

c = 1
File.open("sample.txt", "r") do |f|
  f.each_line do |l|
    if l =~ /#{keyword}/
      puts "#{c}:#{l}"
    end
    c += 1
  end
end
