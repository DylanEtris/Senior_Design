function spectrumAnalyzer(sampleRate, signal)
    % Create and configure spectrum analyzer System object
    scope = dsp.SpectrumAnalyzer('ViewType','Spectrum and spectrogram', 'SampleRate',sampleRate);
    
    scope.Title = 'Spectrum of Signal';     
    
    scope(signal);
    while 1
    end
%    Release the System objects
    release(scope);
end