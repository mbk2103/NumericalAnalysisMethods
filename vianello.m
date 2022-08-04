clc;

%Author: Mehmet Burak KARABULUT

fprintf('Vianello Metodu \n')
row = input('Matris Boyutu: '); %Matris oluşturduk.
A = [row; row];
V1 = [row;1];

for i = 1:row
    for j = 1 : row
        fprintf('Matrisin [%d][%d] elemanı: ', i, j);
        A(i,j) = input('');
    end
end

for i = 1:row
    fprintf('Başlangıç Vektörünün [%d] Elemanı: ',i);
    V1(i) = input('');
end


grade = input('İşlemin Tekrarlanacağı Basamak Sayısı: ');

V2(row,1) = V1(row,1);

for i = 1:grade
    alfa = max(A*V1);
    V1 = (A*V1) / alfa;
end

AA = inv(A);

for i = 1:grade
    alfa2 = max(AA*V2);
    V2 = (AA*V2);
end

fprintf('%d basamak sonunda A matrisinin en büyük öz değeri: ', grade);
disp(alfa);

fprintf('%d basamak sonunda A matrisinin en küçük öz değeri: ', grade);
disp(1 / alfa2);


