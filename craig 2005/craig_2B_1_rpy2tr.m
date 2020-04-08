
function ROT = craig_2B_1_rpy2tr(alpha ,beta, gama , p )
ROT_Z = [cos(alpha*pi/180) -sin(alpha*pi/180) 0 0 ;
    sin(alpha*pi/180) cos(alpha*pi/180) 0 0 ; 0 0 1 0 ; 0 0 0 1];

ROT_Y = [cos(beta*pi/180) 0 sin(beta*pi/180) 0 ; 0 1 0 0 ; 
    -sin(beta*pi/180) 0 cos(beta*pi/180) 0 ; 0 0 0 1 ];

ROT_X = [1 0 0 0 ; 0 cos(gama*pi/180) -sin(gama*pi/180) 0 ;
    0 sin(gama*pi/180) cos(gama*pi/180) 0; 0 0 0 1];

trans = [1 0 0 p(1); 0 1 0 p(2) ; 0 0 1 p(3) ; 0 0 0 1];
ROT =trans * ROT_Z * ROT_Y * ROT_X;
end
