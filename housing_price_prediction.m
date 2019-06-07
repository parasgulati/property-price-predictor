% HOUSING PRICE PREDICTION BASED ON (NO. OF ROOMS , NO. OF FLOORS , AREA)

% features in x (1, no.of rooms/5 , no. of floors/3 , area/600 ,(no. of rooms^2)/25)
% divided due to feature scaling
% price (in lakhs)in y (column vector)/10000000
% Parameters Q 
% learning rate L(alpha)
% The prediction X(1,no. of rooms/5 , no. of floors/3 ,area/600 ,(no. of rooms^2)/25)
% m= no. of training set
 
 x=[1 1 1 1 1;0.4 0.8 0.6 0.4 1;0.33 0.66 0.66 0.33 1;0.66 0.83 0.75 0.58 1;0.16 0.64 0.36 0.16 1];   
 y=[0.1;0.8;0.3;0.15;1];
 Q=[1;2;2.3;2.8;3];
 L=0.07;
 m=5;
X=[1;1;0.66;0.58;1];
 
 for i=[1:50000],
	D=((Q'*x)'-y)';
	M=(D*x)';
	Q=Q-(L/m)*M;
end
(Q')*(X)*10000000

