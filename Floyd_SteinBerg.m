%FloydED
clc;clear all;close all;
INPUT = 'lena.bmp';
in_img = imread(INPUT);
imshow(in_img);title('Input Image');

inImg = double(in_img);
[M,N] = size(inImg);
x = inImg;
y = inImg;
Threshold = 128;


%Raster Scan
for row = 1: +1 : N
    for column = 1: +1 : M
                    
        if y(column,row) > Threshold
            error = -255 + y(column,row);
            y(column,row) = 255;
        else
            error = 0 + y(column,row);
            y(column,row) = 0;
        end
        if column == 1 && row < N %Left Boundary
            
            
            y(column+1,row) = y(column+1,row)+(7/16)*error;
            y(column,row+1) = y(column,row+1)+(5/16)*error;
            y(column+1,row+1) = y(column+1,row+1)+(1/16)*error;
            
        elseif column == M && row < N %Right Boundary
            
            y(column,row+1) = y(column,row+1)+(5/16)*error;
            y(column-1,row+1) = y(column-1,row+1)+(3/16)*error;
            
        elseif row == N && column < M %Last Row Boundary
            
            y(column+1,row) = y(column+1,row)+(7/16)*error;
            
        elseif row == 0 && column == M %topright
            
            y(column,row+1) = y(column,row+1)+(5/16)*error;
            y(column-1,row+1) = y(column-1,row+1)+(3/16)*error;
            
        elseif row == M && column == N %Bottomright
            
            
        else
            
            y(column+1,row) = y(column+1,row)+(7/16)*error;
            y(column,row+1) = y(column,row+1)+(5/16)*error;
            y(column+1,row+1) = y(column+1,row+1)+(1/16)*error;
            y(column-1,row+1) = y(column-1,row+1)+(3/16)*error;
            
        end
        
    end
end


figure;imshow(y);title('Floyd Error Diffusion');
imwrite(y,'lena_Floyd.bmp');

Gauss_img = imgaussfilt(y,1.3); %GaussianFilter
HPSNR = psnr(Gauss_img,x,255)