clc;

%Author: Mehmet Burak KARABULUT

close all;clear all;clc	
fprintf("2.Dereceden Runge Kutta Metodu")
fprintf("f(x,y)=x*e^x\n")
a=input("x0 degerini giriniz: ")
b=input("y0 degerini giriniz: ")
h=input("h degerini giriniz: ")
xn=input("x(n) degerini giriniz: ")
n=(xn-a)/h
syms x y

f=x*exp(1)^x
s1=subs(f,{x,y},{a,b})
k1=(h*s1)
k1=double(k1)
s2=subs(f,{x,y},{a+h,b+k1})
k2=(h*s2)
k2=double(k2)
y1=b+(k1+k2)/2
fprintf("y1= %.9f",y1)
s3=subs(f,{x,y},{a+0.2,y1})
k3=(h*s3)
k3=double(k3)
s4=subs(f,{x,y},{a+2*h,y1+k3})
k4=(h*s4)
k4=double(k4)
y2=y1+(k3+k4)/2
fprintf("y1= %.9f",y2)

    
    
