function Inverse = craig_2B_C_Inverse(Homo_R )
Inverse (1:3 , 1:3) = transpose (Homo_R(1:3 , 1:3) );
Inverse(4 ,1:3 )=0;
Inverse (4 ,4) = 1;
for i = 1:3
   Inverse(i,4) = -dot (Homo_R(1:3 , 4) ,Homo_R(1:3 , i));
end

end

