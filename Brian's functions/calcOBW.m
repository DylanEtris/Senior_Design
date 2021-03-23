function o = calcOBW(data)
realdata = data(1,:);
imaginarydata = data(2,:);
signalmagnitude = sqrt(realdata.^2 + imaginarydata.^2);
o = obw(signalmagnitude);
end