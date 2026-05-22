function [w, R] = dynamics(w, R, tau, I, dt)

w = rk4_omega(w, tau, I, dt);

Omega = [0, -w(3), w(2);
        w(3), 0, -w(1);
        -w(2), w(1), 0
    ];

R = R*expm(Omega*dt);
end