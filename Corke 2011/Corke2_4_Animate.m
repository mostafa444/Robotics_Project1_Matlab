function Corke2_4_Animate(length, width, height)

r = 0; p = 0; y = 0;

maxDim = max([length, width, height]);

while true
    r = r+1;p = p+1;y = y+1;
    Corke_2_4_Draw_Cube(length, width, height, r, p, y, maxDim);
    drawnow;
end

end

