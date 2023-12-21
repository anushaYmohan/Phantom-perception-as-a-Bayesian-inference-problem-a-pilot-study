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
cd('D:\1 Projects (offline)\6 Top-down vs Bottom-up hallucination\1 Data\3 AnalysisData\2 Preprocessing_fieldtrip')

% Set up global parameters

sublists  = {'SDT001','AAT002','CAS003','MUS004','OET005','EAW006', ...
            'NIS007','CUD008','PEB009','EOS012','RNZ014','AMY015', ...
            'PBC016','TAA019','CAS020','EUS021','GYW022', ...
            'ROR024','LAS026','JUT028','DIT029','AOR030','SOS031', ...
            'LAS032','SRS033','OOS034','ELR035','SES036','DUS037','MRV038', ...
            'LAS039','SAW040','MIR041','CEX043','SOS044','REZ045','LAS046'};

subnames  = {'sdt_001','aat_002','cas_003','mus_004','oet_005','eaw_006',...
            'nis_007','cud_008','peb_009','eos_012','rnz_014','amy_015',...
            'pbc_016','taa_019','cas_020','eus_021','gyw_022', ...
            'ror_024','las_026','jut_028','dit_029','aor_030','sos_031', ...
            'las_032','srs_033','oos_034','elr_035','ses_036','dus_037','mrv_038', ...
            'las_039','saw_040','mir_041','cex_043','sos_044','rez_045','las_046'};

plists_Pr  = {'SDT001', 'AAT002', 'CAS003', 'EAW006', 'NIS007', 'CUD008', 'EOS012',...
           'TAA019', 'CAS020', 'DIT029', 'AOR030', 'LAS032',... 
           'SRS033', 'DUS037', 'SAW040', 'MIR041', 'REZ045', 'LAS046'};

pnames_Pr  = {'sdt_001', 'aat_002', 'cas_003', 'eaw_006', 'nis_007', 'cud_008',...
           'eos_012', 'taa_019', 'cas_020', 'dit_029',...
           'aor_030', 'las_032', 'srs_033', 'dus_037', 'saw_040', 'mir_041',... 
           'rez_045', 'las_046'};

nplists_Pr = {'MUS004', 'OET005', 'PEB009', 'RNZ014', 'AMY015', 'PBC016', 'EUS021', ...
           'GYW022', 'ROR024', 'LAS026', 'JUT028', 'SOS031', 'OOS034', 'ELR035',... 
           'SES036', 'MRV038', 'LAS039', 'CEX043', 'SOS044'};

npnames_Pr = {'mus_004', 'oet_005', 'peb_009', 'rnz_014', 'amy_015', 'pbc_016',...
           'eus_021', 'gyw_022', 'ror_024', 'las_026', 'jut_028', 'sos_031',...
           'oos_034', 'elr_035', 'ses_036', 'mrv_038', 'las_039', 'cex_043','sos_044'};

inputpath  = 'D:\1 Projects (offline)\6 Top-down vs Bottom-up hallucination\1 Data\3 AnalysisData\2 Preprocessing_fieldtrip\';
outputpath = 'D:\1 Projects (offline)\6 Top-down vs Bottom-up hallucination\1 Data\3 AnalysisData\3 Custer based analysis\';

addpath('C:\Users\chenfe\Documents\MATLAB\fieldtrip-20210912');
addpath('D:\1 Projects (offline)\6 Top-down vs Bottom-up hallucination\0 Script\functions');
addpath('D:\1 Projects (offline)\6 Top-down vs Bottom-up hallucination\0 Script\2 AnalysisScripts');

% 0. Define which condition

conditions = {'FA_0','CR_0'}; 
filename   = 'FA_Per_CR_Nper';
%% 1. Load averaged ERP of individuals for each conditions

FA_0_Per = [];
CR_0_NPer = [];
ip  = 1;
inp = 1;

for isub = 1:length(sublists)

    display(['Loading averaged ERPs for: ',sublists{isub}])
     
    if find(strcmp(plists_Pr,sublists{isub}))
        load(strcat(inputpath,sublists{isub},'\',subnames{isub},'_',conditions{1},'_preproc_ERP.mat'));
        FA_0_Per{ip} = data_ERP;
        ip = ip + 1;
    elseif find(strcmp(nplists_Pr,sublists{isub}))
        load(strcat(inputpath,sublists{isub},'\',subnames{isub},'_',conditions{2},'_preproc_ERP.mat'));
        CR_0_NPer{inp} = data_ERP;
        inp = inp + 1;
    end
end

%% 2. Cluster based permutation test for Perceiver vs non-perceiver

% cluster based permutation test
ANS      = 'A'; % single trials
t_method = 'indepsamplesT';
Tstat_Pr = f_cluster_t_analysis(ANS,t_method,FA_0_Per,CR_0_NPer);

%save(strcat(outputpath,'ClusterT_Pr_',filename),'Tstat_Pr');

%% 3. Plot

if exist('Tstat_Pr') == 0
    load(strcat(outputpath,'ClusterT_Pr_',filename));
end

cfg = [];
cfg.channel    = 'all';
cfg.latency    = 'all';
cfg.keeptrials = 'no';
FA_0_alltrl_avg  = ft_timelockgrandaverage(cfg, FA_0_Per{:});
CR_0_alltrl_avg  = ft_timelockgrandaverage(cfg, CR_0_NPer{:});

% Then take the difference of the averages using ft_math
cfg           = [];
cfg.operation = 'subtract';
cfg.parameter = 'avg';
raweffectFICvsFC = ft_math(cfg, FA_0_alltrl_avg, CR_0_alltrl_avg);

% only want to see the extent of the first (i.e. most significant) positive and negative clusters
pos = Tstat_Pr.posclusterslabelmat == 1; % or == 2, or 3, etc.
neg = Tstat_Pr.negclusterslabelmat == 1;

timestep      = 0.025; % timestep between time windows for each subplot (in seconds)
sampling_rate = 500; % Data has a temporal resolution of 300 Hz
sample_count  = length(Tstat_Pr.time);
% number of temporal samples in the statistics object
j = [-.298:timestep:1.298]; % Temporal endpoints (in seconds) of the ERP average computed in each subplot
m = [1:timestep*sampling_rate:sample_count]; % temporal endpoints in M/EEG samples

% First ensure the channels to have the same order in the average and in the statistical output.
% This might not be the case, because ft_math might shuffle the order
[i1,i2] = match_str(raweffectFICvsFC.label, Tstat_Pr.label);

n = 0;
for k = 22:29
   n = n + 1;
   subplot(2,4,n);
   cfg = [];
   cfg.xlim = [j(k) j(k+1)];   % time interval of the subplot
   cfg.zlim = [-2.5 2.5];
   % If a channel is in a to-be-plotted cluster, then
   % the element of pos_int with an index equal to that channel
   % number will be set to 1 (otherwise 0).

   % Next, check which channels are in the clusters over the
   % entire time interval of interest.
   pos_int = zeros(numel(raweffectFICvsFC.label),1);
   neg_int = zeros(numel(raweffectFICvsFC.label),1);
   pos_int(i1) = all(pos(i2, m(k):m(k+1)), 2);
   neg_int(i1) = all(neg(i2, m(k):m(k+1)), 2);

   cfg.highlight   = 'on';
   % Get the index of the to-be-highlighted channel
   cfg.highlightchannel = find(pos_int | neg_int);
   cfg.comment     = 'xlim';
   cfg.commentpos  = 'title';
   cfg.layout      = 'biosemi64.lay';
   cfg.interactive = 'no';
   cfg.figure      = 'gca'; % plots in the current axes, here in a subplot
   ft_topoplotER(cfg, raweffectFICvsFC);
   
end