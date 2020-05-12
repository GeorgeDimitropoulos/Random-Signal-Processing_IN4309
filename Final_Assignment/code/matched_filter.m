function [zm] = Matched_Filter (ze,y)
zm=zeros(length(x),1);
a(1)=x(1);
for i=0:length(x)-2
a(i+2)=x(length(x)-i);
end
a=a';
Tp = toeplitz(a,x);
zm=Ta*ze ;
for i=1:length(x)
t(i)=i;
end
for i=1:length(x)
s(i)=zm(i);
end
plot(t,s);
xlabel('Time');
ylabel('zm(t)');
end