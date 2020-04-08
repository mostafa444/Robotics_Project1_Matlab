alpha1 = 10; beta1 = 20; gama1 = 30; P1 = [1 ; 2 ; 3 ; 1];
ATB = craig_2B_1_rpy2tr(alpha1 ,beta1, gama1 , P1)
ATB_Corke_toll= rpy2tr (30 *pi/180 , 20*pi/180 , 10*pi/180)
alpha2 = 0; beta2 = 20; gama2 = 0; P2 = [3 ; 0 ; 1 ; 1];
BTC = craig_2B_1_rpy2tr(alpha2 ,beta2, gama2 , P2)
BTC_Corke_toll= rpy2tr (0*pi/180 , 20*pi/180 , 0*pi/180 ) 
