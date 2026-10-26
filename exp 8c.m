
clc;
clear;
close all;

% ROC Analysis of X(s) = 1/((s+2)(s+4))

figure('Color','w');

% Plot poles
p = [-2 -4];
plot(p, [0 0], 'rx', 'MarkerSize', 10, 'LineWidth', 2);
hold on;

% Draw vertical dashed lines at the poles
line([-2 -2], [-1 1], 'Color', 'b', 'LineStyle', '--');
line([-4 -4], [-1 1], 'Color', 'b', 'LineStyle', '--');

% Graph settings
xlim([-6 0]);
ylim([-1 1]);
grid on;

xlabel('Real(s)');
ylabel('Imag(s)');
title('Poles and Candidate Regions of Convergence');

legend('Poles', 'Pole at -2', 'Pole at -4', ...
    'Location', 'best');

fprintf('Poles are at s = -2 and s = -4.\n');
fprintf('For a right-sided signal, ROC: Re(s) > -2.\n');
fprintf('For a left-sided signal, ROC: Re(s) < -4.\n');
fprintf('For a two-sided signal, ROC: -4 < Re(s) < -2.\n');

hold off;
