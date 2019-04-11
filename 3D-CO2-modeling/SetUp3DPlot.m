function SetUp3DPlot( fignum )

figure(fignum)
cla;
axis off;
grid on
daspect([1 1 1])
light('position',[10,10,10])
set(gca,'CameraPosition',[25 25 5])
set(gca,'projection','perspective')
set(gca,'CameraViewAngle',12)
set(gca,'CameraTarget',[0 0 0]);
set(gcf,'color', [.6,.8,.8])
set(gca,'box','on');


end