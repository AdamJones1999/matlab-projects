function B = RotateY3D(A, theta)
    Ry = [cos(theta), 0, sin(theta);
        0,1,0;
        -sin(theta), 0 ,cos(theta)];
    B = Ry * A;
end