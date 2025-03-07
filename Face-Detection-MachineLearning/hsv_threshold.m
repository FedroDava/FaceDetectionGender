function y=hsv_threshold(H,S,V,warna)
[m n]=size(H);
for i=1:m,
    for j=1:n,
        if warna=='k'
            if ((H(i,j)>=0 && H(i,j)<=56) && (S(i,j)>=46 && S(i,j)<=66 && V(i,j)>=0 && V(i,j)<=255))
                y(i,j)=255;
            else
                y(i,j)=0;
            end;
        end;
        if warna=='m'
            if ((H(i,j)>=0 && H(i,j)<=56) && (S(i,j)>=46 && S(i,j)<=66 && V(i,j)>=0 && V(i,j)<=255))
                y(i,j)=255;
            else
                y(i,j)=0;
            end;
        end;
        if warna=='b'
            if ((H(i,j)>=0 && H(i,j)<=56) && (S(i,j)>=46 && S(i,j)<=66 && V(i,j)>=0 && V(i,j)<=255))
                y(i,j)=255;
            else
                y(i,j)=0;
            end;
        end;
    end;
end;
