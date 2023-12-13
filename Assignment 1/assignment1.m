clc
clear
close all

% Read messages from bag
selBag  = rosbag('ex_A1.bag');
scanBag = select(selBag,'Topic','/scan');
msgScan = readMessages(scanBag,'DataFormat','struct');
odomBag = select(selBag,'Topic','/odom');
msgOdom = readMessages(odomBag,'DataFormat','struct');

% Defining vector
scanMins    = zeros(length(msgScan),1);
velLinX     = zeros(length(msgOdom),1);
velAng      = zeros(length(msgOdom),1);

% Time vector definition
odomTime    = odomBag.MessageList.Time;
scanTime    = scanBag.MessageList.Time;

% Getting the required information
for ii = 1:length(msgScan)
    scan_it         = msgScan{ii,1};
    scan_xy         = rosReadCartesian(scan_it);
    x               = scan_xy(:,1);
    y               = scan_xy(:,2);
    scanMins(ii,1)  = min(sqrt(x.^2+y.^2));
end

for ii = 1:length(msgOdom)
    velLinX(ii,1)   = msgOdom{ii,1}.Twist.Twist.Linear.X;
    velAng(ii,1)    = msgOdom{ii,1}.Twist.Twist.Angular.Z;
end

% Plots
figure
plot(odomTime,velLinX)
hold on
grid on
title('Linear Velocity')
xlabel('Time [s]')
ylabel('Velocity [m/s]')

figure
plot(odomTime,velAng)
hold on
grid on
title('Angular Velocity')
xlabel('Time [s]')
ylabel('Velocity [rad/s]')

figure
plot(scanTime,scanMins)
hold on
grid on
title('Minimum distance from obstacles')
xlabel('Time [s]')
ylabel('Distance [m]')

