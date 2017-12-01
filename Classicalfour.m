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
         if y(column,row) > 145
            y(column,row) = 255;
        else
            y(column,row) = 0;
         end
         if y(column + 1,row) > 162
            y(column + 1,row) = 255;
        else
            y(column + 1,row) = 0;
         end
         if y(column + 2,row) > 155
            y(column + 2,row) = 255;
        else
            y(column + 2,row) = 0;
         end
         if y(column + 3,row) > 131
            y(column + 3,row) = 255;
        else
            y(column + 3,row) = 0;
         end
         if y(column + 4,row) > 108
            y(column + 4,row) = 255;
        else
            y(column + 4,row) = 0;
         end
         if y(column + 5,row) > 93
            y(column + 5,row) = 255;
        else
            y(column + 5,row) = 0;
         end
         if y(column + 6,row) > 100
            y(column + 6,row) = 255;
        else
            y(column + 6,row) = 0;
         end
         if y(column + 7,row) > 124
            y(column + 7,row) = 255;
        else
            y(column + 7,row) = 0;
         end
        
         %Second Row
          if y(column,row + 1) > 216
            y(column,row + 1) = 255;
        else
            y(column,row + 1) = 0;
          end
        if y(column + 1,row + 1) > 224
            y(column + 1,row + 1) = 255;
        else
            y(column + 1,row + 1) = 0;
        end
        if y(column + 2,row + 1) > 232
            y(column + 2,row + 1) = 255;
        else
            y(column + 2,row + 1) = 0;
        end
        if y(column + 3,row + 1) > 178
            y(column + 3,row + 1) = 255;
        else
            y(column + 3,row + 1) = 0;
        end
        if y(column + 4,row + 1) > 39
            y(column +4,row + 1) = 255;
        else
            y(column + 4,row + 1) = 0;
        end
        if y(column + 5,row + 1) > 31
            y(column + 5,row + 1) = 255;
        else
            y(column + 5,row + 1) = 0;
        end
        if y(column + 6,row + 1) > 23
            y(column + 6,row + 1) = 255;
        else
            y(column + 6,row + 1) = 0;
        end
        if y(column + 7,row + 1) > 77
            y(column + 7,row + 1) = 255;
        else
            y(column + 7,row + 1) = 0;
        end
        
        %Third Row
         if y(column,row + 2) > 209
            y(column,row + 2) = 255;
        else
            y(column,row + 2) = 0;
         end
         if y(column + 1,row + 2) > 247
            y(column + 1,row + 2) = 255;
        else
            y(column + 1,row + 2) = 0;
         end
         if y(column + 2,row + 2) > 240
            y(column + 2,row + 2) = 255;
        else
            y(column + 2,row + 2) = 0;
         end
         if y(column + 3,row + 2) > 170
            y(column + 3,row + 2) = 255;
        else
            y(column + 3,row + 2) = 0;
         end
         if y(column + 4,row + 2) > 46
            y(column + 4,row + 2) = 255;
        else
            y(column + 4,row + 2) = 0;
         end
         if y(column + 5,row + 2) > 8
            y(column + 5,row + 2) = 255;
        else
            y(column + 5,row + 2) = 0;
         end
         if y(column + 6,row + 2) > 15
            y(column + 6,row + 2) = 255;
        else
            y(column + 6,row + 2) = 0;
         end
         if y(column + 7,row + 2) > 85
            y(column + 7,row + 2) = 255;
        else
            y(column + 7,row + 2) = 0;
         end
        
         %Forth Row
          if y(column,row + 3) > 185
            y(column,row + 3) = 255;
        else
            y(column,row + 3) = 0;
          end
        if y(column + 1,row + 3) > 201
            y(column + 1,row + 3) = 255;
        else
            y(column + 1,row + 3) = 0;
        end
        if y(column + 2,row + 3) > 193
            y(column + 2,row + 3) = 255;
        else
            y(column + 2,row + 3) = 0;
        end
        if y(column + 3,row + 3) > 139
            y(column + 3,row + 3) = 255;
        else
            y(column + 3,row + 3) = 0;
        end
        if y(column + 4,row + 3) > 70
            y(column + 4,row + 3) = 255;
        else
            y(column + 4,row + 3) = 0;
        end
        if y(column + 5,row + 3) > 54
            y(column + 5,row + 3) = 255;
        else
            y(column + 5,row + 3) = 0;
        end
        if y(column + 6,row + 3) > 62
            y(column + 6,row + 3) = 255;
        else
            y(column + 6,row + 3) = 0;
        end
        if y(column + 7,row + 3) > 116
            y(column + 7,row + 3) = 255;
        else
            y(column + 7,row + 3) = 0;
        end
        
        %Fifth Row
        if y(column,row + 4) > 108
            y(column,row + 4) = 255;
        else
            y(column,row + 4) = 0;
        end
        if y(column + 1,row + 4) > 93
            y(column + 1,row + 4) = 255;
        else
            y(column + 1,row + 4) = 0;
        end
        if y(column + 2,row + 4) > 100
            y(column + 2,row + 4) = 255;
        else
            y(column + 2,row + 4) = 0;
        end
        if y(column + 3,row + 4) > 124
            y(column + 3,row + 4) = 255;
        else
            y(column + 3,row + 4) = 0;
        end
        if y(column + 4,row + 4) > 145
            y(column + 4,row + 4) = 255;
        else
            y(column + 4,row + 4) = 0;
        end
        if y(column + 5,row + 4) > 162
            y(column + 5,row + 4) = 255;
        else
            y(column + 5,row + 4) = 0;
        end
        if y(column + 6,row + 4) > 155
            y(column + 6,row + 4) = 255;
        else
            y(column + 6,row + 4) = 0;
        end
        if y(column + 7,row + 4) > 131
            y(column + 7,row + 4) = 255;
        else
            y(column + 7,row + 4) = 0;
        end
        
        %Sixth Row
        if y(column,row + 5) > 39
            y(column,row + 5) = 255;
        else
            y(column,row + 5) = 0;
        end
        if y(column + 1,row + 5) > 31
            y(column + 1,row + 5) = 255;
        else
            y(column + 1,row + 5) = 0;
        end
        if y(column + 2,row + 5) > 23
            y(column + 2,row + 5) = 255;
        else
            y(column + 2,row + 5) = 0;
        end
        if y(column + 3,row + 5) > 77
            y(column + 3,row + 5) = 255;
        else
            y(column + 3,row + 5) = 0;
        end
        if y(column + 4,row + 5) > 216
            y(column + 4,row + 5) = 255;
        else
            y(column + 4,row + 5) = 0;
        end
        if y(column + 5,row + 5) > 224
            y(column + 5,row + 5) = 255;
        else
            y(column + 5,row + 5) = 0;
        end
        if y(column + 6,row + 5) > 232
            y(column + 6,row + 5) = 255;
        else
            y(column + 6,row + 5) = 0;
        end
        if y(column + 7,row + 5) > 178
            y(column + 7,row + 5) = 255;
        else
            y(column + 7,row + 5) = 0;
        end
        
        %Seventh Row
        if y(column,row + 6) > 46
            y(column,row + 6) = 255;
        else
            y(column,row + 6) = 0;
        end
        if y(column + 1,row + 6) > 8
            y(column + 1,row + 6) = 255;
        else
            y(column + 1,row + 6) = 0;
        end
        if y(column + 2,row + 6) > 15
            y(column + 2,row + 6) = 255;
        else
            y(column + 2,row + 6) = 0;
        end
        if y(column + 3,row + 6) > 85
            y(column + 3,row + 6) = 255;
        else
            y(column + 3,row + 6) = 0;
        end
        if y(column + 4,row + 6) > 209
            y(column + 4,row + 6) = 255;
        else
            y(column + 4,row + 6) = 0;
        end
        if y(column + 5,row + 6) > 247
            y(column + 5,row + 6) = 255;
        else
            y(column + 5,row + 6) = 0;
        end
        if y(column + 6,row + 6) > 240
            y(column + 6,row + 6) = 255;
        else
            y(column + 6,row + 6) = 0;
        end
        if y(column + 7,row + 6) > 170
            y(column + 7,row + 6) = 255;
        else
            y(column + 7,row + 6) = 0;
        end
        
        %Eigth Row
        if y(column,row + 7) > 70
            y(column,row + 7) = 255;
        else
            y(column,row + 7) = 0;
        end
        if y(column + 1,row + 7) > 54
            y(column + 1,row + 7) = 255;
        else
            y(column + 1,row + 7) = 0;
        end
        if y(column + 2,row + 7) > 62
            y(column + 2,row + 7) = 255;
        else
            y(column + 2,row + 7) = 0;
        end
        if y(column + 3,row + 7) > 116
            y(column + 3,row + 7) = 255;
        else
            y(column + 3,row + 7) = 0;
        end
        if y(column + 4,row + 7) > 185
            y(column + 4,row + 7) = 255;
        else
            y(column + 4,row + 7) = 0;
        end
        if y(column + 5,row + 7) > 201
            y(column + 5,row + 7) = 255;
        else
            y(column + 5,row + 7) = 0;
        end
        if y(column + 6,row + 7) > 193
            y(column + 6,row + 7) = 255;
        else
            y(column + 6,row + 7) = 0;
        end
        if y(column + 7,row + 7) > 139
            y(column + 7,row + 7) = 255;
        else
            y(column + 7,row + 7) = 0;
        end

    end    
end


halftone_img = imbinarize (uint8(y));%undo semicolon to see every array
figure;imshow(halftone_img);title('Classical 4 Ordered Dithering');
imwrite(halftone_img,'lena_Classic4.bmp');

Gauss_img = imgaussfilt(y,1.3); %GaussianFilter
HPSNR = psnr(Gauss_img,x,255)
