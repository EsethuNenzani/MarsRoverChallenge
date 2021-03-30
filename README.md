# MarsRoverChallenge

## This is a mars rover challange for Platform45

### To complete test this project, please follow the steps below.

### 1. After downloading the repo, please run bundle install
### 2. Run 'rails c' in your console
### 3. In your console, type in the following steps to test
        a. require 'plateau'
        b. require 'rover'
        c. rover1 = Rover(5,5)  #for size of the plateu [5,5]
        d. rover1.x_coordinate = 1 
        e. rover1.y_coordinate = 2
        g. rover1.compass_point = 'N'
        h. rover1.move_rover('LMLMLMLMM')