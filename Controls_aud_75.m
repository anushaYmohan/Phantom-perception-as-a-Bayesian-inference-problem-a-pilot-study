%% Sub axm_01
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject axm_01');
%Reading the data
cfg = [];
cfg.dataset = 'axm_01_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
axm_01_aud_LR_75_preproc = ft_preprocessing(cfg);
save axm_01_aud_LR_75_preproc axm_01_aud_LR_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% axm_01_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, axm_01_aud_LR_75_preproc);
% save axm_01_aud_LR_75_preproc_bc axm_01_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
axm_01_aud_LR_75_ERP_ST = ft_timelockanalysis(cfg, axm_01_aud_LR_75_preproc);
save axm_01_aud_LR_75_ERP_ST axm_01_aud_LR_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
axm_01_aud_LR_75_ERP = ft_timelockanalysis(cfg, axm_01_aud_LR_75_preproc);
save axm_01_aud_LR_75_ERP axm_01_aud_LR_75_ERP;

%% Sub jvw_16
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject jvw_16');
%Reading the data
cfg = [];
cfg.dataset = 'jvw_16_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
jvw_16_aud_LR_75_preproc = ft_preprocessing(cfg);
save jvw_16_aud_LR_75_preproc jvw_16_aud_LR_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% jvw_16_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, jvw_16_aud_LR_75_preproc);
% save jvw_16_aud_LR_75_preproc_bc jvw_16_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
jvw_16_aud_LR_75_ERP_ST = ft_timelockanalysis(cfg, jvw_16_aud_LR_75_preproc);
save jvw_16_aud_LR_75_ERP_ST jvw_16_aud_LR_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
jvw_16_aud_LR_75_ERP = ft_timelockanalysis(cfg, jvw_16_aud_LR_75_preproc);
save jvw_16_aud_LR_75_ERP jvw_16_aud_LR_75_ERP;

%% Sub jxn_11
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject jxn_11');
%Reading the data
cfg = [];
cfg.dataset = 'jxn_11_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
jxn_11_aud_RL_75_preproc = ft_preprocessing(cfg);
save jxn_11_aud_RL_75_preproc jxn_11_aud_RL_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% jxn_11_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, jxn_11_aud_RL_75_preproc);
% save jxn_11_aud_RL_75_preproc_bc jxn_11_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
jxn_11_aud_RL_75_ERP_ST = ft_timelockanalysis(cfg, jxn_11_aud_RL_75_preproc);
save jxn_11_aud_RL_75_ERP_ST jxn_11_aud_RL_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
jxn_11_aud_RL_75_ERP = ft_timelockanalysis(cfg, jxn_11_aud_RL_75_preproc);
save jxn_11_aud_RL_75_ERP jxn_11_aud_RL_75_ERP;

%% Sub jxo_09
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject jxo_09');
%Reading the data
cfg = [];
cfg.dataset = 'jxo_09_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
jxo_09_aud_RL_75_preproc = ft_preprocessing(cfg);
save jxo_09_aud_RL_75_preproc jxo_09_aud_RL_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% jxo_09_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, jxo_09_aud_RL_75_preproc);
% save jxo_09_aud_RL_75_preproc_bc jxo_09_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
jxo_09_aud_RL_75_ERP_ST = ft_timelockanalysis(cfg, jxo_09_aud_RL_75_preproc);
save jxo_09_aud_RL_75_ERP_ST jxo_09_aud_RL_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
jxo_09_aud_RL_75_ERP = ft_timelockanalysis(cfg, jxo_09_aud_RL_75_preproc);
save jxo_09_aud_RL_75_ERP jxo_09_aud_RL_75_ERP;

%% Sub kxj_15
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject kxj_15');
%Reading the data
cfg = [];
cfg.dataset = 'kxj_15_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
kxj_15_aud_RL_75_preproc = ft_preprocessing(cfg);
save kxj_15_aud_RL_75_preproc kxj_15_aud_RL_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% kxj_15_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, kxj_15_aud_RL_75_preproc);
% save kxj_15_aud_RL_75_preproc_bc kxj_15_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
kxj_15_aud_RL_75_ERP_ST = ft_timelockanalysis(cfg, kxj_15_aud_RL_75_preproc);
save kxj_15_aud_RL_75_ERP_ST kxj_15_aud_RL_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
kxj_15_aud_RL_75_ERP = ft_timelockanalysis(cfg, kxj_15_aud_RL_75_preproc);
save kxj_15_aud_RL_75_ERP kxj_15_aud_RL_75_ERP;

%% Sub lxh_22
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject lxh_22');
%Reading the data
cfg = [];
cfg.dataset = 'lxh_22_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
lxh_22_aud_LR_75_preproc = ft_preprocessing(cfg);
save lxh_22_aud_LR_75_preproc lxh_22_aud_LR_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% lxh_22_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, lxh_22_aud_LR_75_preproc);
% save lxh_22_aud_LR_75_preproc_bc lxh_22_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
lxh_22_aud_LR_75_ERP_ST = ft_timelockanalysis(cfg, lxh_22_aud_LR_75_preproc);
save lxh_22_aud_LR_75_ERP_ST lxh_22_aud_LR_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
lxh_22_aud_LR_75_ERP = ft_timelockanalysis(cfg, lxh_22_aud_LR_75_preproc);
save lxh_22_aud_LR_75_ERP lxh_22_aud_LR_75_ERP;

%% Sub lxo_21
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject lxo_21');
%Reading the data
cfg = [];
cfg.dataset = 'lxo_21_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
lxo_21_aud_LR_75_preproc = ft_preprocessing(cfg);
save lxo_21_aud_LR_75_preproc lxo_21_aud_LR_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% lxo_21_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, lxo_21_aud_LR_75_preproc);
% save lxo_21_aud_LR_75_preproc_bc lxo_21_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
lxo_21_aud_LR_75_ERP_ST = ft_timelockanalysis(cfg, lxo_21_aud_LR_75_preproc);
save lxo_21_aud_LR_75_ERP_ST lxo_21_aud_LR_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
lxo_21_aud_LR_75_ERP = ft_timelockanalysis(cfg, lxo_21_aud_LR_75_preproc);
save lxo_21_aud_LR_75_ERP lxo_21_aud_LR_75_ERP;

%% Sub oxh_24
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject oxh_24');
%Reading the data
cfg = [];
cfg.dataset = 'oxh_24_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
oxh_24_aud_RL_75_preproc = ft_preprocessing(cfg);
save oxh_24_aud_RL_75_preproc oxh_24_aud_RL_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% oxh_24_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, oxh_24_aud_RL_75_preproc);
% save oxh_24_aud_RL_75_preproc_bc oxh_24_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
oxh_24_aud_RL_75_ERP_ST = ft_timelockanalysis(cfg, oxh_24_aud_RL_75_preproc);
save oxh_24_aud_RL_75_ERP_ST oxh_24_aud_RL_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
oxh_24_aud_RL_75_ERP = ft_timelockanalysis(cfg, oxh_24_aud_RL_75_preproc);
save oxh_24_aud_RL_75_ERP oxh_24_aud_RL_75_ERP;

%% Sub pxm_25
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject pxm_25');
%Reading the data
cfg = [];
cfg.dataset = 'pxm_25_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
pxm_25_aud_LR_75_preproc = ft_preprocessing(cfg);
save pxm_25_aud_LR_75_preproc pxm_25_aud_LR_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% pxm_25_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, pxm_25_aud_LR_75_preproc);
% save pxm_25_aud_LR_75_preproc_bc pxm_25_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
pxm_25_aud_LR_75_ERP_ST = ft_timelockanalysis(cfg, pxm_25_aud_LR_75_preproc);
save pxm_25_aud_LR_75_ERP_ST pxm_25_aud_LR_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
pxm_25_aud_LR_75_ERP = ft_timelockanalysis(cfg, pxm_25_aud_LR_75_preproc);
save pxm_25_aud_LR_75_ERP pxm_25_aud_LR_75_ERP;


%% Sub rxv_17
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohanan\Documents\MATLAB\fieldtrip-20210912');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Controls\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes');

disp('Working in subject rxv_17');
%Reading the data
cfg = [];
cfg.dataset = 'rxv_17_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
rxv_17_aud_RL_75_preproc = ft_preprocessing(cfg);
save rxv_17_aud_RL_75_preproc rxv_17_aud_RL_75_preproc;

% %Baseline correction on single trial
% cfg.baseline = [-.2 0];
% cfg.channels = 'all';
% cfg.parameter = 'trial';
% rxv_17_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, rxv_17_aud_RL_75_preproc);
% save rxv_17_aud_RL_75_preproc_bc rxv_17_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
rxv_17_aud_RL_75_ERP_ST = ft_timelockanalysis(cfg, rxv_17_aud_RL_75_preproc);
save rxv_17_aud_RL_75_ERP_ST rxv_17_aud_RL_75_ERP_ST;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
rxv_17_aud_RL_75_ERP = ft_timelockanalysis(cfg, rxv_17_aud_RL_75_preproc);
save rxv_17_aud_RL_75_ERP rxv_17_aud_RL_75_ERP;
