function spectrumAnalyzer(sampleRate, signal)
    % Create and configure spectrum analyzer System object
    scope = dsp.SpectrumAnalyzer('ViewType','Spectrum and spectrogram',...
                    'TimeResolutionSource','Property',...
                    'SampleRate',sampleRate,'TimeSpanSource','Property',...
                    'TimeSpan',4e-3,'FrequencyResolutionMethod','WindowLength',...
                    'WindowLength',512,'AxesLayout','Horizontal','YLimits',[-40 25]);
               
    scope.Title = ['Spectrum of Signal '];     
               
    scope(signal);
    while(1) 
        1;
    end
    % Release the System objects
    release(scope);           
end