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

data = [1 1.05 0  0    0
        2 1    0 -0.5 -0.25];

tolerance = 10;
v0=data(:,2);
a0=data(:,3);
ps=data(2,4);
B = abs(Y(2,2));
pcal = (v0(2)^2)*B;
while tolerance > 0.001
    dp = ps-pcal;
    tolerance = -dp;
    pow = dp;
    NM = pow/B;
    a0(2) = a0(2)+NM;
    pcal = B*a0(2);
end

RD = [1 v0(1) a0(1)
      2 v0(2) a0(2)]
