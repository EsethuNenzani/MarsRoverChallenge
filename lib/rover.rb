class Rover
  attr_accessor :x_coordinate, :y_coordinate, :compass_point

  def move_rover(instructions_string)
    instructions = instructions_string.split("")
    left_position = []
    right_position = []
    up_position = ""
    position = @compass_point
    #keep track of position or update position
    instructions.each do |instruction|
      if instruction == "L"
        left_position << turn_left(position)
        position = turn_left(position)
      end
    end
  end

  def turn_left(position)
    if position == 'E'
      cardinal_position = 'N'
    elsif position == 'N'
      cardinal_position = 'W'
    elsif position == 'W'
      cardinal_position = 'S'
    else
      cardinal_position = 'E'
    end
    cardinal_position
  end

  def turn_right(position)
    cardinal_position = ""
      if position == 'E'
        cardinal_position ==  'S'
      elsif position == 'S'
        cardinal_position == 'W'
      elsif position == 'W'
        cardinal_position ==  'N'
      else
        cardinal_position ==  'E'
      end
    cardinal_position
  end

  def move_up(position)
  #   if left  -1 in x_axis (W)
  #   if right + 1 in x_axis (E)
  #   if down - 1 (S)
  #   if up + 1 (N)
  end


end