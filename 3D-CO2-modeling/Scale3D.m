function B = Scale3D(A, xscale, yscale, zscale)
    B = zeros(size(A,1),size(A,2));
    for i=1:size(B,2)
        B(1,i) = A(1,i) * xscale;
        B(2,i) = A(2,i) * yscale;
        B(3,i) = A(3,i) * zscale;
    end
end