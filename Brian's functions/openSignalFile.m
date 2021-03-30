function wave = openSignalFile(filename)
wave = importdata(filename, '%d');
wave = split(wave);
wave = complex(str2double(wave(:,1)), str2double(wave(:,2)));
end