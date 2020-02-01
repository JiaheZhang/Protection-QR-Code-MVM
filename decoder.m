function [decodedImg] = decode(secretImg)
%DECODE decode secret image
%   inputArg secretImg
%   outputArg QR code
    R=secretImg(:,:,1);
    G=secretImg(:,:,2);
    B=secretImg(:,:,3);

    R=double(imbinarize(R,'global'));
    G=double(imbinarize(G,'global'));
    B=double(imbinarize(B,'global'));
    
    decodedImg=(1-B).*G+(1-R).*(1-G).*(1-B)+(1-R).*G.*B;
end

