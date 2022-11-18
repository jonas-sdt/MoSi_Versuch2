R_V = 470;     % Widerstand = 470 Ohm
R_D = 1000;     % Widerstand = 1 kOhm
R_L = 0.8;    %Wicklungswiderstand Spule = 0,8 Ohm
L = 0.002;   %Induktivität der Spule = 2 mH
C = 0.000001;  % Kapazität = 1uF

num = [L R_L];   % Zählerpolynom Übertragungsfunktion
den = [(C*R_V*L) (C*R_V*R_L+R_V*L/R_D+L) (R_V+R_L+R_V*R_L/R_D)];   % Nennerpolynom Übertragungsfunktion

G = tf(num, den);