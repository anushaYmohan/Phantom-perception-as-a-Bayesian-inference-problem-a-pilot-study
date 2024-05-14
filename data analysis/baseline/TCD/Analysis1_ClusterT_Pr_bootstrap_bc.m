%% Analysis - Cluster-based permutation
% This is the 3.3 section of the data analysis.
% We aim to measure the difference of ERP between perceivers and
% non-perceivers in the Prior session by means of cluster-based permutation test.
%
% INPUT data for this script:
%   * ERP files processed by Fieldtrip: 'xxx_preproc_ERP_ST.mat'
%
% TASKS this processing script should accomplish:
%   * Perform cluster-based independent t test for two groups
%   * Plot the cluster that shows most significant difference
%
% Main OUTPUT data for this script:
%   * Results of cluster-based analysis: 'ClusterT_Pr_xx_Per_NPer.mat'
% 
% Next step:
%   * Topoplot
%       * \2 DataAppendixScripts\DataAppendix1_TopoPlot.mat
%   * Correlation test among neural and behavioural data
%       * \3 AnalysisScrpits\Analysis4_Prepare_correlation_test.mat

clear all

% Open the Input Data Files
cd('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\');

% Set up global parameters

sublists  = {'SDT001','AAT002','CAS003','MUS004','OET005','EAW006', ...
            'NIS007','CUD008','PEB009','EOS012','RNZ014','AMY015', ...
            'PBC016','CHY017','CRY018','TAA019','CAS020','EUS021','GYW022', ...
            'ROR024','LAS026','JUT028','DIT029','AOR030','SOS031', ...
            'LAS032','SRS033','OOS034','ELR035','SES036','DUS037','MRV038', ...
            'LAS039','SAW040','MIR041','CEX043','SOS044','REZ045','LAS046'};

subnames  = {'sdt_001','aat_002','cas_003','mus_004','oet_005','eaw_006',...
            'nis_007','cud_008','peb_009','eos_012','rnz_014','amy_015',...
            'pbc_016','chy_017', 'cry_018','taa_019','cas_020','eus_021','gyw_022', ...
            'ror_024','las_026','jut_028','dit_029','aor_030','sos_031', ...
            'las_032','srs_033','oos_034','elr_035','ses_036','dus_037','mrv_038', ...
            'las_039','saw_040','mir_041','cex_043','sos_044','rez_045','las_046'};

plists_Pr  = {'SDT001', 'AAT002', 'CAS003', 'EAW006', 'NIS007', 'CUD008', 'EOS012',...
           'CHY017','CRY018','TAA019', 'CAS020', 'DIT029', 'AOR030', 'LAS032',... 
           'SRS033', 'DUS037', 'SAW040', 'MIR041', 'REZ045', 'LAS046'};

pnames_Pr  = {'sdt_001', 'aat_002', 'cas_003', 'eaw_006', 'nis_007', 'cud_008',...
           'eos_012', 'chy_017', 'cry_018' 'taa_019', 'chy_017', 'cry_018' 'cas_020', 'dit_029',...
           'aor_030', 'las_032', 'srs_033', 'dus_037', 'saw_040', 'mir_041',... 
           'rez_045', 'las_046'};

nplists_Pr = {'MUS004', 'OET005', 'PEB009', 'RNZ014', 'AMY015', 'PBC016', 'EUS021', ...
           'GYW022', 'ROR024', 'LAS026', 'JUT028', 'SOS031', 'OOS034', 'ELR035',... 
           'SES036', 'MRV038', 'LAS039', 'CEX043', 'SOS044'};

npnames_Pr = {'mus_004', 'oet_005', 'peb_009', 'rnz_014', 'amy_015', 'pbc_016',...
           'eus_021', 'gyw_022', 'ror_024', 'las_026', 'jut_028', 'sos_031',...
           'oos_034', 'elr_035', 'ses_036', 'mrv_038', 'las_039', 'cex_043','sos_044'};

inputpath  = 'D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\';
outputpath = 'D:\2. Tinnitus Priors ERP\Revision\Matlab data\TCD data\';

addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
addpath('D:\2. Tinnitus Priors ERP\Revision\Matlab codes');
%addpath('D:\1 Projects (offline)\7 Evidence of susceptibility of hallucination\0 Script\2 AnalysisScripts');

% 0. Define which condition

conditions = {'FA_0','CR_0'}; %{'FA_0','CR_0','HT_25','MS_25','HT_50','MS_50','HT_75','MS_75'}; 
filename   = 'FA_Per_CR_Nper'; %'FA_Per_CR_Nper';

%% 1. Load averaged ERP of individuals for each conditions
Per_ERP_avg = [];
Nper_ERP = [];

ip  = 1;
inp = 1;

for isub = 1:length(sublists)

    display(['Loading averaged ERPs for: ',sublists{isub}])
     
    if find(strcmp(plists_Pr,sublists{isub}))
        load(strcat(inputpath,sublists{isub},'\',subnames{isub},'_',conditions{1},'_preproc_ERP_bc.mat'));
        %Per_ERP_avg{ip} = data_ERP;
        %ip = ip + 1;
    elseif find(strcmp(nplists_Pr,sublists{isub}))
        load(strcat(inputpath,sublists{isub},'\',subnames{isub},'_',conditions{2},'_preproc_ERP_ST_bc.mat'));
        %Nper_ERP{inp} = data_ERP_ST;
        %inp = inp + 1;
    end
end

Per_ERP_avg{1} = sdt_001_FA_0_preproc_ERP_bc;
Per_ERP_avg{2} = aat_002_FA_0_preproc_ERP_bc;
Per_ERP_avg{3} = cas_003_FA_0_preproc_ERP_bc;
Per_ERP_avg{4} = eaw_006_FA_0_preproc_ERP_bc;
Per_ERP_avg{5} = nis_007_FA_0_preproc_ERP_bc;
Per_ERP_avg{6} = cud_008_FA_0_preproc_ERP_bc;
Per_ERP_avg{7} = eos_012_FA_0_preproc_ERP_bc;
Per_ERP_avg{8} = chy_017_FA_0_preproc_ERP_bc;
Per_ERP_avg{9} = cry_018_FA_0_preproc_ERP_bc;
Per_ERP_avg{10} = taa_019_FA_0_preproc_ERP_bc;
Per_ERP_avg{11} = cas_020_FA_0_preproc_ERP_bc;
Per_ERP_avg{12} = dit_029_FA_0_preproc_ERP_bc;
Per_ERP_avg{13} = aor_030_FA_0_preproc_ERP_bc;
Per_ERP_avg{14} = las_032_FA_0_preproc_ERP_bc;
Per_ERP_avg{15} = srs_033_FA_0_preproc_ERP_bc;
Per_ERP_avg{16} = dus_037_FA_0_preproc_ERP_bc;
Per_ERP_avg{17} = saw_040_FA_0_preproc_ERP_bc;
Per_ERP_avg{18} = mir_041_FA_0_preproc_ERP_bc;
Per_ERP_avg{19} = rez_045_FA_0_preproc_ERP_bc;
Per_ERP_avg{20} = las_046_FA_0_preproc_ERP_bc;

Nper_ERP{1} = mus_004_CR_0_preproc_ERP_ST_bc;
Nper_ERP{2} = oet_005_CR_0_preproc_ERP_ST_bc;
Nper_ERP{3} = peb_009_CR_0_preproc_ERP_ST_bc;
Nper_ERP{4} = rnz_014_CR_0_preproc_ERP_ST_bc;
Nper_ERP{5} = amy_015_CR_0_preproc_ERP_ST_bc;
Nper_ERP{6} = pbc_016_CR_0_preproc_ERP_ST_bc;
Nper_ERP{7} = eus_021_CR_0_preproc_ERP_ST_bc;
Nper_ERP{8} = gyw_022_CR_0_preproc_ERP_ST_bc;
Nper_ERP{9} = ror_024_CR_0_preproc_ERP_ST_bc;
Nper_ERP{10} = las_026_CR_0_preproc_ERP_ST_bc;
Nper_ERP{11} = jut_028_CR_0_preproc_ERP_ST_bc;
Nper_ERP{12} = sos_031_CR_0_preproc_ERP_ST_bc;
Nper_ERP{13} = oos_034_CR_0_preproc_ERP_ST_bc;
Nper_ERP{14} = elr_035_CR_0_preproc_ERP_ST_bc;
Nper_ERP{15} = ses_036_CR_0_preproc_ERP_ST_bc;
Nper_ERP{16} = mrv_038_CR_0_preproc_ERP_ST_bc;
Nper_ERP{17} = las_039_CR_0_preproc_ERP_ST_bc;
Nper_ERP{18} = cex_043_CR_0_preproc_ERP_ST_bc;
Nper_ERP{19} = sos_044_CR_0_preproc_ERP_ST_bc;


%% 2. Cluster based permutation test for Perceiver vs non-perceiver
% cluster based permutation test
ANS      = 'A'; % single trials
t_method = 'indepsamplesT';
iter_num = 100;
% if strcmp(conditions{1},'FA_0')
%     num = 50;
% elseif strcmp(conditions{1},'CR_0')
%     num = 38;
% end
pmap = [];
Tstat_map = [];

for iter = 1:iter_num

    display(strcat({'Running iteration: '},num2str(iter)));


    for isub = 1:length(Nper_ERP)
        % randomly extract 50 trials
        cfg = [];
        cfg.trials  = randperm(size(Nper_ERP{isub}.trial,1),50);
        cfg.keeptrials = 'no';
        
        % extract averaged ERP
        Nper_ERP_avg{isub} = ft_timelockanalysis(cfg, Nper_ERP{isub});
    end

    Tstat_Pr = f_cluster_t_analysis(ANS,t_method,Per_ERP_avg,Nper_ERP_avg);
    pmask_map(iter,:,:) = Tstat_Pr.mask;
    pmap(iter) = Tstat_Pr.posclusters(1).prob;
    Tstat_map(iter,:,:)    = Tstat_Pr.posclusterslabelmat;
    % 
    %save(strcat(outputpath,'ClusterT_Pr_',group,'_',filename),'Tstat_Pr');
    
end

save(strcat(outputpath,'ClusterT_Pr_',filename,'_Bootstrap_pmap_bc'),'pmap');
save(strcat(outputpath,'ClusterT_Pr_',filename,'_Bootstrap_pmask_bc'),'pmask_map');
save(strcat(outputpath,'ClusterT_Pr_',filename,'_Bootstrap_Tstat_map_bc'),'Tstat_map');

%% Average 

Nper_ERP_avg_sub = [];

for iter = 1:100

    display(strcat({'Running iteration: '},num2str(iter)));


    for isub = 1:length(Nper_ERP)
        % randomly extract 50 trials
        cfg = [];
        cfg.trials  = randperm(size(Nper_ERP{isub}.trial,1),50);
        cfg.keeptrials = 'no';
        
        % extract averaged ERP
        Nper_ERP_avg{isub,iter} = ft_timelockanalysis(cfg, Nper_ERP{isub});
    end

%     Tstat_Pr = f_cluster_t_analysis(ANS,t_method,Per_ERP_avg,Nper_ERP_avg);
%     pmap(iter) = Tstat_Pr.posclusters(1).prob;
%     Tstat_map(iter,:,:)    = Tstat_Pr.posclusterslabelmat;
    % 
    %save(strcat(outputpath,'ClusterT_Pr_',group,'_',filename),'Tstat_Pr');
    
end
