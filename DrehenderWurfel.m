
clc
clear all

E1 = [1;0;2];
E2 = [2;0;2];
E3 = [2;0;3];
E4 = [1;0;3];
E5 = [1;1;2];
E6 = [2;1;2];
E7 = [2;1;3];
E8 = [1;1;3];


clf;
% Kanten Urbildw?rfel zeichnen
% Frontseite
plot3([E1(1) E2(1)],[E1(2) E2(2)],[E1(3) E2(3)],'g');
hold on;
plot3([E2(1) E3(1)],[E2(2) E3(2)],[E2(3) E3(3)],'g');
plot3([E3(1) E4(1)],[E3(2) E4(2)],[E3(3) E4(3)],'g');
plot3([E4(1) E1(1)],[E4(2) E1(2)],[E4(3) E1(3)],'g');
%R?ckseite
plot3([E5(1) E6(1)],[E5(2) E6(2)],[E5(3) E6(3)],'g');
plot3([E6(1) E7(1)],[E6(2) E7(2)],[E6(3) E7(3)],'g');
plot3([E7(1) E8(1)],[E7(2) E8(2)],[E7(3) E8(3)],'g');
plot3([E8(1) E5(1)],[E8(2) E5(2)],[E8(3) E5(3)],'g');
% Kanten nach hinten
plot3([E5(1) E1(1)],[E5(2) E1(2)],[E5(3) E1(3)],'g');
plot3([E2(1) E6(1)],[E2(2) E6(2)],[E2(3) E6(3)],'g');
plot3([E3(1) E7(1)],[E3(2) E7(2)],[E3(3) E7(3)],'g');
plot3([E4(1) E8(1)],[E4(2) E8(2)],[E4(3) E8(3)],'g');

s = 'y';


ylim([-4 4]);
xlim([-4 4]);
zlim([-4 4]);
grid on
axis manual


while 1

    s = 's';
    m = 'm';
    prompt = 'Gerade/Achse? (g/a)';   
    m = input(prompt, 's')
    if(m=='a')
            prompt = 'Welche Achse?';
            s = input(prompt, 's')
    end
    
    if(m=='g')
        s = 's';
        prompt = 'Welche Gerade?';
        g = input(prompt);
        g = g';
        g = g/norm(g);
        plot(g)
        f1 = cross(g,[1;5;7])/norm(cross(g,[1;5;7]))
        f2 = cross(g,f1)
        Z = [f1,f2,g]
        
        ylim([-4 4]);
        xlim([-4 4]);
        zlim([-4 4]);
    end
    
    prompt = 'Wie viele Grad?';
    angle = input(prompt)
   
    for a = 0:((2*pi)/50):deg2rad(angle)

        alp = (2*pi)/50;
        if(m =='g')
            A = Z*[cos(alp) -sin(alp) 0; sin(alp) cos(alp) 0; 0 0 1]*inv(Z);
        end
        if(s == 'z')
            A = [cos(alp) -sin(alp) 0; sin(alp) cos(alp) 0; 0 0 1];
        end
        if(s == 'y')
            A = [cos(alp) 0 -sin(alp); 0 1 0; sin(alp) 0 cos(alp)];
        end
        if(s == 'x')
            A = [1 0 0; 0 cos(alp) -sin(alp); 0 sin(alp) cos(alp)];
        end
        
        E1 = A*E1;
        E2 = A*E2;
        E3 = A*E3;
        E4 = A*E4;
        E5 = A*E5;
        E6 = A*E6;
        E7 = A*E7;
        E8 = A*E8;

        % Kanten Urbildw?rfel zeichnen
        % Frontseite
        plot3([E1(1) E2(1)],[E1(2) E2(2)],[E1(3) E2(3)],'g');
        hold on;
        plot3([E2(1) E3(1)],[E2(2) E3(2)],[E2(3) E3(3)],'g');
        plot3([E3(1) E4(1)],[E3(2) E4(2)],[E3(3) E4(3)],'g');
        plot3([E4(1) E1(1)],[E4(2) E1(2)],[E4(3) E1(3)],'g');
        %R?ckseite
        plot3([E5(1) E6(1)],[E5(2) E6(2)],[E5(3) E6(3)],'g');
        plot3([E6(1) E7(1)],[E6(2) E7(2)],[E6(3) E7(3)],'g');
        plot3([E7(1) E8(1)],[E7(2) E8(2)],[E7(3) E8(3)],'g');
        plot3([E8(1) E5(1)],[E8(2) E5(2)],[E8(3) E5(3)],'g');
        % Kanten nach hinten
        plot3([E5(1) E1(1)],[E5(2) E1(2)],[E5(3) E1(3)],'g');
        plot3([E2(1) E6(1)],[E2(2) E6(2)],[E2(3) E6(3)],'g');
        plot3([E3(1) E7(1)],[E3(2) E7(2)],[E3(3) E7(3)],'g');
        plot3([E4(1) E8(1)],[E4(2) E8(2)],[E4(3) E8(3)],'g');
        
        if(m =='g')
            plot(g)
        end
        
        hold on
        grid on
        ylim([-4 4]);
        xlim([-4 4]);
        zlim([-4 4]);
        drawnow
    end 
end

