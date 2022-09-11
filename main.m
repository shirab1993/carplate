function licensePlate=main(img)
image = img;
figure; imshow(image);
image = imresize(image, [480 NaN]);
imgray = rgb2gray(image);
figure; imshow(imgray);
imagebinary = imbinarize(imgray);
figure; imshow(imagebinary);
image = edge(imgray, 'sobel');
figure; imshow(image);


image = imdilate(image, strel('diamond', 2));
figure; imshow(image);
image = imfill(image, 'holes');
figure; imshow(image);
image = imerode(image, strel('diamond', 10));


pixtables=regionprops(image,'BoundingBox','Area', 'Image');
area = pixtables.Area;
count = numel(pixtables);
maxarea= area;
boundingBox = pixtables.BoundingBox;
for i=1:count
   if maxarea<pixtables(i).Area
       maxarea=pixtables(i).Area;
       boundingBox=pixtables(i).BoundingBox;
   end
end    


image = imcrop(imagebinary, boundingBox);
image = imresize(image, [240 NaN]);
image = imopen(image, strel('rectangle', [4 4]));
image = bwareaopen(~image, 500);
[high, width] = size(image);


imshow(image);

pixtables=regionprops(image,'BoundingBox','Area', 'Image');
count = numel(pixtables);
licensePlate=[]; 

for i=1:count
   row = length(pixtables(i).Image(1,:));
   col = length(pixtables(i).Image(:,1));
   if row<(high/2) && col>(high/3)
       letter=readLetter(pixtables(i).Image);
       figure; imshow(pixtables(i).Image);
       licensePlate=[licensePlate letter];
   end
end
end
%end

