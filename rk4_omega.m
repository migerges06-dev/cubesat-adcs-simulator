function w_next = rk4_omega(w, tau, I, dt)
f = @(w) I\(tau - cross(w, I*w));
k1 = f(w);
k2 = f(w + 0.5*dt*k1);
k3 = f(w + 0.5*dt*k2);
k4 = f(w + dt*k3);
w_next = w + dt/6*(k1 + 2*k2 + 2*k3 + k4);
end