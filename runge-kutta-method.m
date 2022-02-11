function ydot = fpend(y)
theta1, theta2, w1,w2 = y(1), y(2), y(3), y(4);
w1prime = ((-3 * sin(theta1)) - (sin(theta1 - 2*theta2)) - ((2*sin(theta1 - theta2))* ...
	(w2^2 + (w1^2*cos(theta1-theta2)))))/(3 - cos(2*theta1 - 2*theta2));
w2prime = ((2 * sin(theta1 - theta2)) * (2*w1^2 + 2*cos(theta1) + w2^2*cos(theta1 - theta2)))/...
	(3 - cos(2*theta1 - 2*theta2)); 
ydot = [w1,w2, w1prime, w2prime] 
end


y = [1,1,0,0];
yvals = [y; zeros(100/0.05,4)]; 
for i = 1 : 100/0.05
	k1 = 0.05*fpend(y);
	k2 = 0.05*fpend(y + (k1/2));
	k3 = 0.05*fpend(y + (k2/2));
	k4 = 0.05*fpend(y + k3);
	y = y + (1/6 * (k1 + 2*k2 + 2*k3 + k4)); 
	yvals(i+1,:) = y;
end
plot(0: 0.05:100 , yvals(:,2)) 
grid on;

y = [pi,0,0,10^-10];
	yvals = [y; zeros(100/0.05,4)]; 
	for i = 1 : 100/0.05
	k1 = 0.05*fpend(y);
	k2 = 0.05*fpend(y + (k1/2));
	k3 = 0.05*fpend(y + (k2/2));
	k4 = 0.05*fpend(y + k3);
	y = y + (1/6 * (k1 + 2*k2 + 2*k3 + k4)); 
	yvals(i+1,:) = y;
end
plot(0: 0.05:100 , yvals(:,2)) 
grid on;



y = [2,2,0,0];
yvals = [y; zeros(100/0.05,4)]; 
for i = 1 : 100/0.05
	k1 = 0.05*fpend(y);
	k2 = 0.05*fpend(y + (k1/2));
	k3 = 0.05*fpend(y + (k2/2));
	k4 = 0.05*fpend(y + k3);
	y = y + (1/6 * (k1 + 2*k2 + 2*k3 + k4)); 
	yvals(i+1,:) = y;
end
plot(0: 0.05:100 , yvals(:,2)) 
grid on;


y = [2,2 + 10^-3 ,0,0];
yvals = [y; zeros(100/0.05,4)]; 
for i = 1 : 100/0.05
	k1 = 0.05*fpend(y);
	k2 = 0.05*fpend(y + (k1/2)); 
	k3 = 0.05*fpend(y + (k2/2)); 
	k4 = 0.05*fpend(y + k3);
	y = y + (1/6 * (k1 + 2*k2 + 2*k3 + k4));
	yvals(i+1,:) = y;
end
plot(0: 0.05:100 , yvals(:,2)) 
grid on;
