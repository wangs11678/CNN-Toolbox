function createfigure(Y1)
%CREATEFIGURE(Y1)
%  Y1:  y 数据的矢量

%  由 MATLAB 于 01-Jul-2016 08:52:52 自动生成

% 创建 figure
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

% 创建 axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'all');

% 创建 plot
plot(Y1);

