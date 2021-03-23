function wave = openSignalFile(filename)
fd = fopen(filename);
wave = fread(fd, [2,inf], 'double');
end