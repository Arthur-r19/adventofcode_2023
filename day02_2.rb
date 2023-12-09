lines = ARGF.readlines
sum = 0
lines.each do |line|
    line = line.split(/,|:|;/)
    number = line.shift.tr('Game ', '').to_i
    max_values = {"red":0, "green":0, "blue":0}
    line.each do |s|
        s = s.split(' ')
        if max_values[s.last.to_sym] < s.first.to_i
            max_values[s.last.to_sym] = s.first.to_i
        end
    end
    sum += max_values[:red] * max_values[:green] * max_values[:blue]
end
puts sum