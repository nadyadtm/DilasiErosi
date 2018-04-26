x = imread('no.jpg');
x = im2bw(x);
image_baru = imcomplement(x);
[tinggi, lebar]=size(image_baru);

image_fix = double(image_baru);
for i=2 : tinggi-2
    for j=2 : lebar-2
        if image_baru(i,j)==1
            if image_fix(i,j-1)==0 || image_fix(i,j+1)==0 || image_fix(i-1,j)==0 || image_fix(i+1,j)==0
                image_fix(i,j)=2;
            end
        end
    end
end

image_fix_banget = zeros(tinggi,lebar);

for i=1 : tinggi
    for j=1 : lebar
        if image_fix(i,j)==1
            image_fix_banget(i,j)=1;
        end
    end
end

subplot(1,2,1), subimage(x);
subplot(1,2,2), subimage(image_fix_banget);