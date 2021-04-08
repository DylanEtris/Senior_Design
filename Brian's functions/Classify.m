function classification = Classify(obw)
if (obw > 1e5)
    classification = 'W';
else
    classification = 'B';
end