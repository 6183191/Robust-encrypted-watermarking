function [ I ] = encryption( x1,y1,I,key )



for p = 1:x1
    for q = 1:y1
        I(p,q) = mod((key(p,q) + I(p,q)),256);
    end
end

end

