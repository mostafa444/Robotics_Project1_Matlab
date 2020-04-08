X_ROT = [1 0 0 0;0 0 -1 0;0 1 0 0;0 0 0 1];
trans = [1 0 0 5;0 1 0 3;0 0 1 6;0 0 0 1];
Z_ROT = [0 -1 0 0;1 0 0 0;0 0 1 0;0 0 0 1];
B = [1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
P = [5 ; 3 ; 4 ; 1];
B1 = X_ROT* B;
P1 = X_ROT*P;
B2 = trans*B1;
P2 = trans*P1;
B3 = Z_ROT*B2;
P3 = Z_ROT*P2;
x=[-4 2 4 11 5 10];
trplot(B3,'frame','B','rgb' ,'axis', x );
hold on 
plot3( P3(1),P3(2),P3(3), 'o');
 








%X_trn= [1 0 0 5;0 1 0 3;0 0 1 6;0 0 0 1];
%B2 = X_trn* B1;







