function tau = controller(w, R, R_des)
Kp = 5;
Kd = 10;
E = 0.5*(R_des'*R - R'*R_des);
e_R = [E(3,2);
    E(1,3);
    E(2,1)];
tau = -Kp*e_R -Kd*w;

end
