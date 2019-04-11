function CO2SymStretchVibration()

    %generate array of positions over oscillation time interval
    t = 0:1:360;
    x = 0.5*sin(2*pi*t/60);
 
    %generate generic unit sphere
    [V, Vfaces] = UnitSphere();
    
    %scale carbon atom size to be bigger than oxygen atoms
    C = Scale3D(V, 1.4, 1.4, 1.4);
    SetUp3DPlot(1);
    
    %base positions of both oxygen molecules that translations will move
    %from each frame
    O1_0 = Translate3D(V, 3, 0, 0);
    O2_0 = Translate3D(V, -3, 0, 0);
    
    for k = 1:length(t)
        %add on the displacements of the sinusoidal oscillation each frame
        %(mirrored so the second displacement is negated)
        O1 = Translate3D(O1_0, x(k), 0, 0);
        O2 = Translate3D(O2_0, -x(k), 0, 0);
        
        SetUp3DPlot(1);
        title(sprintf("Symmetric Stretch Vibration of a CO2 Molecule at t = %0.0f", t(k)));
        PlotPolygonFaces(C, Vfaces);
        PlotPolygonFaces(O1, Vfaces);
        PlotPolygonFaces(O2, Vfaces);
    end
    
end