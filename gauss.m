line=[1 2 0.15 0.4 0.04
      1 3 0.10 0.3 0.05
      1 4 0.15 0.6 0.04
      2 3 0.07 0.25 0.03
      3 4 0.09 0.3 0.04];
fb=line(:,1);
tb=line(:,2);
r=line(:,3);
x=line(:,4);
z=r+1i*x;
y=1./z;
B=line(:,5);
B=1i*B;
nbus=max(max(fb),max(tb));
nbranch=length(fb);
Y=zeros(nbus,nbus);
for k=1:nbranch
    Y(fb(k),tb(k))=Y(fb(k),tb(k))-y(k);
    Y(tb(k),fb(k))=Y(fb(k),tb(k));
end
for m=1:nbus
    for n=1:nbranch
        if fb(n)==m
            Y(m,m)=Y(m,m)+y(n)+B(n);
        else if tb(n)==m
                Y(m,m)=Y(m,m)+y(n)+B(n);
            end
        end
    end
end 
Y
v1=1.06;
v2=1.02;
v3=1;
v4=1;
a1=0;
a2=a1;
a3=a1;
a4=a1;
pg1=0;
pg2=1.2;
pg3=0;
pg4=0;
qg1=0;
qg2=0;
qg3=0;
qg4=0;
pd1=2;
pd2=0;
pd3=0.7;
pd4=0.6;
qd1=0.6;
qd2=0;
qd3=0.5;
qd4=0.3;
ps1=(pg1-pd1);
ps2=(pg2-pd2);
ps3=(pg3-pd3);
ps4=(pg4-pd4);
qs1=(qg1-qd1);
qs2=(qg2-qd2);
qs3=(qg3-qd3);
qs4=(qg4-qd4);
a=(1/(2.96-j*9.65));
b=(-0.7+j*0.5)/1;
c=((-1+j*3)*1.06)+((-1.0386+j*3.7092)*(0.942563-j*0.110487))+(-0.9174+j*3.0581);
v31=a*(b-c);
v31
m1=(1/(1.31-j*4.5));
m2=(-0.6+j*0.3);
m3=((-0.39+j*1.57)*1.06)+((-0.92+j*3.1)*(0.9391-0.0967*j));
v41=m1*(m2-m3);
v41