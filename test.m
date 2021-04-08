[realData, complexData] = DecodeHackRF("106_5.bin", 1e6);
% plot(realData)
Y = fft(realData + 1i*complexData);
plot(abs(Y))
xlabel()