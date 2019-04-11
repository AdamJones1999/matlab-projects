function B = Translate3D(A, xdist, ydist, zdist)
    B = zeros(size(A,1), size(A,2));
    for i=1:size(B,2)
        B(1,i) = A(1,i) + xdist;
        B(2,i) = A(2,i) + ydist;
        B(3,i) = A(3,i) + zdist;
    end
end