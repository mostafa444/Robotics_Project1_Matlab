x_ROT = [1 0 0 0;0 .707 -.707 0;0 .707 .707 0;0 0 0 1];
z_ROT = [.5 -.866 0 0;.866 .5 0 0;0 0 1 0;0 0 0 1];
n_Trans = [1 0 0 5 ; 0 1 0 0 ;0 0 1 0 ; 0 0 0 1];
o_ROT = [.5 0 .866 0;0 1 0 0;-.866 0 .5 0;0 0 0 1];
a_Trans = [1 0 0 0 ; 0 1 0 0 ;0 0 1 3 ; 0 0 0 1];
F1=a_Trans;
F2=o_ROT * F1;
F3=n_Trans * F2;
F4=z_ROT * F3;
F5=x_ROT * F4
subplot(2,3,3); 
trplot(F3,'frame','B','rgb');
title('F3= Trans(n=5) * F2')
subplot(2,3,4); 
trplot(F4,'frame','B','rgb');
title('F4= ROT(Z=60) * F3')
subplot(2,3,5); 
trplot(F5,'frame','B','rgb');
title('F5= ROT(x=45) * F5')

RPY_ANG = tr2rpy (F5);
RPY_ANG = RPY_ANG*180/pi;




















