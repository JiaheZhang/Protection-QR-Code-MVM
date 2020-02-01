function [ mask ] = generateMask( img_size, block_size,toggle)

mask=zeros(img_size);
mask=imresize(mask,[size(mask,1)/block_size,size(mask,2)/block_size]);
for i=1:size(mask,1)
    for j=1:size(mask,2)
        if(mod(i+j,2)==0)
            mask(i,j)=toggle;
        else
            mask(i,j)=1-toggle;
        end
    end
end
mask=imresize(mask,img_size);
mask=mask.*(mask>0.5);
mask=(1-mask).*((1-mask)>0.5);

end

