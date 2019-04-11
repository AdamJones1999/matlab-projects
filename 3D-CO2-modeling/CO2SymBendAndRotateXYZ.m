function CO2SymBendAndRotateXYZ()

    %generate array of angles over oscillation time interval
    t = 0:1:360;
    thetarotate = t * pi/180; %{degrees]
    thetabend = 20*sin(2*pi*t/60) * pi/180; %{degrees]
 
    %generate generic unit sphere
    [V, Vfaces] = UnitSphere();
    
    %scale carbon atom size to be bigger than oxygen atoms
    C_0 = Scale3D(V, 1.4, 1.4, 1.4);
    
    %base positions that rotations will move
    %from each frame 
    O1_0 = Translate3D(V, 3, 0, 0);
    O2_0 = Translate3D(V, -3, 0, 0);
    
    for n=1:3
        
    for k = 1:length(t)
        if (n == 1)
            O1 = RotateZ3D(O1_0, thetabend(k));
            O2 = RotateZ3D(O2_0, thetabend(k));
            
            C = RotateX3D(C_0, thetarotate(k));
            O1 = RotateX3D(O1, thetarotate(k));
            O2 = RotateX3D(O2, thetarotate(k));
        elseif (n == 2)
            O1 = RotateZ3D(O1_0, thetabend(k));
            O2 = RotateZ3D(O2_0, thetabend(k));
            
            C = RotateY3D(C_0, thetarotate(k));
            O1 = RotateY3D(O1, thetarotate(k));
            O2 = RotateY3D(O2, thetarotate(k));
        elseif (n == 3)
            O1 = RotateZ3D(O1_0, thetabend(k));
            O2 = RotateZ3D(O2_0, thetabend(k));
            
            C = RotateZ3D(C_0, thetarotate(k));
            O1 = RotateZ3D(O1, thetarotate(k));
            O2 = RotateZ3D(O2, thetarotate(k));
        end
        
        SetUp3DPlot(1);
        title(sprintf("CO2 Symmetric Bending and Rotating 360^{o} about x, y, then z axis at theta = %0.0f", t(k)));
        PlotPolygonFaces(C, Vfaces);
        PlotPolygonFaces(O1, Vfaces);
        PlotPolygonFaces(O2, Vfaces);
    end
    
    end
    
end