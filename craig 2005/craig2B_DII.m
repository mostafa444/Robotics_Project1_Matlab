%(ii)	ATB_new = ATC * inv (BTC)
ATB_new = ATC * craig_2B_C_Inverse(BTC)
% COmpare to Known ATB
alpha1 = 10; beta1 = 20; gama1 = 30; P1 = [1 ; 2 ; 3 ; 1];
ATB = craig_2B_1_rpy2tr(alpha1 ,beta1, gama1 , P1)


