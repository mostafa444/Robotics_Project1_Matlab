alpha1 = 10 ;beta1 = 20 ;gama1 = 30 ; Bp1 = [1 ; 2 ; 3 ; 1];
alpha2 = 0 ;beta2 = 20 ;gama2 = 0 ; Bp2 = [3 ; 0 ; 1 ; 1];
%a)calculate the homogeneous transformation matrix
Homo_trans_1 = craig_2B_1_rpy2tr(alpha1 , beta1 ,gama1, Bp1);
Homo_trans_2 = craig_2B_1_rpy2tr(alpha2 , beta2 ,gama2, Bp2);
%b)For second input calculate AP
% Ap = AB * Bp
frame= [1 0 0 0; 0 1 0 0 ; 0 0 1 0 ; 0 0 0 1];
Bp = [1 ; 0 ; 1 ; 1];
Ap = Homo_trans_2 * Bp;
x=[0 6 0 3 0 2];
trplot(frame,'frame','B','rgb' ,'axis', x );
hold on
plot3( Ap(1),Ap(2),Ap(3), 'o');




