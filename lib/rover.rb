class Rover
  attr_accessor :x_coordinate, :y_coordinate, :compass_point

   # validates :x_coordinate, format: { with: /\A\d+\z/, message: "Integer only. No alphabets or special characters allowed." }
  # validates :y_coordinate, format: { with: /\A\d+\z/, message: "Integer only. No alphabets or special characters allowed." }
  #
  # validates :compass_point, format: {with: /\A[^AaBbCCDdFfGgHhIiJjKkLlMmOoPpQqRrTtUuVvXxYyZz]+\z/, message: "Cardinal points input must be 'E', 'N', 'W', 'S' only"}
  # validates :compass_point, length: {maximum: 1, too_long: "Only one characher is allowed"}

  def move_rover(instructions_string)
    instructions = instructions_string.split("")
    new_x_coordinate = @x_coordinate
    new_y_coordinate = @y_coordinate
    new_compass_position = []
    position = @compass_point

    instructions.each do |instruction|
      if instruction == "L"
        new_compass_position << turn_left(position)
        position = turn_left(position)
      elsif instruction == "R"
        new_compass_position << turn_right(position)
        position = turn_right(position)
      else
        new_x_coordinate = move_direction_x(new_x_coordinate, position)
        new_y_coordinate = move_direction_y(new_y_coordinate, position)
      end
    end

    [new_x_coordinate, new_y_coordinate, new_compass_position.last]

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
    if position == 'E'
      cardinal_position =  'S'
    elsif position == 'S'
      cardinal_position = 'W'
    elsif position == 'W'
      cardinal_position =  'N'
    else
      cardinal_position =  'E'
    end
    cardinal_position
  end

  def move_direction_x(x_coordinate, position)
    new_x_coordinate = x_coordinate
    if position == 'E'
      new_x_coordinate = new_x_coordinate + 1
    elsif position == 'W'
      new_x_coordinate = new_x_coordinate - 1
    end
    new_x_coordinate
  end

  def move_direction_y(y_coordinate, position)
    new_y_coordinate = y_coordinate
    if position == 'N'
      new_y_coordinate = new_y_coordinate + 1
    elsif position == 'S'
      new_y_coordinate = new_y_coordinate - 1
    end
    new_y_coordinate
  end


end