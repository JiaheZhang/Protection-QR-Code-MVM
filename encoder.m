function [secretImg] = encoder(code,mask1,mask2)
%ENCODER encoder
%   inputArg code,mask1,mask2
%   outputArg secret Img
    R=(1-mask1).*(1-mask2)+mask1.*(1-code);
    G=(1-mask2).*code+mask1.*(1-mask2).*(1-code)+mask1.*mask2.*code;
    B=(1-mask1).*(1-code)+mask1.*(1-mask2).*(1-code)+mask1.*mask2.*code;
    secretImg=cat(3,R,G,B);
end

