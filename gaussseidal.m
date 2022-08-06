clc;

%Author: Mehmet Burak KARABULUT

fprintf('Gauss Seidal Metodu \n')
A = input('Katsayılar Matrisiniz: ');
B = input('Sonuç Matrisiniz: ');
P = input('Yaklaşılacak Matris: ');
n = input('İterasyon Sayısı: ');
N = length(B);
X = zeros(N,1);
Y = zeros(N,1); %durdurma

for j=1:n
    for i=1:N
        X(i) = (B(i) / A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
        P(i) = X(i);
    end
    fprintf('Iterasyon sayısı %d\n',j)
    X
    
    Y= X;
end