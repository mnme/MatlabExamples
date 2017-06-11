function Dreieck(A,B,C)
%Die Seitenhalbierenden eines Dreiecks ABC bilden wiederum ein Dreieck

%interne Hilfsfunktion
    function ZeichneBunteLinie(A,B,Farbe)
        plot([A(1) B(1)],[A(2) B(2)],Farbe)
    end

%Beginn Hauptfunktion
close all
subplot(1,2,1)
hold on

%Dreieck zeichnen
ZeichneBunteLinie(A,B,'b')
ZeichneBunteLinie(B,C,'b')
ZeichneBunteLinie(A,C,'b')
%oder:
%plot([A(1) B(1) C(1) A(1)],[A(1) B(2) C(2) A(2)],'b')

%Seitenmittelpunkte berechnen
MA = 0.5*(B+C);
MB = 0.5*(A+C);
MC = 0.5*(A+B);

%Seitenhalbierende zeichnen
ZeichneBunteLinie(A,MA,'r')
ZeichneBunteLinie(B,MB,'r')
ZeichneBunteLinie(C,MC,'r')
%oder:
%plot([MA(1) A(1)],[MA(2) A(2)],'r')
%plot([MB(1) B(1)],[MB(2) B(2)],'r')
%plot([MC(1) C(1)],[MC(2) C(2)],'r')

subplot(1,2,2)
hold on

% Vektoren der Seitenhalbierenden berechnen
mA = MA - A;
mB = MB - B;
mC = MC - C;

%neues Dreieck zeichnen
ZeichneBunteLinie([0 0],mA,'r')
ZeichneBunteLinie(mA,mA+mB,'r')
ZeichneBunteLinie(mA+mB,mA+mB+mC,'r')
end

