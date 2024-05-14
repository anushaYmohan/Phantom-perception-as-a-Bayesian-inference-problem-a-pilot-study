function [trl, event] = ft_trialfun_75(cfg)

% FT_TRIALFUN_EXAMPLE1 is an example trial function. It searches for events
% of type "trigger" and specifically for a trigger with value B4,7(1)
% 
% You would use this function as follows
%   cfg           = [];   
%   cfg.dataset   = string, containing filename or directory
%   cfg.trialfun  = 'ft_trialfun_example1';
%   cfg           = definetrial(cfg);
%   data          = preprocessing(cfg);
%
% You can use this example trial function as template for your oNN
% conditial trial definitions.
%
% See also FT_DEFINETRIAL, FT_PREPROCESSING

% read the header information and the events from the data
hdr   = ft_read_header(cfg.dataset);
event = ft_read_event(cfg.dataset);

% search for "trigger" events
binlabel  = {event(find(strcmp('trigger', {event.type}))).binlabel}';
sample = [event(find(strcmp('trigger', {event.type}))).sample]';

% determine the number of samples before and after the trigger
pretrig  = -round(cfg.trialdef.pre  * hdr.Fs);
posttrig =  round(cfg.trialdef.post * hdr.Fs);

% look for the combination of a trigger with bini = 3 and corresponding
% bini = -1 
trl = [];
for j = 1:(length(binlabel)-1)
  trg1 = binlabel(j);
  %trg2 = bini(j+1);
  if strcmp(trg1, 'B1(75)') == 1 
    trlbegin = sample(j) + pretrig;       
    trlend   = sample(j) + posttrig;       
    offset   = pretrig;
    newtrl   = [trlbegin trlend offset];
    trl      = [trl; newtrl];
  end
end

