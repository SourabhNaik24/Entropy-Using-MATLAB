% ENTROPY
% DATED:07-08-2018


clc;
x=input('Enter a String\n','s');
len=length(x);
display(len);
u=unique(x);
display(u);
lenChar=length(u);
display(lenChar);
z=zeros(1,lenChar);
p=zeros(1,lenChar);
for i=1:lenChar
    z(i)=length(findstr(x,u(i)));
    p(i)=z(i)/len;
end
display(z);
display(p);
H=0;
for i=1:lenChar
   H=H+(-p(i)*log2(p(i)));
end
display(H);