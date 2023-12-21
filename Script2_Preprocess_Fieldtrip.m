%% Preprocess - Fieldtrop
% This is the SECOND section of data processing. 
% We aim to preprocee the final data from EEGLAB for further analysis by
% Fieldtrip.
%
% INPUT data for this script:
%   * final files processed by EEGLAB: 'xxx_final.set'
%
% TASKS this script should accomplish:
%   * Extract ERP datasets with trial information for fieldtrip analysis per bins & subjects
%   * Extract averaged ERP datasets for fieldtrip analysis per bins & subjects
%
% Main OUTPUT data for this script:
%   * ERP dataset with trails included: 'xxx_preproc_ERP_ST.mat'
%   * ERP average dataset: 'xxx_preproc_ERP.mat'
% 
% Next step:
%   * Option1 - Cluster based analysis
%       * \3 AnalysisScrpits\Analysis3_ClusterT.mat
%   * Option2 - Fieldtrop ZT single processing
%       * \1ProcessingScripts\Script2_Preprocess_Fieldtrip_ZT_singletrial.mat

clear all

% Open the Input Data Files
cd('D:\1 Projects (offline)\1 Auditory Illusion Project\3 Data\3 AnalysisData\1 Preprocessing_eeglab')

% Set up global parameters

sublists = {'SDT001','AAT002','CAS003','MUS004','OET005','EAW006', ...
            'NIS007','CUD008','PEB009','EOS012','RNZ014','AMY015', ...
            'PBC016','CHY017','CRY018','TAA019','CAS020','EUS021','GYW022', ...
            'ROR024','LAS026','JUT028','DIT029','AOR030','SOS031', ...
            'LAS032','SRS033','OOS034','ELR035','SES036','DUS037','MRV038', ...
            'LAS039','SAW040','MIR041','CEX043','SOS044','REZ045','LAS046'};

subnames = {'sdt_001','aat_002','cas_003','mus_004','oet_005','eaw_006',...
            'nis_007','cud_008','peb_009','eos_012','rnz_014','amy_015',...
            'pbc_016','chy_017','cry_018','taa_019','cas_020','eus_021','gyw_022', ...
            'ror_024','las_026','jut_028','dit_029','aor_030','sos_031', ...
            'las_032','srs_033','oos_034','elr_035','ses_036','dus_037','mrv_038', ...
            'las_039','saw_040','mir_041','cex_043','sos_044','rez_045','las_046'};

inputpath  = 'D:\1 Projects (offline)\1 Auditory Illusion Project\3 Data\3 AnalysisData\1 Preprocessing_eeglab\';
%outputpath = 'D:\1 Projects (offline)\1 Auditory Illusion Project\3 Data\3 AnalysisData\2 Preprocessing_fieldtrip\';
outputpath = 'C:\Users\chenfe\Desktop\CH data\';

addpath('C:\Users\chenfe\Documents\MATLAB\fieldtrip-20210912');
addpath('D:\1 Projects (offline)\1 Auditory Illusion Project\3 Data Collection');
addpath('D:\1 Projects (offline)\1 Auditory Illusion Project\4 Scripts\functions');
addpath('D:\1 Projects (offline)\1 Auditory Illusion Project\4 Scripts\1 ProcessingScripts');
%% Determine the session and condition 

session    = 'Pr';
conditions = {'FA_0','CR_0','HT_75'}; %{'Hits','Thres_0','FA_0','CR_0','HT_25','MS_25','HT_50','MS_50','HT_75','MS_75'};

% session    = 'ZT';
% conditions = {'4k'};%{'4k','1k','wn'};

% session    = 'PE';
% conditions = {'std','dev','omi','omistd'};%{'std','omi','omistd'};
%% Step 1 - Read data and Generate full ERP for specific condition per subject
for icon = 1:length(conditions)
    for i = 1: length(sublists)
        
        disp(strcat({'Working in subject '} ,subnames(i), {' in the '},conditions(icon),{' condition.'}));

        % 1. Read data from EEGLAB to fieldtrip format
        cd(strcat(inputpath,sublists{i}));
        cfg = [];
        cfg.dataset = strcat(subnames{i},'_',session,'_final.set');
        
        %determine which paradigm
        if strcmp(session,'PE')
            cfg = f_trldef_pe(cfg,conditions{icon});
        elseif strcmp(session,'Pr')
            cfg = f_trldef_pr(cfg,conditions{icon});
        elseif strcmp(session,'ZT')
            cfg = f_trldef_zt(cfg,conditions{icon});
        end
        
        data_all = ft_preprocessing(cfg);
        %save(strcat(outputpath,sublists{i},'\',subnames{i},'_',conditions{icon},'_preproc'),'data_all');
        
        % 2. Generation of full ERP ST
        cfg.latency = 'all';
        cfg.keeptrials = 'yes';
        data_ERP_ST = ft_timelockanalysis(cfg, data_all);
        %save(strcat(outputpath,sublists{i},'\',subnames{i},'_',conditions{icon},'_preproc_ERP_ST'),'data_ERP_ST');
        
        % 3. Generation of full ERP
        cfg.latency = 'all';
        cfg.keeptrials = 'no';
        data_ERP = ft_timelockanalysis(cfg, data_all);
        save(strcat(outputpath,sublists{i},'\',subnames{i},'_',conditions{icon},'_preproc_ERP'),'data_ERP');
        
    end
end
