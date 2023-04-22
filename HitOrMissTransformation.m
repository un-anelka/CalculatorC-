%Load Original image
I = imread("./../Images/blobs.png"); %Read a built-in test image

%Define the two structuring elements
SE1= [0 0 0 0 0; 
      0 0 0 0 0; 
      0 1 1 0 0;
      0 0 1 0 0;
      0 0 0 0 0];

SE2 = [0 0 0 0 0; 
      1 1 1 1 0; 
      0 0 0 1 0;
      0 0 0 1 0;
      0 0 0 1 0];

I_hm = bwhitmiss(I,SE1, SE2);

subplot (1,2,1), imshow(I), title('Original Image');
subplot (1,2,2), imshow(I_hm), title('Hit-or-Miss Operation');
