%% Case4,(1,1,1)
clear; 
R1=2.5;e1=2;B=2.3;e2=2;C4=0.5;R3=1.5;R4=3;L1=1.2;e3=6;C6=0.4;R5=1;R6=2;L2=0.7;e4=4;
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1 
[t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[i,j,k]);
        figure(2)
        grid on
        plot3(x(:,1),x(:,2),x(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
xlabel('x','Rotation',0);
ylabel('y','Rotation',0);
zlabel('z','Rotation',360,'position',[0 0 1.05]);
