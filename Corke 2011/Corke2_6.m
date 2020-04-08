fig= [1 0 0 0 ; 0 1 0 0 ; 0 0 1 0 ; 0 0 0 1]; 
rot_z_n= [0 1 0 0 ; -1 0 0 0 ; 0 0 1 0 ; 0 0 0 1 ];
rot_x = [1 0 0 0 ;0 0 -1 0 ;0 1 0 0 ; 0 0 0 1]; 
rot_y = [0 0 1 0 ; 0 1 0 0 ;-1 0 0 0 ; 0 0 0 1];
fig1 = rot_z_n * fig; fig2 = fig1 * rot_x; fig3 = fig2 * rot_y ;
fig5 = fig1 * rot_y; fig6 = fig5 * rot_x;

subplot(2,3,1); trplot(fig1,'frame','F1','rgb');title('Frame 1')
subplot(2,3,2); trplot(fig2,'frame','F2','rgb');title('Frame 2')
subplot(2,3,3); trplot(fig3,'frame','F3','rgb');title('Frame 3')
subplot(2,3,4); trplot(fig1,'frame','F4','rgb');title('Frame 4')
subplot(2,3,5); trplot(fig5,'frame','F5','rgb');title('Frame 5')
subplot(2,3,6); trplot(fig6,'frame','F6','rgb');title('Frame 6')




