function [ ges ] = S( n )
    val = 1;
    ges = 0;
    for i=3:n
        val = val + (i-1)
        ges = ges+(i * val) 
    end
end
% function S = S(n)
% S = 0;
%     for k = 3:n
%         S = S + k*sum(1:k-1);
%     end
% end

