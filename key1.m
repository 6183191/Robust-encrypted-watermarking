I = imread('C:\Users\nihal\Desktop\project\medical image\brain.tif');             %orginal image
W = imread('C:\Users\nihal\Desktop\project\medical image\smoke.tif');
[x1,y1,z1] = size(I);
I1 = I;                                                                    %creating copy of orginal image
W1 = W;

key = zeros(x1,y1);                                                        %creating empty zero matrix for key generation of size of orginal image with height = x1,width = y1
max_intensity = 255;

alpha = rand;                                                              %take some random value that is in b/w [0,1] by default rand is [0,1]

K = key_gen(x1,y1,key,max_intensity,alpha);
I = encryption(x1,y1,I,K);
W = encryption(x1,y1,W,K);
I = embeding(x1,y1,I,W,alpha);
% I = imnoise(I,'salt & pepper',0.02);
% I = imrotate(I,75);
I = decryption( x1,y1,K,I,alpha,W1 );
imshow(I)
% imwrite(I,'C:\Users\nihal\Desktop\project\medical image\enc\embed_0.01.tif');
display1 = 'The value of MEAN_SQURE_ERROR(MSE), PEAK_SIGNAL_TO_NOISE_RATIO(PSNR) AND STRUCTURAL_SIMILARITY_INDEX(SSIMVAL) AT alpha = 0.9944';
disp(display1);

MEAN_SQURE_ERROR = immse(I,W1);
MEAN_SQURE_ERROR
PEAK_SIGNAL_TO_NOISE_RATIO = psnr(I,W1);
PEAK_SIGNAL_TO_NOISE_RATIO
STRUCTURAL_SIMILARITY_INDEX = ssim(I,W1);
STRUCTURAL_SIMILARITY_INDEX
% scatter(alpha,PEAK_SIGNAL_TO_NOISE_RATIO);


% formatSpec = 'MSE is %4.2f  and PSNR is %8.3f and SSIMVAL is %8.3f \n';
% fprintf(formatSpec,meansqureerror,peaksnr,ssimval);




