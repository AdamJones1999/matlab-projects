function B = RotateZ3D(A, theta)
    Rz = [cos(theta), -sin(theta), 0;
        sin(theta), cos(theta), 0;
        0,0,1];
    B = Rz * A;
end