% 1. Define the Time Vectors
t = 0:0.01:2;       
n = 0:1:20;         

% 2. Generate a 1 Hz Sine Wave Signal
f = 1;             
x_cont = sin(2 * pi * f * t);        
x_disc = sin(2 * pi * f * (n/10));  

% 3. Visualize the Signals
figure;             

% Top Plot: Continuous Time
subplot(2, 1, 1);   
plot(t, x_cont);
title('Continuous-Time Signal: x(t)');
xlabel('Time (seconds)'); 
ylabel('Amplitude');
grid on;

% Bottom Plot: Discrete Time
subplot(2, 1, 2);   
stem(n, x_disc); 
title('Discrete-Time Sequence: x[n]');
xlabel('Sample Index (n)'); 
ylabel('Amplitude');
grid on;