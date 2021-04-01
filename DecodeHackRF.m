function x = DecodeHackRF(filePath)
%filePath = '106_5.bin';
x1 = -0.512 * 128 / 128;
x2 = 0.512 * 127 / 128;
n = 256;
y = linspace(x1,x2,n);

fileID = fopen(filePath);
data = fread (fileID, [25, 2], 'uint8');
realData = data(:, 1);
complexData = data(:, 2);
for k = 1:length(realData)
    realData(k) = y(realData(k));
    complexData(k) = y(complexData(k));
end
    x = realData + 1i*complexData;
end