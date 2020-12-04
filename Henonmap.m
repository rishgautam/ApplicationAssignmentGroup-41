x(1)=0;
y(1)=0;
a=1.4;
b=0.3;
n(1)=1;
% and now we begin the iteration (10000 iterations):
for i=2:10000
    x(i)=1-a*(x(i-1)^2)+y(i-1);
    y(i)=b*x(i-1);
    n(i)=i;
end
plot(x,y,'.','MarkerSize',4)
xlabel('$x$','Interpreter','LaTeX','FontSize',20);
ylabel('$y$','Interpreter','LaTeX','FontSize',20);
title('Henon Map')
str = {'a=1.4, b=0.3'};
plot(t(1:100),x([1:100]));
xlabel('$n$','Interpreter','LaTeX','FontSize',20);
ylabel('$x$','Interpreter','LaTeX','FontSize',20);
text([0.2,1.5],str);