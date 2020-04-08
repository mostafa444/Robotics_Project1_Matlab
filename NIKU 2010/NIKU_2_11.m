Orignal_frame = [1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
X_ROT = [1 0 0 0;0 0.707 -0.707 0;0 0.707 0.707 0 ;0 0 0 1];
Point = [2 ; 3 ; 4 ;1];
Rotated_point= X_ROT * Point;
Rotated_Frame=X_ROT *Orignal_frame;
subplot(1,2,1); 
x=[-1 3 -1 3 -1 5];
trplot(Orignal_frame,'frame','B','rgb' ,'axis', x );
hold on 
plot3( Point(1),Point(2),Point(3), 'o');
title('Original Point')
subplot(1,2,2); 
trplot(Rotated_Frame,'frame','B','rgb' ,'axis', x );
hold on 
plot3( Rotated_point(1),Rotated_point(2),Rotated_point(3), 'o');
title('Rotated Point')



