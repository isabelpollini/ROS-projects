
tbot = turtlebot('localhost');
load('speedMatrix.mat')
n           = length(speedMatrix);

tbot.Velocity.TopicName = '/cmd_vel';
desiredRate = 30;
rate = rateControl(desiredRate);
reset(rate)
for ii = 1:n
    setVelocity(tbot,speedMatrix(ii,1),speedMatrix(ii,2))
    fprintf(['lin=',num2str(speedMatrix(ii,1)),'\n'])
    fprintf(['ang=',num2str(speedMatrix(ii,2)),'\n'])
    fprintf(['i=',num2str(ii),'\n'])
    waitfor(rate);
end
