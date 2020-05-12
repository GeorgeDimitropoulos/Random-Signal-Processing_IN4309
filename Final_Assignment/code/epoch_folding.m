function [z] = Epoch_folding (y, To, k)
z=zeros (length(y), 1)
for i= 1:length(y)-(k-1)*To
for j=0:k-1
z(i)=(1/k)*y(i+(To*j))+z(i);
end
end
for i=1:length(z)
time(i)=i;
end
for i=1:length(z)
a(i)=z(i);
end
plot(time, a);
xlabel ('Time');
ylabel ('z(t)');
end