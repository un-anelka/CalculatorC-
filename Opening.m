I = imread("./../Images/blobs.png"); %Read a built-in test image
subplot (1,2,1),imshow(I), title('Original image');
SE= ones(3,3); %Square structuring element
SE1 = strel("disk", 1);

I_open = imopen(I, SE);
subplot (1,2,2), imshow(I_open), title('Result of Opening with 3x3')
