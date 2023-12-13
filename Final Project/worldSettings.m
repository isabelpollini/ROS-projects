%%% ADD Objects

% connect to GAZEBO
rosinit 
gazebo = ExampleHelperGazeboCommunicator; 

% add objects in GAZEBO
ball1 = ExampleHelperGazeboModel("Ball");
sphereLink1 = addLink(ball1,"sphere",0.1,"color",[255 42 0 1]); %type, rad, color
spawnModel(gazebo,ball1,[2 0 0.1])

ball2 = ExampleHelperGazeboModel("Ball");
sphereLink2 = addLink(ball2,"sphere",0.1,"color",[0 1 0 1]); %type, rad, color
spawnModel(gazebo,ball2,[4 2 0.1])
 
ball3 = ExampleHelperGazeboModel("Ball");
sphereLink3 = addLink(ball3,"sphere",0.1,"color",[255 42 0 1]); %type, rad, color
spawnModel(gazebo,ball3,[4 6 0.1])

ball4 = ExampleHelperGazeboModel("Ball");
sphereLink4 = addLink(ball4,"sphere",0.1,"color",[0 1 0 1]); %type, rad, color
spawnModel(gazebo,ball4,[6 8 0.1])

ball5 = ExampleHelperGazeboModel("Ball");
sphereLink5 = addLink(ball4,"sphere",0.1,"color",[255 42 0 1]); %type, rad, color
spawnModel(gazebo,ball4,[8 6 0.1])

ball6 = ExampleHelperGazeboModel("Ball");
sphereLink6 = addLink(ball6,"sphere",0.1,"color",[0 1 0 1]); %type, rad, color
spawnModel(gazebo,ball6,[8 2 0.1])


