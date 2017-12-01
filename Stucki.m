%Stucki
clc;clear all;close all;
INPUT = 'lena.bmp';
in_img = imread(INPUT);
imshow(in_img);title('Input Image');

inImg = double(in_img);
[M,N] = size(inImg);
x = inImg;
y = inImg;
Threshold = 128;

for Y = 1: +1 : N
    for X = 1: +1 : M
            if y(X,Y) > Threshold
                error = -255 + y(X,Y);
                y(X,Y) = 255;                
            else
                error = 0 + y(X,Y);
                y(X,Y) = 0;                
            end
            %Boundary Condition
            
            if X == 1 && Y < N-1 %Left Column X == 1
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X+2,Y+1) = y(X+2,Y+1)+(2/42)*error;
                y(X,Y+2) = y(X,Y+2)+(4/42)*error;
                y(X+1,Y+2) = y(X+1,Y+2)+(2/42)*error;
                y(X+2,Y+2) = y(X+2,Y+2)+(1/42)*error;
                
            elseif X == 1 && Y == N-1 %BottomLeftBox
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X+2,Y+1) = y(X+2,Y+1)+(2/42)*error;
                
            elseif X==2 && Y==N-1
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X+2,Y+1) = y(X+2,Y+1)+(2/42)*error;
                
            elseif X==1 && Y==N
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
            elseif X==2 && Y==N
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                
            elseif X==M-1 && Y==N-1
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X-2,Y+1) = y(X-2,Y+1)+(2/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                
            elseif X==M && Y==N-1
                y(X-2,Y+1) = y(X-2,Y+1)+(2/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                
            elseif X==M-1 && Y==N
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                
            elseif X==M && Y==N
                %Do Nothing
                               
            elseif X == 2 && Y < N-1 %Left Column X = 2
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X+2,Y+1) = y(X+2,Y+1)+(2/42)*error;
                y(X,Y+2) = y(X,Y+2)+(4/42)*error;
                y(X+1,Y+2) = y(X+1,Y+2)+(2/42)*error;
                y(X+2,Y+2) = y(X+2,Y+2)+(1/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X-1,Y+2) = y(X-1,Y+2)+(2/42)*error;
                
                
            elseif X == M-1 && Y < N-1 %Right Column X == M-1
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X-2,Y+1) = y(X-2,Y+1)+(2/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X-2,Y+2) = y(X-2,Y+2)+(1/42)*error;
                y(X-1,Y+2) = y(X-1,Y+2)+(2/42)*error;
                y(X,Y+2) = y(X,Y+2)+(4/42)*error;
                y(X+1,Y+2) = y(X+1,Y+2)+(2/42)*error;
                
            elseif X == M && Y < N-1 %Right Column X == M
                y(X-2,Y+1) = y(X-2,Y+1)+(2/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X-2,Y+2) = y(X-2,Y+2)+(1/42)*error;
                y(X-1,Y+2) = y(X-1,Y+2)+(2/42)*error;
                y(X,Y+2) = y(X,Y+2)+(4/42)*error;
                
            elseif 2<X<M-1 && Y==N-1
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                y(X-2,Y+1) = y(X-2,Y+1)+(2/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X+2,Y+1) = y(X+2,Y+1)+(2/42)*error;
                
            elseif 2<X<M-1 && Y==N
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                
            else %All the other Pixel
                y(X+1,Y) = y(X+1,Y)+(8/42)*error;
                y(X+2,Y) = y(X+2,Y)+(4/42)*error;
                y(X-2,Y+1) = y(X-2,Y+1)+(2/42)*error;
                y(X-1,Y+1) = y(X-1,Y+1)+(4/42)*error;
                y(X,Y+1) = y(X,Y+1)+(8/42)*error;
                y(X+1,Y+1) = y(X+1,Y+1)+(4/42)*error;
                y(X+2,Y+1) = y(X+2,Y+1)+(2/42)*error;
                y(X-2,Y+2) = y(X-2,Y+2)+(1/42)*error;
                y(X-1,Y+2) = y(X-1,Y+2)+(2/42)*error;
                y(X,Y+2) = y(X,Y+2)+(4/42)*error;
                y(X+1,Y+2) = y(X+1,Y+2)+(2/42)*error;
                y(X+2,Y+2) = y(X+2,Y+2)+(1/42)*error;
                
            end
            
    end
end

            
         
                              
halftone_img = y;
figure;imshow(halftone_img);title('Stucki Error Diffusion');
imwrite(halftone_img,'lena_Stucki.bmp');

Gauss_img = imgaussfilt(y,1.3); %GaussianFilter
HPSNR = psnr(Gauss_img,x,255)