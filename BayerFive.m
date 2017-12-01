clc;clear all;close all;
INPUT = 'lena.bmp';
in_img = imread(INPUT);
imshow(in_img);title('Input Image');

inImg = double(in_img);

[M,N] = size(inImg);
y = inImg;
x = inImg;

for row = 1: +8 : N - 7
    for column = 1: +8 : M - 7
        %First Row (Dither Array)
         if y(column,row) > 131
            y(column,row) = 255;
        else
            y(column,row) = 0;
         end
         if y(column + 1,row) > 69
            y(column + 1,row) = 255;
        else
            y(column + 1,row) = 0;
         end
         if y(column + 2,row) > 185
            y(column + 2,row) = 255;
        else
            y(column + 2,row) = 0;
         end
         if y(column + 3,row) > 123
            y(column + 3,row) = 255;
        else
            y(column + 3,row) = 0;
         end
         if y(column + 4,row) > 138
            y(column + 4,row) = 255;
        else
            y(column + 4,row) = 0;
         end
         if y(column + 5,row) > 77
            y(column + 5,row) = 255;
        else
            y(column + 5,row) = 0;
         end
         if y(column + 6,row) > 177
            y(column + 6,row) = 255;
        else
            y(column + 6,row) = 0;
         end
         if y(column + 7,row) > 116
            y(column + 7,row) = 255;
        else
            y(column + 7,row) = 0;
         end
        
         %Second Row
          if y(column,row + 1) > 39
            y(column,row + 1) = 255;
        else
            y(column,row + 1) = 0;
          end
        if y(column + 1,row + 1) > 193
            y(column + 1,row + 1) = 255;
        else
            y(column + 1,row + 1) = 0;
        end
        if y(column + 2,row + 1) > 23
            y(column + 2,row + 1) = 255;
        else
            y(column + 2,row + 1) = 0;
        end
        if y(column + 3,row + 1) > 246
            y(column + 3,row + 1) = 255;
        else
            y(column + 3,row + 1) = 0;
        end
        if y(column + 4,row + 1) > 46
            y(column +4,row + 1) = 255;
        else
            y(column + 4,row + 1) = 0;
        end
        if y(column + 5,row + 1) > 193
            y(column + 5,row + 1) = 255;
        else
            y(column + 5,row + 1) = 0;
        end
        if y(column + 6,row + 1) > 31
            y(column + 6,row + 1) = 255;
        else
            y(column + 6,row + 1) = 0;
        end
        if y(column + 7,row + 1) > 239
            y(column + 7,row + 1) = 255;
        else
            y(column + 7,row + 1) = 0;
        end
        
        %Third Row
         if y(column,row + 2) > 162
            y(column,row + 2) = 255;
        else
            y(column,row + 2) = 0;
         end
         if y(column + 1,row + 2) > 100
            y(column + 1,row + 2) = 255;
        else
            y(column + 1,row + 2) = 0;
         end
         if y(column + 2,row + 2) > 146
            y(column + 2,row + 2) = 255;
        else
            y(column + 2,row + 2) = 0;
         end
         if y(column + 3,row + 2) > 85
            y(column + 3,row + 2) = 255;
        else
            y(column + 3,row + 2) = 0;
         end
         if y(column + 4,row + 2) > 169
            y(column + 4,row + 2) = 255;
        else
            y(column + 4,row + 2) = 0;
         end
         if y(column + 5,row + 2) > 108
            y(column + 5,row + 2) = 255;
        else
            y(column + 5,row + 2) = 0;
         end
         if y(column + 6,row + 2) > 154
            y(column + 6,row + 2) = 255;
        else
            y(column + 6,row + 2) = 0;
         end
         if y(column + 7,row + 2) > 92
            y(column + 7,row + 2) = 255;
        else
            y(column + 7,row + 2) = 0;
         end
        
         %Forth Row
          if y(column,row + 3) > 15
            y(column,row + 3) = 255;
        else
            y(column,row + 3) = 0;
          end
        if y(column + 1,row + 3) > 223
            y(column + 1,row + 3) = 255;
        else
            y(column + 1,row + 3) = 0;
        end
        if y(column + 2,row + 3) > 54
            y(column + 2,row + 3) = 255;
        else
            y(column + 2,row + 3) = 0;
        end
        if y(column + 3,row + 3) > 208
            y(column + 3,row + 3) = 255;
        else
            y(column + 3,row + 3) = 0;
        end
        if y(column + 4,row + 3) > 8
            y(column + 4,row + 3) = 255;
        else
            y(column + 4,row + 3) = 0;
        end
        if y(column + 5,row + 3) > 231
            y(column + 5,row + 3) = 255;
        else
            y(column + 5,row + 3) = 0;
        end
        if y(column + 6,row + 3) > 61
            y(column + 6,row + 3) = 255;
        else
            y(column + 6,row + 3) = 0;
        end
        if y(column + 7,row + 3) > 215
            y(column + 7,row + 3) = 255;
        else
            y(column + 7,row + 3) = 0;
        end
        
        %Fifth Row
        if y(column,row + 4) > 138
            y(column,row + 4) = 255;
        else
            y(column,row + 4) = 0;
        end
        if y(column + 1,row + 4) > 77
            y(column + 1,row + 4) = 255;
        else
            y(column + 1,row + 4) = 0;
        end
        if y(column + 2,row + 4) > 177
            y(column + 2,row + 4) = 255;
        else
            y(column + 2,row + 4) = 0;
        end
        if y(column + 3,row + 4) > 116
            y(column + 3,row + 4) = 255;
        else
            y(column + 3,row + 4) = 0;
        end
        if y(column + 4,row + 4) > 131
            y(column + 4,row + 4) = 255;
        else
            y(column + 4,row + 4) = 0;
        end
        if y(column + 5,row + 4) > 69
            y(column + 5,row + 4) = 255;
        else
            y(column + 5,row + 4) = 0;
        end
        if y(column + 6,row + 4) > 185
            y(column + 6,row + 4) = 255;
        else
            y(column + 6,row + 4) = 0;
        end
        if y(column + 7,row + 4) > 123
            y(column + 7,row + 4) = 255;
        else
            y(column + 7,row + 4) = 0;
        end
        
        %Sixth Row
        if y(column,row + 5) > 46
            y(column,row + 5) = 255;
        else
            y(column,row + 5) = 0;
        end
        if y(column + 1,row + 5) > 193 
            y(column + 1,row + 5) = 255;
        else
            y(column + 1,row + 5) = 0;
        end
        if y(column + 2,row + 5) > 31
            y(column + 2,row + 5) = 255;
        else
            y(column + 2,row + 5) = 0;
        end
        if y(column + 3,row + 5) > 239
            y(column + 3,row + 5) = 255;
        else
            y(column + 3,row + 5) = 0;
        end
        if y(column + 4,row + 5) > 39
            y(column + 4,row + 5) = 255;
        else
            y(column + 4,row + 5) = 0;
        end
        if y(column + 5,row + 5) > 193
            y(column + 5,row + 5) = 255;
        else
            y(column + 5,row + 5) = 0;
        end
        if y(column + 6,row + 5) > 23
            y(column + 6,row + 5) = 255;
        else
            y(column + 6,row + 5) = 0;
        end
        if y(column + 7,row + 5) > 246
            y(column + 7,row + 5) = 255;
        else
            y(column + 7,row + 5) = 0;
        end
        
        %Seventh Row
        if y(column,row + 6) > 169
            y(column,row + 6) = 255;
        else
            y(column,row + 6) = 0;
        end
        if y(column + 1,row + 6) > 107
            y(column + 1,row + 6) = 255;
        else
            y(column + 1,row + 6) = 0;
        end
        if y(column + 2,row + 6) > 154
            y(column + 2,row + 6) = 255;
        else
            y(column + 2,row + 6) = 0;
        end
        if y(column + 3,row + 6) > 92
            y(column + 3,row + 6) = 255;
        else
            y(column + 3,row + 6) = 0;
        end
        if y(column + 4,row + 6) > 162
            y(column + 4,row + 6) = 255;
        else
            y(column + 4,row + 6) = 0;
        end
        if y(column + 5,row + 6) > 100
            y(column + 5,row + 6) = 255;
        else
            y(column + 5,row + 6) = 0;
        end
        if y(column + 6,row + 6) > 146
            y(column + 6,row + 6) = 255;
        else
            y(column + 6,row + 6) = 0;
        end
        if y(column + 7,row + 6) > 85
            y(column + 7,row + 6) = 255;
        else
            y(column + 7,row + 6) = 0;
        end
        
        %Eigth Row
        if y(column,row + 7) > 8
            y(column,row + 7) = 255;
        else
            y(column,row + 7) = 0;
        end
        if y(column + 1,row + 7) > 231
            y(column + 1,row + 7) = 255;
        else
            y(column + 1,row + 7) = 0;
        end
        if y(column + 2,row + 7) > 61
            y(column + 2,row + 7) = 255;
        else
            y(column + 2,row + 7) = 0;
        end
        if y(column + 3,row + 7) > 215
            y(column + 3,row + 7) = 255;
        else
            y(column + 3,row + 7) = 0;
        end
        if y(column + 4,row + 7) > 15
            y(column + 4,row + 7) = 255;
        else
            y(column + 4,row + 7) = 0;
        end
        if y(column + 5,row + 7) > 223
            y(column + 5,row + 7) = 255;
        else
            y(column + 5,row + 7) = 0;
        end
        if y(column + 6,row + 7) > 54
            y(column + 6,row + 7) = 255;
        else
            y(column + 6,row + 7) = 0;
        end
        if y(column + 7,row + 7) > 208
            y(column + 7,row + 7) = 255;
        else
            y(column + 7,row + 7) = 0;
        end

    end    
end

halftone_img = imbinarize (uint8(y));%undo semicolon to see every array
figure;imshow(halftone_img);title('Bayer 5 Ordered Dithering');
imwrite(halftone_img,'lena_Bayer5.bmp');

Gauss_img = imgaussfilt(y,1.3); %GaussianFilter
HPSNR = psnr(Gauss_img,x,255)
