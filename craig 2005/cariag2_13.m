UTA=[0.866 -0.5 0 11; 0.5 0.866 0 -1; 0 0 1 8.0 ;0 0 0 1];
BTA=[1 0 0 0 ; 0 0.866 -0.5 10 ; 0 5 0.866 -20 ; 0 0 0 1];
CTU=[0.866 -0.5 0 -3 ; 0.433 0.75 -0.5 -3 ; 0.25 0.433 0.866 3 ; 0 0 0 1];
x=[-5 15 -5 12 -21 10];
title('F1= Trans(a=3)')
trplot(UTA,'frame','UTA','rgb' ,'axis', x );
hold on 
trplot(BTA,'frame','BTA','rgb' ,'axis', x );
trplot(CTU,'frame','CTU','rgb' ,'axis', x );
title('Frame Diagram')

