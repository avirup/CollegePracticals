line = [1 2 .0745 .4886 .064];
fb = line(:,1);
tb = line(:,2);
r = line(:,3);
x = line(:,4);
z = r+1i*x;
y = 1./z;
b = line(:,5);
b = 1i*b;
nbus = max(max(fb), max(tb));
nbranch = length(fb);
Y = zeros(nbus,nbus);
for k=1:nbranch
    Y(fb(k),tb(k)) = Y(fb(k),tb(k))-y(k);
    Y(tb(k),fb(k)) = Y(fb(k),tb(k));
end
for m=1:nbus
    for n=1:nbranch
        if fb(n)==m || tb(n)==m
            Y(m,m)=Y(m,m)+y(n)+b(n);
        %else if tb(n)==m
        %        Y(m,m)=Y(m,m)+y(n)+b(n);
        %    end
        end
    end
end
Y
data=[1 1.05 0 0 0
      2 1 0 -0.5 -0.25];
      
it=0;
e=10;
v0=data(:,2);
a0=data(:,3);
ps=data(2,4);
qs=data(2,5);
e1=v0(1)*cos(a0(1));
f1=v0(1)*sin(a0(1));
g11=real(Y(1,1));
g22=g11;
b11=imag(Y(1,1));
b22=b11;
g12=real(Y(1,2));
g21=g12;
b12=imag(Y(1,2));
b21=b12;

while e>=0.01
  e2=v0(2)*cos(a0(2));
  f2=v0(2)*sin(a0(2));
  p2=(g21*e1-b21*f1)*e2+(g21*f1+b21*e1)*f2+(g22*e2-b22*f2)*e2+(g22*f2+b22*e2)*f2;
  q2=(g21*e1-b21*f1)*f2-(g21*f1+b21*e1)*e2+(g22*e2-b22*f2)*f2-(g22*f2+b22*e2)*e2;
  dp2=ps-p2;
  dq2=qs-q2;
  e=-dp2;
  J1=-q2-b22*abs(e2+1i*f2);
  J2=p2+g22*abs(e2+1i*f2);
  J3=p2-g22*abs(e2+1i*f2);
  J4=q2-b22*abs(e2+1i*f2);
  pow=[dp2;dq2];
  J=[J1 J2;J3 J4];
  NM=(inv(J))*pow;
  a0(2)=a0(2)+NM(1);
  v0(2)=v0(2)*(1+NM(2));
  it=it+1;
end
RD=[1 v0(1) a0(1)
    2 v0(2) a0(2)];
for a=1:2
  for b=1:3
      fprintf('\t%4f',RD(a,b));
  end
  fprintf('\n');
end