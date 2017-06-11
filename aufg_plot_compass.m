% Komplexe Zahlen, Betrag und Argument berechnen
% Plot mit plot und compass
clear all; close all
% Zahlen berechnen
z1 = (2-j)/(3j + (1- j)^2);
z2 = (1-j)^2/(1+exp(j*pi/2));
z3 = z1 - (-11+4j)/((1+2j)^4)*(exp(0.5*j))/(3j+exp(-0.4*j));
% Betrag und Argument ausgeben
disp('Betrag z1');
abs(z1)
disp('Argument z1');
angle(z1)

disp('Betrag z2');
abs(z2)
disp('Argument z2');
angle(z2)

disp('Betrag z3');
abs(z3)
disp('Argument z3');
angle(z3)

% Plots
E = [z1 z2 z3];
for k=1:3
  hold all
  % Realteil gegen Imaginärteil plotten
  plot(real(E(k)),imag(E(k)),'o','MarkerSize',10,'MarkerFaceColor','auto')
end
axis equal;
legend('z1', 'z2', 'z3','Location','northeast');
hold off; 
figure;
compass(E);