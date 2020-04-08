P = [5 ; 3 ; 4];
theta = 90/2 ; 
q_x = Quaternion([cos(theta*pi/180 ) sin(theta*pi/180) 0 0]);
Trans_point = [5 ; 3 ; 6];
q_y = Quaternion([cos(theta*pi/180 ) 0 0 sin(theta*pi/180)]);
p1= q_x * P;
p2= p1 + Trans_point;
F2= q_x + Quaternion([0 5 3 6]);
p3= q_y * p2;
F3= q_y * F2;
x=[-1 6 -5 1 -1 4];
subplot(1,3,1); q_x.plot('frame','F1','rgb' ,'axis', x );
hold on 
plot3( p1(1),p1(2),p1(3), 'o');title('X_ROT')

x1=[4 10 -2 4 5 10];
subplot(1,3,2); F2.plot('frame','F2','rgb' ,'axis', x1 );
hold on 
plot3( p2(1),p2(2),p2(3), 'o');title('Trans')

x2=[-1 10 -2 11 2 10];
subplot(1,3,3); 
F3.plot('frame','F3','rgb' ,'axis', x2 );
hold on 
plot3( p3(1),p3(2),p3(3), 'o');
title('Z_ROT')

