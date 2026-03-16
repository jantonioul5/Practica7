[t,x] = ode45(@sistema,[0 10],[0 0 0]);

figure
plot(t,x(:,2),'y','LineWidth',1.5)

grid on
xlabel('Tiempo (s)')
ylabel('\omega (rad/s)')
title('Velocidad angular del motor DC')

function dx = sistema(t,x)
dx = zeros(3,1);
dx(1) = x(2);
dx(2) = 10*x(3) - 1.2*x(2);
dx(3) = -0.4348*x(2) - 86.956*x(3) + 217.39;
end