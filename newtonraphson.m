clc;

%Mehmet Burak KARABULUT

fprintf('Newton Raphson Metodu \n');
syms x;
f = input('Fonksiyonunuz: ');
a = input('Aralığın ilk değeri: ');
b= input('Aralığın son değeri: ');

sart = subs(f,x,b) * subs(f,x,a);

F = diff(f,x);

if sart < 0
    x0 = input('x0 = ');
    e = input('Epsilon Değeri: ');
    for i = 1:100
        x1 = x0 - ((subs(f,x,x0))/subs(F,x,x0));
        if abs(x1-x0) < e
            break
        end
        x0 = x1;
    end
else
    fprintf('Bu aralıkta denklemin kökü yoktur.');
end

fprintf('%d iterasyon sonunda denklemin kökü yaklaşık olarak: %f\n', i, x1);
fprintf('f(%f)=%f\n', x1, subs(f, x, x1));