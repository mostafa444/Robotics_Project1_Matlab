ROTX_180 = [1 0 0 0 ; 0 -1 0 0 ; 0 0 -1 0 ; 0 0 0 1];
ROTZ_37 = [0.799 -0.6 0 0 ; 0.6 0.799 0 0 ; 0 0 1 0 ; 0 0 0 1];
trans = [1 0 0 -3 ; 0 1 0 4 ; 0 0 1 2 ; 0 0 0 1 ];
F1 = ROTX_180;
F2 = ROTZ_37 * F1;
Final = trans * F2;
final2 = inv(Final);
x=[-4 2 -1 5 -2 3];
trplot(F1,'frame','T1','color', 'b','axis', x);
title('F1 = ROTX180')
hold on
trplot(F2,'frame','T2','color', 'g','axis', x);
title('F2 = ROTZ37 * F1')
trplot(Final,'frame','T3','color', 'r','axis', x);
title('Final')


