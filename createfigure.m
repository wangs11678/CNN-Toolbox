function createfigure(Y1)
%CREATEFIGURE(Y1)
%  Y1:  y ���ݵ�ʸ��

%  �� MATLAB �� 01-Jul-2016 08:52:52 �Զ�����

% ���� figure
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

% ���� axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'all');

% ���� plot
plot(Y1);

