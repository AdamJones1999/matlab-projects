function CO2RotateEachAxisOneAtATime()

    %generate array of angles over oscillation time interval
    t = 0:1:360;
    theta = t * pi/180; %{degrees]
 
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
            C = RotateX3D(C_0, theta(k));
            O1 = RotateX3D(O1_0, theta(k));
            O2 = RotateX3D(O2_0, theta(k));
        elseif (n == 2)
            C = RotateY3D(C_0, theta(k));
            O1 = RotateY3D(O1_0, theta(k));
            O2 = RotateY3D(O2_0, theta(k));
        elseif (n == 3)
            C = RotateZ3D(C_0, theta(k));
            O1 = RotateZ3D(O1_0, theta(k));
            O2 = RotateZ3D(O2_0, theta(k));
        end
        
        SetUp3DPlot(1);
        title(sprintf("Rotating CO2 Molecule 360^{o} in x, y, then z axis at theta = %0.0f", t(k)));
        PlotPolygonFaces(C, Vfaces);
        PlotPolygonFaces(O1, Vfaces);
        PlotPolygonFaces(O2, Vfaces);
    end
    
    end
    
end