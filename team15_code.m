close all;
clear all;
clc;



Multiple access channel

% The simulations here are limited to two senders and one receiver

%
% A ----->
%         ------->                                    decoder
%                 -------> Y = A+B(vector addition)-------------> A and B 
%         ------->
% B ----->
% 

codebook_A=['100001';'010000'];
codebook_B=['001011';'000110'];

T_codewords_X1=codebook_A(randi([1,2]),:);
T_codewords_X2=codebook_B(randi([1,2]),:);

T_codewords_X1_int=bin2dec(T_codewords_X1);
T_codewords_X2_int=bin2dec(T_codewords_X2);

Sequence_int=bitxor(T_codewords_X1_int , T_codewords_X2_int);

Sequence_received=dec2bin(Sequence_int,length(codebook_A(1,:)));


if Sequence_received(1)=='1'
    word_A=codebook_A(1,:);
else 
    word_A=codebook_A(2,:);
end

if Sequence_received(3)=='1'
    word_B=codebook_B(1,:);
else 
    word_B=codebook_B(2,:);
end



Broadcast channel

% The simulations here are limited to one sender and three receivers

%                                ------------> compare coodbook_A with A+B+C and decode A                             
%                     ---------->
%       A+B+C ------->           ------------> compare codebook_B with A+B+C and decode B
% (vector addition)   ---------->
%                                ------------> compare codebook_C with A+B+C and decode C
%

% here A,B,C aree nothing but the codebooks of the receivers A,B,C 
A =['100000000';'010000001'], B=['001000010'; '000100011'], C=['000010100'; '000001101'];


A_sent=A(randi([1,2]),:);
B_sent=B(randi([1,2]),:);
C_sent=C(randi([1,2]),:);

trx = bitxor(bin2dec(B_sent),bin2dec(C_sent));
trx = bitxor(trx,bin2dec(A_sent));
trx = dec2bin(trx,length(A(1,:)));



if trx(1)=='1'
    A_rec=A(1,:);
else 
    A_rec=A(2,:);
end

if trx(3)=='1'
    B_rec=B(1,:);
else 
    B_rec=B(2,:);
end

if trx(5)=='1'
    C_rec=C(1,:);
else 
    C_rec=C(2,:);
end

%
