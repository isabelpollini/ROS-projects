

rosinit % IPadress if VMachine
gazebo = ExampleHelperGazeboCommunicator; % create communication object

% add objects in GAZEBO

ball1 = ExampleHelperGazeboModel("Ball");
sphereLink = addLink(ball1,"sphere",0.1,"color",[200 48 48 1]); %type, rad, color
spawnModel(gazebo,ball1,[0 6 0.1]) % Red c83030
%
ball2 = ExampleHelperGazeboModel("Ball");
sphereLink = addLink(ball2,"sphere",0.2,"color",[200 0 103 1]); %type, rad, color
spawnModel(gazebo,ball2,[6 0 0.2]) % Purple c80062

%
% ball3 = ExampleHelperGazeboModel("Ball");
% sphereLink = addLink(ball3,"sphere",0.1,"color",[200 48 48 1]); %type, rad, color
% spawnModel(gazebo,ball3,[6 0 0.1])