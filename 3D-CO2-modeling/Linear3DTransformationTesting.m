%% plot a 3D unit cube in the +++ octant of 3d space

%position vectors of vertices

V = [0,0,0;
    1,0,0;
    1,1,0;
    0,1,0;
    0,0,1;
    1,0,1;
    1,1,1;
    0,1,1]

V = V';

%face generation matrix

F =  [1 2 3 4;
     5 6 7 8;
     1 5 6 2;
     2 6 7 3;
     4 8 7 3;
     1 5 8 4];

F = F';

SetUp3DPlot(1);
PlotPolygonFaces(V, F);
title("3D Unit Cube In the +++ Octant");

%% plot 3d translation of cube
%position vectors of vertices

V = [0,0,0;
    1,0,0;
    1,1,0;
    0,1,0;
    0,0,1;
    1,0,1;
    1,1,1;
    0,1,1];

V = V';

%face generation matrix

F =  [1 2 3 4;
     5 6 7 8;
     1 5 6 2;
     2 6 7 3;
     4 8 7 3;
     1 5 8 4];

F = F';

SetUp3DPlot(1);
PlotPolygonFaces(V, F);
title("3D Unit Cube Translated by (x,y,z) = (1,-1,1), Bottom Cube is Original");

W = Translate3D(V, 1, -1, 1);

PlotPolygonFaces(W, F);

%% scaling of a 3D unit cube

%position vectors of vertices

V = [0,0,0;
    1,0,0;
    1,1,0;
    0,1,0;
    0,0,1;
    1,0,1;
    1,1,1;
    0,1,1];

V = V';

%face generation matrix

F =  [1 2 3 4;
     5 6 7 8;
     1 5 6 2;
     2 6 7 3;
     4 8 7 3;
     1 5 8 4];

F = F';

SetUp3DPlot(1);
PlotPolygonFaces(V, F);
title("3D Unit Cube Scaled by (x,y,z) = (2,-1,3), Small Cube is Original");

W = Scale3D(V, 2, -1, 3);

PlotPolygonFaces(W, F);

%% rotation of a 3D unit cube about x axis

%position vectors of vertices

V = [0,0,0;
    1,0,0;
    1,1,0;
    0,1,0;
    0,0,1;
    1,0,1;
    1,1,1;
    0,1,1];

V = V';

%face generation matrix

F =  [1 2 3 4;
     5 6 7 8;
     1 5 6 2;
     2 6 7 3;
     4 8 7 3;
     1 5 8 4];

F = F';

SetUp3DPlot(1);
PlotPolygonFaces(V, F);
title("3D Unit Cube Rotated by pi/3 Radians About x-axis, Flat Sitting Cube is Original");

W = RotateX3D(V, pi/3);

PlotPolygonFaces(W, F);

%% rotation of a 3D unit cube about y axis

%position vectors of vertices

V = [0,0,0;
    1,0,0;
    1,1,0;
    0,1,0;
    0,0,1;
    1,0,1;
    1,1,1;
    0,1,1];

V = V';

%face generation matrix

F =  [1 2 3 4;
     5 6 7 8;
     1 5 6 2;
     2 6 7 3;
     4 8 7 3;
     1 5 8 4];

F = F';

SetUp3DPlot(1);
PlotPolygonFaces(V, F);
title("3D Unit Cube Rotated by pi/3 Radians About y-axis, Flat Sitting Cube is Original");

W = RotateY3D(V, pi/3);

PlotPolygonFaces(W, F);

%% rotation of a 3D unit cube about z axis

%position vectors of vertices

V = [0,0,0;
    1,0,0;
    1,1,0;
    0,1,0;
    0,0,1;
    1,0,1;
    1,1,1;
    0,1,1];

V = V';

%face generation matrix

F =  [1 2 3 4;
     5 6 7 8;
     1 5 6 2;
     2 6 7 3;
     4 8 7 3;
     1 5 8 4];

F = F';

SetUp3DPlot(1);
PlotPolygonFaces(V, F);
title("3D Unit Cube Rotated by 2pi/3 Radians About z-axis, Short Cube is Original");

W = RotateZ3D(V, 2*pi/3);
W = Scale3D(W, 1, 1, 2);

PlotPolygonFaces(W, F);