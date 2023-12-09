lines = ARGF.readlines
sum = 0
lines.each do |line|
    line = line.split(/,|:|;/)
    number = line.shift.tr('Game ', '').to_i
    sum += number
    line.each do |s|
        s.gsub!(/^ /, '')
        s.gsub!(/red|green|blue/, 'red'=>'12', 'green'=>'13', 'blue'=>'14')
        s = s.split(' ')
        if s[0].to_i > s[1].to_i
            sum -= number
            # puts number
            break;
        end
    end
end
puts sum