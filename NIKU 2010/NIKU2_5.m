B = [0 1 0 2 ; 1 0 0 4 ; 0 0 -1 6 ; 0 0 0 1];
Trans = [1 0 0 5 ; 0 1 0 2 ; 0 0 1 6 ; 0 0 0 1];
B_Translated = Trans * B ;
subplot(1,2,1); 
trplot(B,'frame','B','rgb');
title('Original Frame')
subplot(1,2,2); 
trplot(B_Translated,'frame','B','rgb');
title('Translated Frame')

