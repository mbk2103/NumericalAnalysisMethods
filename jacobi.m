clc;

%Author: Mehmet Burak KARABULUT

fprintf('Jacobi Metodu \n')

A = input('Katsayılar Matrisiniz:');
B = input('Sonuç Matrisiniz: ');
G = input('Yaklaşılan Matris: ');
n = input('İterasyon sayısı: ');
N = length(B);
X = zeros(N,1);

for j = 1:n
    for i=1:N
        X(i) = (B(i) / A(i,i)) - A(i,[1:i-1, i+1:N]) * G([1:i-1,i+1:N]) / A(i,i);

    end
    X
    if abs(X-G) < e
        break
    end
    G = X;
end

