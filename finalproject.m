%% 2 x RC circuit proportional control

R=15e3;
C=100e-9;
R1=15e3;
C2=100e-9;
dt=700e-6;
alpha=dt/(R*C+dt);
t=0:dt:1;
y=zeros(1,length(t));
u=zeros(1,length(t));
y2=zeros(1,length(t));
u2=zeros(1,length(t));
setpoint=[0 1 2 3 0]; Kp=0.5;
m=1;
for k=2:length(t)
    if mod(k,500)==0
        m=m+1;
    end
    error=(setpoint(m)-y2(k-1));
    u(k)=u(k-1)+Kp*error;
    if u(k)>3.3
        u(k)=3.3;
    end
    if u(k)<0
        u(k)=0;
    end
    %% DAC
    %u(k)=u(k)*4096/3.3;
    %% process
    y(k)=alpha*u(k)+(1-alpha)*y(k-1);
    y2(k)=alpha*y(k)+(1-alpha)*y2(k-1);

    if y2(k)>3.3
        y2(k)=3.3;
    end
    if y2(k)<0
        y2(k)=0;
    end
end

subplot(1,2,1)
plot(t,y2,"Color",'r')
subplot(1,2,2)
plot(t,u,"Color",'b')
