function createfigure(X1, Y1, Y2)
%CREATEFIGURE(X1, Y1, Y2)
%  X1:  vector of x data
%  Y1:  vector of y data
%  Y2:  stairs y

%  Auto-generated by MATLAB on 08-Feb-2018 09:19:01

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'DisplayName','sinusoida','LineWidth',6,...
    'Color',[0.929411768913269 0.694117665290833 0.125490203499794]);

% Create stairs
stairs(X1,Y2,'DisplayName','kosinusoida',...
    'MarkerFaceColor',[0 0.498039215803146 0],...
    'MarkerEdgeColor',[0 0 0],...
    'MarkerSize',1,...
    'Marker','diamond',...
    'LineWidth',4,...
    'Color',[0.749019622802734 0 0.749019622802734]);

% Create xlabel
xlabel('t,s');

% Create title
title('Mans pirmais grafiks');

% Create ylabel
ylabel('U,V');

box(axes1,'on');
grid(axes1,'on');
% Create legend
legend(axes1,'show');
