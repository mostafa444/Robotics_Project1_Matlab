x_ROT = [1 0 0 0;0 .707 -.707 0;0 .707 .707 0;0 0 0 1];
z_ROT = [.866 -.5 0 0;0.5 .866 0 0;0 0 1 0;0 0 0 1];
B1 = z_ROT;
B2 = B1 * x_ROT;
subplot(1,2,1);
trplot(B1,'frame','B','rgb');
title('B1= ROT(Z=30))')
subplot(1,2,2);
trplot(B2,'frame','B','rgb');
title('B2= B1 * ROT(x=45)')
 
