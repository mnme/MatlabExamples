a=-2; b=2; m=11; %x-Intervall und Schrittweite
c=-2; d=2; n=11; %y-Intervall und Schrittweite

xv=linspace(a,b,m);      % Vektor der x-Werte
yv=linspace(c,d,n);      % Vektor der y-Werte
[x,y]=meshgrid(xv,yv);   % Zeichenpunkte in x-y-Ebene

u=x.*exp(-x.^2-y.^2);   % x.^2.*y;      % zu zeichnende Funktion

subplot(1,2,1)
surf(x,y,u)     % Fl�che im Raum
axis square     % gleiche Skalierung auf x- und y-Achse

subplot(1,2,2)
contour(x,y,u)  % Niveaulinien
axis square     % gleiche Skalierung auf x- und y-Achse

%% Mit den ezxxx Befehlen
f= @(x,y) (x.*exp(-x.^2-y.^2));

figure;
ezsurf(f);
figure
ezsurf('x*exp(-x^2-y^2)');