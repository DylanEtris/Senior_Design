function classification = Classify(obw)
if (obw > 1000)
    classification = 'W';
else
    classification = 'B';
end