function Tstat = f_cluster_t_analysis(ANS,t_method,Group1,Group2)
    % Neighbour channel template
    load('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118\template\neighbours\biosemi64_neighb.mat');
    
    % set configurations
    cfg = [];
    cfg.latency          = 'all';
    cfg.channel          = 'all';
    cfg.avgoverchan      = 'no';
    cfg.avgovertime      = 'no';
    cfg.method           = 'montecarlo';
    cfg.statistic        = t_method; 
    cfg.correctm         = 'cluster';
    cfg.clusteralpha     = 0.05;
    cfg.clusterstatistic = 'maxsum';
    cfg.clusterthreshold = 'nonparametric_individual';
    cfg.minnbchan        = 2;
    cfg.neighbours       = neighbours;  
    cfg.tail             = 0;
    cfg.clustertail      = 0;
    cfg.alpha            = 0.025;
    cfg.correcttail      = 'alpha';
    cfg.numrandomization = 1000; 

    if strcmp(t_method,'depsamplesT')
        NumSub = length(Group1);
        design(1,:) = [1:NumSub 1:NumSub];
        design(2,:) =[ones(1,NumSub) ones(1,NumSub)*2];
        cfg.uvar    = 1;
        cfg.ivar    = 2;
    elseif strcmp(t_method,'indepsamplesT')
        if strcmp('A',ANS)
            design   = [ones(1,length(Group1)) ones(1,length(Group2))*2];
            cfg.ivar = 1;
        else
            design   = [ones(1,size(Group1.trial,1)) ones(1,size(Group2.trial,1))*2];
            cfg.ivar = 1;
        end
    end
    
    cfg.design = design;
      
    % cluster based permutation test
    if strcmp('A',ANS)
        Tstat = ft_timelockstatistics(cfg,Group1{:},Group2{:});
    else
        Tstat = ft_timelockstatistics(cfg,Group1,Group2);
    end
end