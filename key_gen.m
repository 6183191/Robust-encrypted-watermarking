function [ key ] = key_gen( x1,y1,key,max_intensity,alpha )


key(1,1) = alpha; 
for m = 2:x1                         
    for n = 1
        key(m,n) = abs(max_intensity - (2 * key(m-1,1)));
    end
end


for i = 1:x1
    for j = 2:y1
        y = key(i,j-1);
        y = 2 * y;
        y = max_intensity - y;
        key(i,j) = abs(y);
    end
end                                   %key generation ends here



end

