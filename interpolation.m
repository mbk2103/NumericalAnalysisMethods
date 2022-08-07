clear; clc;

%Author: Mehmet Burak KARABULUT


X=input('X değerleri: ');
Y=input('Y değerleri: ');
X1=input('Görmek İstediğiniz Değer: ');
n=length(X);
h=X(2)-X(1);
Delta=zeros(n,n);
Delta(:,1)=Y;

if X1<(X(n)+X(1))/2
    for j=2:n
        for i=j:n
        Delta(i,j)=(Delta(i,j-1)-Delta(i-1,j-1));
        end
    end
    fprintf('\n');

    disp(Delta);
    C=Delta(n,n);

    for k=n-1:-1:1
        p=poly(X(1))/h;
        p(2)=p(2)-(k-1);
        C=conv(C,p)/k;
        m=length(C);
        C(m)=C(m)+Delta(k,k);
    end
    A=polyval(C,X1);
    fprintf('f(%.2f)≌ %.4f\n',X1,A);

elseif X1>(X(n)+X(1))/2
    for j=2:n
        for i=1:n-j+1
            Delta(i,j)=Delta(i+1,j-1)-Delta(i,j-1);
        end
    end
    fprintf('\n');

    disp(Delta);
    C=Delta(1,n);

    for k=n-1:-1:1
        p=poly(X(n))/h;
        p(2)=p(2)+(k-1);
        C=conv(C,p)/k;
        m=length(C);
        C(m)=C(m)+Delta(n-k+1,k);
    end
    A=polyval(C,X1);
    fprintf('f(%.2f)≌ %.4f\n',X1,A);
end
