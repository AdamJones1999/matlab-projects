%"edgecolor" accepts name value pairs, insert a colour param (ex: 'k') to
%see edges, not recommended for 'smooth' shapes
function PlotPolygonFaces( V, F )
patch('Vertices',V','Faces',F','Edgecolor','none','Facecolor',[0 1 1] )