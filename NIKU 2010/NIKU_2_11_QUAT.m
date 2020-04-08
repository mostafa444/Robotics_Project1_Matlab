P = [2 ; 3 ; 4 ];
theta = 45/2;
q = Quaternion([cos(theta*pi/180 ) sin(theta*pi/180) 0 0])
P_Rotated= q * P
x=[-1 3 -1 3 -1 5];
q.plot('frame', 'q' , 'rgb' ,'axis', x)
hold on 
%blue point is the original point
plot3( P(1),P(2),P(3), 'o' , 'color', 'b')
%red point is the rotated point
plot3( P_Rotated(1),P_Rotated(2),P_Rotated(3), 'o' ,'color', 'r')




