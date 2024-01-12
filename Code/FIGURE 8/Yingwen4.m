%FIGURE 8
R1=2.3;e1=2;B=2.5;e2=2;C4=0.5;R3=1.5;R4=3;L1=1.2;e3=6;C6=0.4;R5=1;R6=2;L2=0.7;e4=4;
for i=0.5
    figure(1)
    set(0,'defaultfigurecolor','w')
     [t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[i 0.3 0.3]);
    stem3(x(:,1),x(:,2),x(:,3),'r+','linewidth',1);
    hold on 
end
% the 2nd line
R1=2.3;e1=3;B=2.5;e2=3;C4=0.5;R3=1.5;R4=3;L1=1.2;e3=6;C6=0.4;R5=1;R6=2;L2=0.7;e4=4;
for j=0.3
    [t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[0.5 j 0.3]);
    stem3(x(:,1),x(:,2),x(:,3),'b-','linewidth',1);
    hold on;
end  
%%{
%the 3rd line
R1=2.3;e1=4;B=2.5;e2=4;C4=0.5;R3=1.5;R4=3;L1=1.2;e3=6;C6=0.4;R5=1;R6=2;L2=0.7;e4=4;
for k=0.3
    [t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[0.5 0.3 k]);
    stem3(x(:,1),x(:,2),x(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid on
    hold on  
    legend({'e1=e2=2','e1=e2=3','e1=e2=4'},'location','northeast');
end
%%}
% the small figure
axes('position',[0.13 0.32 0.2 0.2]);
%axis off
grid on
hold on
R1=2.3;e1=2;B=2.5;e2=2;C4=0.5;R3=1.5;R4=3;L1=1.2;e3=6;C6=0.4;R5=1;R6=2;L2=0.7;e4=4;
for i=0.5
    figure(1)
    set(0,'defaultfigurecolor','w')
     [t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[i 0.3 0.3]);
    plot3(x(:,1),x(:,2),x(:,3),'r+','linewidth',1);
    hold on 
end
R1=2.5;e1=3;B=1.5;e2=3;C4=0;R3=1.5;R4=2.25;L1=1.2;e3=6;C6=0;R5=1;R6=1.22;L2=0.7;e4=4;
for j=0.3
    [t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[0.5 j 0.3]);
    plot3(x(:,1),x(:,2),x(:,3),'b-','linewidth',1);
    hold on;
end  
%%{
R1=2.3;e1=4;B=2.5;e2=4;C4=0.5;R3=1.5;R4=3;L1=1.2;e3=6;C6=0.4;R5=1;R6=2;L2=0.7;e4=4;
for k=0.3
    [t,x]=ode45(@(t,x)dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4),[0 50],[0.5 0.3 k]);
    plot3(x(:,1),x(:,2),x(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360);
    grid on
    hold on  
end
%%}
view([90 0]);
ylim([0 1]);zlim([0 1]);
set(gca,'XTickLabel','','YTickLabel','','ZTickLabel','')
%xlabel('x','position',[0.8 0.4 0.3])
ylabel('y','position',[0.8 0.4 0.3],'Rotation',360)
zlabel('z','position',[0.1 0.8 0.8],'Rotation',360)
hold on 
%3d figure
clear; 