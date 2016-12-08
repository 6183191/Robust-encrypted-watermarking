function [ I ] = decryption( x1,y1,key,I,alpha,w1)


for p2 = 1:x1
    for q2 = 1:y1
        
        I(p2,q2) = mod(I(p2,q2)+(256 - key(p2,q2)),256);
        
    end
end
for p3 = 1:x1
    for q3 = 1:y1
        
        I(p3,q3) = ((1/alpha)*w1(p3,q3)) - ((1-alpha)/alpha)*I(p3,q3);
        
    end
end

end

