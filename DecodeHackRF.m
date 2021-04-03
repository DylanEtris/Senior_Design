function [realData, complexData] = DecodeHackRF(filePath, sampleNum)
%filePath = '106_5.bin';
x1 = -0.512 * 128 / 128;
x2 = 0.512 * 127 / 128;
n = 256;
y = linspace(x1,x2,n);

fileID = fopen(filePath);
data = fread (fileID, [sampleNum, 2], 'uint8');
realData = data(:, 1);
complexData = data(:, 2);
try
    for k = 1:length(realData)
        realData(k) = y(realData(k) + 1);
        complexData(k) = y(complexData(k) + 1);
    end
catch ME
    fprintf("%s", ME.message)
end
end