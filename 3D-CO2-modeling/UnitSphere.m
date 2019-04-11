function [V Vfaces]=UnitSphere()
res=1/10;
[x,y,z]=meshgrid(-1-res:res:1+res, ...
   -1-res:res:1+res, -1-res:res:1+res);
w=sqrt(x.^2+y.^2+z.^2);
sphere=isosurface(x,y,z,w,1);
V = sphere.vertices';
Vfaces = sphere.faces';