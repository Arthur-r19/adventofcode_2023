lines = ARGF.readlines
sum = 0
lines.each do |line|
  line.tr!('A-z', '')
  line.chomp!
  number = Integer(line[0] + line[-1])
  sum += number
end
puts sum
