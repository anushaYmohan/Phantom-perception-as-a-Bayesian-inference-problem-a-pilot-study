function cfg = trialdefinition_10(cfg)
cfg.trialdef.pre =0.1;
cfg.trialdef.post = 3.496;
cfg.trialfun = 'ft_trialfun_10';
cfg = ft_definetrial(cfg);
cfg.continuous = 'yes';
end
