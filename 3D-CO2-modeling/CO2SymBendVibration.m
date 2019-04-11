function CO2SymBendVibration()

    %generate array of angles over oscillation time interval
    t = 0:1:360;
    theta = 20*sin(2*pi*t/60) * pi/180; %{degrees]
 
    %generate generic unit sphere
    [V, Vfaces] = UnitSphere();
    
    %scale carbon atom size to be bigger than oxygen atoms
    C = Scale3D(V, 1.4, 1.4, 1.4);
    
    %base positions of both oxygen molecules that translations will move
    %from each frame
    O1_0 = Translate3D(V, 3, 0, 0);
    O2_0 = Translate3D(V, -3, 0, 0);
    
    for k = 1:length(t)
        %vibration about a perpendicular axis (chose z)
        O1 = RotateZ3D(O1_0, theta(k));
        O2 = RotateZ3D(O2_0, theta(k));
        
        SetUp3DPlot(1);
        title(sprintf("Symmetric Bending Vibration of a CO2 Molecule at t = %0.0f", t(k)));
        PlotPolygonFaces(C, Vfaces);
        PlotPolygonFaces(O1, Vfaces);
        PlotPolygonFaces(O2, Vfaces);
    end
    
end