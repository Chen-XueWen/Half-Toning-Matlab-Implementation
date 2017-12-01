# Half-Toning-Matlab-Implementation guide
Dithering & Error Diffusion implemented by Chen Xue Wen

Please do not copy and paste the code, try to understand and implement it yourselves.

This is purely for reference to help people to understand better.

Guide by Chen Xue Wen.

# Short Introduction
A Printer can only print binary values: either print or not print. Thus this is where half-toning comes in handy. 

# Dithering

### BayerFive:

.513 .272 .724 .483 .543 .302 .694 .453

.151 .755 .091 .966 .181 .758 .121 .936

.634 .392 .574 .332 .664 .423 .604 .362

.060 .875 .211 .815 .030 .906 .241 .845

.543 .302 .694 .453 .513 .272 .724 .483

.181 .758 .121 .936 .151 .755 .091 .966

.664 .423 .604 .362 .634 .392 .574 .332

.030 .906 .241 .845 .060 .875 .211 .815


## Second Step: Multiply * 255 (Highest Value)


130.815	69.36	184.62	123.165	138.465	77.01	176.97	115.515

38.505	192.525	23.205	246.33	46.155	193.29	30.855	238.68

161.67	99.96	146.37	84.66	169.32	107.865	154.02	92.31

15.3	223.125	53.805	207.825	7.65	231.03	61.455	215.475

138.465	77.01	176.97	115.515	130.815	69.36	184.62	123.165

46.155	193.29	30.855	238.68	38.505	192.525	23.205	246.33

169.32	107.865	154.02	92.31	161.67	99.96	146.37	84.66

7.65	231.03	61.455	215.475	15.3	223.125	53.805	207.825


## Third Step: Comparison

![Alt text](https://github.com/Chen-XueWen/Half-Toning-Matlab-Implementation/blob/master/Theory.jpg)

## Outcome

![Alt text](https://github.com/Chen-XueWen/Half-Toning-Matlab-Implementation/blob/master/BayerDithering.bmp)

# Error Diffusion

### Floyd - Steinberg Implementation:

![Alt text](https://github.com/Chen-XueWen/Half-Toning-Matlab-Implementation/blob/master/ErrorDiffusionGuide.jpg)

## outcome

![Alt text](https://github.com/Chen-XueWen/Half-Toning-Matlab-Implementation/blob/master/lena_Floyd.bmp)
