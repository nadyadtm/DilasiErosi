x = imread('no.jpg');
x = im2bw(x);
image_baru = x;
[tinggi, lebar]=size(image_baru);
image_fix = image_baru;
penebal = [0 1 0
          1 1 1
          0 1 0];

for i=2 : tinggi-2
    for j=2 : lebar-2
        if image_baru(i,j)==1
            image_fix(i,j-1) = 1;
            image_fix(i,j)   = 1;
            image_fix(i,j+1) = 1;
            image_fix(i-1,j) = 1;
            image_fix(i+1,j) = 1;
        end
    end
end
subplot(1,2,1), subimage(x);
subplot(1,2,2), subimage(image_fix);