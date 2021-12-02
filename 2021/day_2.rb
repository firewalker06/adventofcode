def navigate
  File.open("day_2_input.rb") do |f|
    inputs = f.readlines
    x = 0
    y = 0
    inputs.each do |input|
      command, value = input.split
      case command
      when "forward"
        x = x + value.to_i
      when "up"
        y = y - value.to_i
      when "down"
        y = y + value.to_i
      end
    end

    puts "#{x}*#{y} = #{x*y}"
  end
end

navigate

def navigate_and_aim
  File.open("day_2_input.rb") do |f|
    inputs = f.readlines
    x = 0
    y = 0
    aim = 0
    inputs.each do |input|
      command, value = input.split
      case command
      when "forward"
        x = x + value.to_i
        y = y + (value.to_i * aim.to_i)
      when "up"
        aim = aim - value.to_i
      when "down"
        aim = aim + value.to_i
      end
    end

    puts "#{x}*#{y} = #{x*y}"
  end
end

navigate_and_aim
