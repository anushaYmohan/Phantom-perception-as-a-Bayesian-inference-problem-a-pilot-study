function cfg = trialdefinition_75(cfg)
cfg.trialdef.pre =0.1;
cfg.trialdef.post = 3.496;
cfg.trialfun = 'ft_trialfun_75';
cfg = ft_definetrial(cfg);
cfg.continuous = 'yes';
end
