ROT_n = [1 0 0 0;0 0 -1 0;0 1 0 0;0 0 0 1];
ROT_a = [0 -1 0 0;1 0 0 0;0 0 1 0;0 0 0 1];
ROT_y= [0 0 1 0;0 1 0 0;-1 0 0 0;0 0 0 1];
Trans = [1 0 0 2 ; 0 1 0 4 ;0 0 1 0 ; 0 0 0 1];
B = [0 1 0 1;1 0 0 1;0 0 -1 1;0 0 0 1];
B1 = B * ROT_a;
B2 = B1* ROT_n;
B3 = ROT_y * B2;
B4 = Trans * B3;
subplot(2,2,1); 
trplot(B1,'frame','B1','rgb');
title('B * ROT(a=90)')
subplot(2,2,2); 
trplot(B2,'frame','B2','rgb');
title('B1 * ROT(n=90)')
subplot(2,2,3); 
trplot(B3,'frame','B3','rgb');
title('B2 * ROT(Y=90)')
subplot(2,2,4); 
trplot(B4,'frame','B4','rgb');
title('B4 * Trans((X=2, Y=4))')











