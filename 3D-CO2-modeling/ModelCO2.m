function ModelCO2()
    %generate generic unit sphere
    [V, Vfaces] = UnitSphere();
    
    %scale carbon atom size to be bigger than oxygen atoms
    C = Scale3D(V, 1.4, 1.4, 1.4);
    SetUp3DPlot(1);
    PlotPolygonFaces(C, Vfaces);
    %set oxygen atoms centers 3 U away from C centre along x axis
    O1 = Translate3D(V, 3, 0, 0);
    O2 = Translate3D(V, -3, 0, 0);
    %plot
    PlotPolygonFaces(O1, Vfaces);
    PlotPolygonFaces(O2, Vfaces);
    title("CO2 Molecule");
end
