function [tf_db_chan, as_chan, as_freq] = tf_decomp_ERP_TCD(data, Channels, Times)
% [tf_chan, as_chan, as_complex_chan]
EEG = struct();

EEG.srate = 500;
EEG.times = Times;
EEG.pnts =  799;

baseline_window = [-200 -100];
% convert baseline time into indices
[~,baseidx(1)] = min(abs(EEG.times-baseline_window(1)));
[~,baseidx(2)] = min(abs(EEG.times-baseline_window(2)));

num_frex = 173;
min_freq =  1;
max_freq = 44;

% set a few different wavelet widths (number of wavelet cycles)
range_cycles = [2 15];

% other wavelet parameters
frex = linspace(min_freq,max_freq,num_frex);
time = -2:1/250:2;
half_wave = (length(time)-1)/2;
%nCycles = logspace(log10(range_cycles(1)),log10(range_cycles(end)),num_frex);
nCycles = linspace(range_cycles(1), range_cycles(2), num_frex);

EEG.data = data;
% EEG.data = Controls_ST_data_nobc(1).NNcorrect;
EEG.trials = 1;

% FFT parameters
nKern = length(time);
nData = EEG.pnts*EEG.trials;
nConv = nKern+nData-1;

tf_db_chan = [];
%as_complex_chan = struct();
as_chan = struct();

% initialize output time-frequency data
tf = zeros(length(frex),EEG.pnts);

% FFT of data (doesn't change on frequency iteration)
for elec = 1 : length(Channels)
    disp(['Working in channel ' num2str(elec)]);
    dataX = fft(EEG.data(elec,:),nConv);

    as_freq = [];
    for fi=1:length(frex)
        % create wavelet and get its FFT
        s = nCycles(fi)/(2*pi*frex(fi));
        cmw = exp(2*1i*pi*frex(fi).*time) .* exp(-time.^2./(2*s^2));
        cmwX = fft(cmw,nConv);
    
        % run convolution
        as = ifft(cmwX.*dataX,nConv);
        as = as(half_wave+1:end-half_wave);
        as = reshape(as,EEG.pnts,EEG.trials);
        %as_freq(fi,:,:) = as;
        
        % put power data into big matrix
        tf(fi,:) = mean(abs(as).^2,2);
        %as_final(fi,:,:) = abs(as).^2;
        %as_final(fi,:,:) = as_final(fi,:,:) - mean(as_final(fi,baseidx(1):baseidx(2),:),2);
        
    end
    
    % db conversion
    tf_db = 10*log10( bsxfun(@rdivide, tf, mean(tf(:,baseidx(1):baseidx(2)),2)));
    tf_db_chan(:,:,elec) = tf_db;
    
    %tf_chan(elec).name = 'Pz';
    %tf_chan(elec).tf_db = tf_db;
    %as_chan(elec).name = Channels(elec).labels;
    %as_chan(elec).as_db = as_final;
    %as_complex_chan(elec).name = Channels(elec).labels;
    %as_complex_chan(elec).as_freq = as_freq;
   
end
end
