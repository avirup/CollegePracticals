g=2;
c=[1000 50 0.01
    2500 45 0.005];
Pd=1000;
num=Pd;
den=0;
for i=1:g
    num=num+c(i,2)/(2*c(i,3));
    den=den+1/(2*c(i,3));
end

lamda=num/den;

for i=1:g
Pg(i)=(lamda-c(i,2))/(2*c(i,3));
end
fprintf('Lamda = %4f\n',lamda);
fprintf('Power Generation :: P1 = %4f\t P2 = %4f\n',Pg);
  