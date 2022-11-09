Project Title
===================

TOY ROBOT


**Prerequisites**

Ruby version used is '3.1.2'.

#### How to Run


Run bundle install

``````
bundle install
``````
Run the main.rb file in project

````
ruby main.rb
````
Follow the instructions in the terminal.

Type in the commands one by one  in terminal.

###### Example
    PLACE 1,2,EAST
    MOVE
    MOVE
    LEFT
    MOVE
    REPORT

#### Testing

Rspec is used for testing.

Run rspec for testing

````
rspec
````

#### Design Explanation
There are 8 classes for the application
1. Robot :- Robot class holds the x,y coordinates and face of robot.
2. Table :- Table class holds the dimension of a table. It also has a method to check if a point is on the table. 
3. Command :-  The class handles the list of commands accepted. It has a factory method to return the right object for the command came in as input
4. CustomError :- The class is inherited from StandaError class. It is used to raise custom error where needed.
6. Face :- Face class holds the faces for robot as name and also helps to set next face from the list.
7. CliOutputter: This class is used to print initial instructions and report output of a robot to cli 
8. CliInputter: This class is used to get the input command from cli
8. ParseInput:- The class is used to parse an input. 