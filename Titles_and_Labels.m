% Subplot and title

x = [0:0.01:4*pi]
y1 = sin(x)
y2 = cos(x)

subplot(2,2,1)
plot(x,y1)

title('Cos and Sin in #1')
xlabel('2*pi','Color','r')
ylabel('sin(x)', 'Fontsize', 18, 'Color', 'g')
%xaxis([0:2*pi])

hold on
plot(x,y2)

subplot(2,2,2)
plot(x,y2)
title('Cosinus')
xlabel('2*pi')

subplot(2,2,3)
plot(x, y2)
line(1,10,'Color','r')

subplot(2,2,4)
plot(x,tan(x))
title('tangens')
xlabel('2*pi')