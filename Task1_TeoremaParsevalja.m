% Теория сигналов. Практика.
% Экспериментальная проверка теоремы Парсеваля

clear all

dt=0.01;
T=10;
N=floor(T/dt);
t=(0:N-1).*dt;

Ns=floor(0.1*N);
s(1:Ns)=1;
s(Ns+1:N)=0;

Et=sum(s.^2)

Sf=fft(s);
Sa=abs(Sf);

Ef=(sum(Sa.^2))/N

figure
subplot(2,1,1)
plot(t,s)
grid minor
subplot(2,1,2)
plot((0:N-1)./(dt*N),Sa)
grid minor


