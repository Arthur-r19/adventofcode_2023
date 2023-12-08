lines = ARGF.readlines
sum = 0
lines.each do |line|
  # puts line
  line.gsub!('one', 'o1e')
  line.gsub!('two', 't2o')
  line.gsub!('three', 't3e')
  line.gsub!('four', 'f4r')
  line.gsub!('five', 'f5e')
  line.gsub!('six', 's6x')
  line.gsub!('seven', 's7n')
  line.gsub!('eight', 'e8t')
  line.gsub!('nine', 'n9e')
  # line.gsub!(/one|two|three|four|five|six|seven|eight|nine/,
  #   'one'   =>'1',
  #   'two'   =>'2',
  #   'three' =>'3',
  #   'four'  =>'4',
  #   'five'  =>'5',
  #   'six'   =>'6',
  #   'seven' =>'7',
  #   'eight' =>'8',
  #   'nine'  =>'9')
  # puts line
  line.tr!('A-z', '')
  line.chomp!
  # puts line
  number = Integer(line[0] + line[-1])
  # puts number
  # puts '-----------------'
  sum += number
end
puts sum
