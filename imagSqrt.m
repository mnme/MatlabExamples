function [ zn ] = imagSqrt(z, n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

r = nthroot(abs(z),n);
OrgPhi = angle(z);
phi = zeros(n,1);
zn = zeros(n,1);

for i = 1:n
    phi(i) = ((OrgPhi+((i-1)*2*pi))/n);
    zn(i) = r * exp(phi(i)*1j);
end


end

