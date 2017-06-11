clear all
clc
clf

f = @(t,x) -2*t*x^2;
fex = @(t) 1/(1+t^2);

for n = 1:3
   
    h = 10^-n;
    tEnd = 0.6;
    numbCount = tEnd/h;

    t = linspace(0,tEnd, numbCount);
    x = zeros(1, length(t)+1);
    x2 = zeros(1, length(t)+1);
    x(1) = 1;

    for i = 1:1:length(t)
        x(i+1) = x(i)+h*f(t(i), x(i));
        x2(i+1) = fex(t(i));
    end

    plot(t,x(2:end),'r-')
    hold on

end

plot(t,x2(2:end),'g-')
hold off