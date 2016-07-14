clear all; close all; clc;  
str='F:\project\matlab\oxfordflower17\jpg\';

strAll='*.jpg';
path=strcat(str,strAll);
file=dir(path);
num=length(file);
A=zeros(1020,784);
B=zeros(340,784);
iA=1;
iB=1;
for i=1:num;
    j=mod(i,80);
    if ((j>=1)&&(j<=60))
        ImgPath=strcat(str,file(i).name);        
        b=imread(ImgPath);
        b=imresize(b,[28,28]);
        b=rgb2gray(b);
        
        %filename1=['F:\project\matlab\oxford\train\train (',num2str(i),').jpg '];
        %imwrite(b,filename1,'jpg');
        
        in=reshape(b,1,784);
        A(iA,:)=in;
        iA=iA+1;
    else
        ImgPath=strcat(str,file(i).name);       
        b=imread(ImgPath);
        b=imresize(b,[28,28]);
        b=rgb2gray(b);
        
        %filename2=['F:\project\matlab\oxford\test\test (',num2str(i),').jpg '];
        %imwrite(b,filename2,'jpg');
        
        in=reshape(b,1,784);
        B(iB,:)=in;
        iB=iB+1;
    end
end

train_x=uint8(A);
test_x=uint8(B);


aa=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
ba=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0];
ca=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0];
da=[0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0];
ea=[0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0];
fa=[0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0];
ga=[0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0];
ha=[0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0];
ia=[0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0];
ja=[0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
ka=[0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0];
la=[0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0];
ma=[0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0];
na=[0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0];
oa=[0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
pa=[0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
qa=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

t=[aa;ba;ca;da;ea;fa;ga;ha;ia;ja;ka;la;ma;na;oa;pa;qa];
C=zeros(1020,17);
D=zeros(340,17);
k=1;
iC=1;
iD=1;
for i=1:num;
    j=mod(i,80);
    if ((j>=1)&&(j<=60))
        C(iC,1:17)=t(k,:);
        iC=iC+1;
    else
        D(iD,1:17)=t(k,:);
        iD=iD+1;
    end
    if j==0
        k = k+1;
    end
end
train_y=uint8(C);
test_y=uint8(D);

save oxfordflower17.mat train_x test_x train_y test_y;