function letter=readLetter(piece)

load NewTemplates 
piece=imresize(piece,[42 24]); 
temp=[ ];
for n=1:length(NewTemplates)
    sem=corr2(NewTemplates{1,n},piece); 
    temp=[temp sem]; 
end
index=find(temp==max(temp));

if index==1 || index==2
    letter='0';
elseif index==3
    letter='1';
elseif index==4
    letter='2';
elseif index==5 
    letter='3';
elseif index==6 || index==7
    letter='4';
elseif index==8 
    letter='5';
elseif index==9 || index==10
    letter='6';
elseif index==11 
    letter='7';
elseif index==12 || index==13 
    letter='8';
else
    letter='9';
end
end