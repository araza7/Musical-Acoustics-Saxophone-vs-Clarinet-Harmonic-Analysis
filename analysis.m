clear all
clc 

%% Call Data
load('notes.mat');
N=10;  % number of harmonics 
parameterNames=['f_nominal','f_real','Amplitude','Inharmonicity'];

%% Saxophone-note C
S1(:,1)=sax_c5.ModArm(1:N,1);  % Frequency vector (f_nominal)
S1(:,2)=sax_c5.ModArm(1:N,2);  % Frequency vector (f_real)
S1(:,3)=sax_c5.ModArm(1:N,3);  % Amplitude vector
S1(:,4)=sax_c5.ModArm(1:N,4);  % Inharmonicity
%table(parameterNames.',S1.','VariableNames',{'Parameters' 'Harmonics'})

%% Saxophone-note D
S2(:,1)=sax_d5.ModArm(1:N,1);  % Frequency vector (f_nominal)
S2(:,2)=sax_d5.ModArm(1:N,2);  % Frequency vector (f_real)
S2(:,3)=sax_d5.ModArm(1:N,3);  % Amplitude vector
S2(:,4)=sax_d5.ModArm(1:N,4);  % Inharmonicity
%table(parameterNames.',S2.','VariableNames',{'Parameters' 'Harmonics'})

%% Saxophone-note E
S3(:,1)=sax_e5.ModArm(1:N,1);  % Frequency vector (f_nominal)
S3(:,2)=sax_e5.ModArm(1:N,2);  % Frequency vector (f_real)
S3(:,3)=sax_e5.ModArm(1:N,3);  % Amplitude vector
S3(:,4)=sax_e5.ModArm(1:N,4);  % Inharmonicity
%table(parameterNames.',S3.','VariableNames',{'Parameters' 'Harmonics'})

%% Clarinet-note F
C1(:,1)=clar_f5.ModArm(1:N,1);  % Frequency vector (f_nominal)
C1(:,2)=clar_f5.ModArm(1:N,2);  % Frequency vector (f_real)
C1(:,3)=clar_f5.ModArm(1:N,3);  % Amplitude vector
C1(:,4)=clar_f5.ModArm(1:N,4);  % Inharmonicity
%table(parameterNames.',C1.','VariableNames',{'Parameters' 'Harmonics'})

%% Clarinet-note G
C2(:,1)=clar_g5.ModArm(1:N,1);  % Frequency vector (f_nominal)
C2(:,2)=clar_g5.ModArm(1:N,2);  % Frequency vector (f_real)
C2(:,3)=clar_g5.ModArm(1:N,3);  % Amplitude vector
C2(:,4)=clar_g5.ModArm(1:N,4);  % Inharmonicity
%table(parameterNames.',C2.','VariableNames',{'Parameters' 'Harmonics'})

%% Clarinet-note A
C3(:,1)=clar_a5.ModArm(1:N,1);  % Frequency vector (f_nominal)
C3(:,2)=clar_a5.ModArm(1:N,2);  % Frequency vector (f_real)
C3(:,3)=clar_a5.ModArm(1:N,3);  % Amplitude vector
C3(:,4)=clar_a5.ModArm(1:N,4);  % Inharmonicity
%table(parameterNames.',C3.','VariableNames',{'Parameters' 'Harmonics'})

%% Spectral Centroid
i = (1:N)';
num1 = sum(i .* S1(:,3));den1 = sum(S1(:,3));B_S1 = num1/den1; 
num2 = sum(i .* S2(:,3));den2 = sum(S2(:,3));B_S2 = num2/den2; 
num3 = sum(i .* S3(:,3));den3 = sum(S3(:,3));B_S3 = num3/den3; 
num4 = sum(i .* C1(:,3));den4 = sum(C1(:,3));B_C1 = num4/den4;
num5 = sum(i .* C2(:,3));den5 = sum(C2(:,3));B_C2 = num5/den5;
num6 = sum(i .* C3(:,3));den6 = sum(C3(:,3));B_C3 = num6/den6;

%% Odd and even harmonics
%Saxophone 1
num_hevenS1=(S1(2,3)^2)+(S1(4,3)^2)+(S1(6,3)^2)+(S1(8,3)^2); hevenS1=sqrt(num_hevenS1/den1);
num_hoddS1=(S1(1,3)^2)+(S1(3,3)^2)+(S1(5,3)^2)+(S1(7,3)^2)+(S1(9,3)^2); hoddS1=sqrt(num_hoddS1/den1);
%Saxophone 2
num_hevenS2=(S2(2,3)^2)+(S2(4,3)^2)+(S2(6,3)^2)+(S2(8,3)^2); hevenS2=sqrt(num_hevenS2/den2);
num_hoddS2=(S2(1,3)^2)+(S2(3,3)^2)+(S2(5,3)^2)+(S2(7,3)^2)+(S2(9,3)^2); hoddS2=sqrt(num_hoddS2/den2);
%Saxophone 3
num_hevenS3=(S3(2,3)^2)+(S3(4,3)^2)+(S3(6,3)^2)+(S3(8,3)^2); hevenS3=sqrt(num_hevenS3/den3);
num_hoddS3=(S3(1,3)^2)+(S3(3,3)^2)+(S3(5,3)^2)+(S3(7,3)^2)+(S3(9,3)^2); hoddS3=sqrt(num_hoddS3/den3);
%Clarinet 1
num_hevenC1=(C1(2,3)^2)+(C1(4,3)^2)+(C1(6,3)^2)+(C1(8,3)^2); hevenC1=sqrt(num_hevenC1/den4);
num_hoddC1=(C1(1,3)^2)+(C1(3,3)^2)+(C1(5,3)^2)+(C1(7,3)^2)+(C1(9,3)^2); hoddC1=sqrt(num_hoddC1/den4);
%Clarinet 2
num_hevenC2=(C2(2,3)^2)+(C2(4,3)^2)+(C2(6,3)^2)+(C2(8,3)^2); hevenC2=sqrt(num_hevenC2/den5);
num_hoddC2=(C2(1,3)^2)+(C2(3,3)^2)+(C2(5,3)^2)+(C2(7,3)^2)+(C2(9,3)^2); hoddC2=sqrt(num_hoddC2/den5);
%Clarinet 3
num_hevenC3=(C3(2,3)^2)+(C3(4,3)^2)+(C3(6,3)^2)+(C3(8,3)^2); hevenC3=sqrt(num_hevenC3/den6);
num_hoddC3=(C3(1,3)^2)+(C3(3,3)^2)+(C3(5,3)^2)+(C3(7,3)^2)+(C3(9,3)^2); hoddC3=sqrt(num_hoddC3/den6);

%% Tristimulus

%Saxophone 1
T1_S1=(S1(1,3)^2)/sum(S1(:,3).^2);
T2_S1=sum(S1(2:4,3).^2)/sum(S1(:,3).^2);
T3_S1=sum(S1(5:7,3).^2)/sum(S1(:,3).^2);
T_S1=[T1_S1,T2_S1,T3_S1]; %T1=f,T2=m,T3=h

%Saxophone 2
T1_S2=(S2(1,3)^2)/sum(S2(:,3).^2);
T2_S2=sum(S2(2:4,3).^2)/sum(S2(:,3).^2);
T3_S2=sum(S2(5:7,3).^2)/sum(S2(:,3).^2);
T_S2=[T1_S2,T2_S2,T3_S2]; %T1=f,T2=m,T3=h

%Saxophone 3
T1_S3=(S3(1,3)^2)/sum(S3(:,3).^2);
T2_S3=sum(S3(2:4,3).^2)/sum(S3(:,3).^2);
T3_S3=sum(S3(5:end,3).^2)/sum(S3(:,3).^2);
T_S3=[T1_S3,T2_S3,T3_S3]; %T1=f,T2=m,T3=h

%Clarinet 1
T1_C1=(C1(1,3)^2)/sum(C1(:,3).^2);
T2_C1=sum(C1(2:4,3).^2)/sum(C1(:,3).^2);
T3_C1=sum(C1(5:end,3).^2)/sum(C1(:,3).^2);
T_C1=[T1_C1,T2_C1,T3_C1]; %T1=f,T2=m,T3=h

%Clarinet 2
T1_C2=(C2(1,3)^2)/sum(C2(:,3).^2);
T2_C2=sum(C2(2:4,3).^2)/sum(C2(:,3).^2);
T3_C2=sum(C2(5:end,3).^2)/sum(C2(:,3).^2);
T_C2=[T1_C2,T2_C2,T3_C2]; %T1=f,T2=m,T3=h

%Clarinet 1
T1_C3=(C3(1,3)^2)/sum(C3(:,3).^2);
T2_C3=sum(C3(2:4,3).^2)/sum(C3(:,3).^2);
T3_C3=sum(C3(5:end,3).^2)/sum(C3(:,3).^2);
T_C3=[T1_C3,T2_C3,T3_C3]; %T1=f,T2=m,T3=h

%% Inharmonicity
inh_S1=S1(:,4)';
inh_S2=S2(:,4)';
inh_S3=S3(:,4)';
inh_C1=C1(:,4)';
inh_C2=C2(:,4)';
inh_C3=C3(:,4)';
%% Plot Tristimulus
figure(1);
hold on;
plot(T_S1(2),T_S1(3),'o','MarkerSize',5,'LineWidth',2);
plot(T_S2(2),T_S2(3),'o','MarkerSize',5,'LineWidth',2);
plot(T_S3(2),T_S3(3),'o','MarkerSize',5,'LineWidth',2);
plot(T_C1(2),T_C1(3),'o','MarkerSize',5,'LineWidth',2);
plot(T_C2(2),T_C2(3),'o','MarkerSize',5,'LineWidth',2);
plot(T_C3(2),T_C3(3),'o','MarkerSize',5,'LineWidth',2);
xlabel('m');ylabel('h');
xlim([0 1]);ylim([0 1]);
title('Tristimulus Diagram');
legend('T S1', 'T S2', 'T S3', 'T C1', 'T C2', 'T C3');
grid on;
