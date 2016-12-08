function [ I ] = embeding( x1,y1,I,w,alpha )



for p1 = 1:x1
    for q1 = 1:y1
        I(p1,q1) = (1 - alpha)*w(p1,q1) + alpha * I(p1,q1);
        
    end
end


end

