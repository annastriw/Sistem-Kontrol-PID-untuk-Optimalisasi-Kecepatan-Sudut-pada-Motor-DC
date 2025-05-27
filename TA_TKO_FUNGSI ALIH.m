clear
clc

% Parameter motor dc
Ra = 0.4;
La = 2.7;
J = 0.0004;
B = 0.0022;
K = 0.015;
Kb = 0.05;

% Numerator dan Denominator transfer function
num = K; 
den = [La * J, (La * B + Ra * J), (Ra * B + Kb * K)];

% Transfer Function
Gs = tf(num, den);

Kp = 0.31199;
Ti = 3.4912;
Td = 0.20971;
Ki = Kp / Ti;
Kd = Kp * Td;

% Print nilai Kp, Ki, Kd
fprintf('Nilai Kp = %.5f\n', Kp);
fprintf('Nilai Ki = %.5f\n', Ki);
fprintf('Nilai Kd = %.5f\n', Kd);