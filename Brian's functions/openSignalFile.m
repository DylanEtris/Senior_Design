function wave = openSignalFile(filename)
txt = fileread(filename);
cac = textscan(txt,  "%f %f");
wave = cat(2,cac{1}, cac{2});
end