alpha1 = 10; beta1 = 20; gama1 = 30; P1 = [1 ; 2 ; 3 ; 1];
ATB = craig_2B_1_rpy2tr(alpha1 ,beta1, gama1 , P1);
alpha2 = 0; beta2 = 20; gama2 = 0; P2 = [3 ; 0 ; 1 ; 1];
BTC = craig_2B_1_rpy2tr(alpha2 ,beta2, gama2 , P2);
ATC = ATB * BTC;
% CTA = inverse (ATC)
CTA = craig_2B_C_Inverse(ATC );
x=[-3 5 -4 4 -5 3];
trplot(ATC,'frame','ATC','rgb' ,'axis', x );
hold on 
trplot(CTA,'frame','CTA','rgb' ,'axis', x );






















%Calculated_Inverse = craig_2B_C(ApB_rot );
%INV = inv (ApB_rot);
%Test1 = Calculated_Inverse * ApB_rot;
%test2 =  ApB_rot * INV;





