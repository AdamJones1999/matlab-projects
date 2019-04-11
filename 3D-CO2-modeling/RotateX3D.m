function B = RotateX3D(A, theta)
    Rx = [1,0,0;
        0, cos(theta), -sin(theta);
        0, sin(theta), cos(theta)];
    B = Rx * A;
end

