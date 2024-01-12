%The dynamic replication equation of the three-party subjecj
function dxdt=dianchi(t,x,R1,e1,B,e2,C4,R3,R4,L1,e3,C6,R5,R6,L2,e4)
dxdt = zeros(3,1);
dxdt(1)=x(1)*(1-x(1))*(x(2)*R1-x(2)*e1-x(3)*B+x(3)*e2);
dxdt(2)=x(2)*(1-x(2))*(x(3)*C4+x(1)*e1+R3+R4+L1-e3);
dxdt(3)=x(3)*(1-x(3))*(x(2)*C6+(1-x(1))*e2+R5+R6+L2-e4);
end
