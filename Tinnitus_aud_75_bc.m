%% Sub axl_13
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject axl_13');
%Reading the data
cfg = [];
cfg.dataset = 'axl_13_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
axl_13_aud_RL_75_preproc = ft_preprocessing(cfg);
save axl_13_aud_RL_75_preproc axl_13_aud_RL_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
axl_13_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, axl_13_aud_RL_75_preproc);
save axl_13_aud_RL_75_preproc_bc axl_13_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
axl_13_aud_RL_75_ERP_ST_bc = ft_timelockanalysis(cfg, axl_13_aud_RL_75_preproc_bc);
save axl_13_aud_RL_75_ERP_ST_bc axl_13_aud_RL_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
axl_13_aud_RL_75_ERP_bc = ft_timelockanalysis(cfg, axl_13_aud_RL_75_preproc_bc);
save axl_13_aud_RL_75_ERP_bc axl_13_aud_RL_75_ERP_bc;

%% Sub bxr_06
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject bxr_06');
%Reading the data
cfg = [];
cfg.dataset = 'bxr_06_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
bxr_06_aud_LR_75_preproc = ft_preprocessing(cfg);
save bxr_06_aud_LR_75_preproc bxr_06_aud_LR_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
bxr_06_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, bxr_06_aud_LR_75_preproc);
save bxr_06_aud_LR_75_preproc_bc bxr_06_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
bxr_06_aud_LR_75_ERP_ST_bc = ft_timelockanalysis(cfg, bxr_06_aud_LR_75_preproc_bc);
save bxr_06_aud_LR_75_ERP_ST_bc bxr_06_aud_LR_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
bxr_06_aud_LR_75_ERP_bc = ft_timelockanalysis(cfg, bxr_06_aud_LR_75_preproc_bc);
save bxr_06_aud_LR_75_ERP_bc bxr_06_aud_LR_75_ERP_bc;

%% Sub evw_07
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject evw_07');
%Reading the data
cfg = [];
cfg.dataset = 'evw_07_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
evw_07_aud_RL_75_preproc = ft_preprocessing(cfg);
save evw_07_aud_RL_75_preproc evw_07_aud_RL_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
evw_07_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, evw_07_aud_RL_75_preproc);
save evw_07_aud_RL_75_preproc_bc evw_07_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
evw_07_aud_RL_75_ERP_ST_bc = ft_timelockanalysis(cfg, evw_07_aud_RL_75_preproc_bc);
save evw_07_aud_RL_75_ERP_ST_bc evw_07_aud_RL_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
evw_07_aud_RL_75_ERP_bc = ft_timelockanalysis(cfg, evw_07_aud_RL_75_preproc_bc);
save evw_07_aud_RL_75_ERP_bc evw_07_aud_RL_75_ERP_bc;

%% Sub ivl_14
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject ivl_14');
%Reading the data
cfg = [];
cfg.dataset = 'ivl_14_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
ivl_14_aud_LR_75_preproc = ft_preprocessing(cfg);
save ivl_14_aud_LR_75_preproc ivl_14_aud_LR_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
ivl_14_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, ivl_14_aud_LR_75_preproc);
save ivl_14_aud_LR_75_preproc_bc ivl_14_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
ivl_14_aud_LR_75_ERP_ST_bc = ft_timelockanalysis(cfg, ivl_14_aud_LR_75_preproc_bc);
save ivl_14_aud_LR_75_ERP_ST_bc ivl_14_aud_LR_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
ivl_14_aud_LR_75_ERP_bc = ft_timelockanalysis(cfg, ivl_14_aud_LR_75_preproc_bc);
save ivl_14_aud_LR_75_ERP_bc ivl_14_aud_LR_75_ERP_bc;

%% Sub ixe_12
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject ixe_12');
%Reading the data
cfg = [];
cfg.dataset = 'ixe_12_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
ixe_12_aud_LR_75_preproc = ft_preprocessing(cfg);
save ixe_12_aud_LR_75_preproc ixe_12_aud_LR_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
ixe_12_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, ixe_12_aud_LR_75_preproc);
save ixe_12_aud_LR_75_preproc_bc ixe_12_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
ixe_12_aud_LR_75_ERP_ST_bc = ft_timelockanalysis(cfg, ixe_12_aud_LR_75_preproc_bc);
save ixe_12_aud_LR_75_ERP_ST_bc ixe_12_aud_LR_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
ixe_12_aud_LR_75_ERP_bc = ft_timelockanalysis(cfg, ixe_12_aud_LR_75_preproc_bc);
save ixe_12_aud_LR_75_ERP_bc ixe_12_aud_LR_75_ERP_bc;

%% Sub jvj_18
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject jvj_18');
%Reading the data
cfg = [];
cfg.dataset = 'jvj_18_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
jvj_18_aud_LR_75_preproc = ft_preprocessing(cfg);
save jvj_18_aud_LR_75_preproc jvj_18_aud_LR_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
jvj_18_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, jvj_18_aud_LR_75_preproc);
save jvj_18_aud_LR_75_preproc_bc jvj_18_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
jvj_18_aud_LR_75_ERP_ST_bc = ft_timelockanalysis(cfg, jvj_18_aud_LR_75_preproc_bc);
save jvj_18_aud_LR_75_ERP_ST_bc jvj_18_aud_LR_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
jvj_18_aud_LR_75_ERP_bc = ft_timelockanalysis(cfg, jvj_18_aud_LR_75_preproc_bc);
save jvj_18_aud_LR_75_ERP_bc jvj_18_aud_LR_75_ERP_bc;

%% Sub kxj_19
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject kxj_19');
%Reading the data
cfg = [];
cfg.dataset = 'kxj_19_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
kxj_19_aud_RL_75_preproc = ft_preprocessing(cfg);
save kxj_19_aud_RL_75_preproc kxj_19_aud_RL_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
kxj_19_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, kxj_19_aud_RL_75_preproc);
save kxj_19_aud_RL_75_preproc_bc kxj_19_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
kxj_19_aud_RL_75_ERP_ST_bc = ft_timelockanalysis(cfg, kxj_19_aud_RL_75_preproc_bc);
save kxj_19_aud_RL_75_ERP_ST_bc kxj_19_aud_RL_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
kxj_19_aud_RL_75_ERP_bc = ft_timelockanalysis(cfg, kxj_19_aud_RL_75_preproc_bc);
save kxj_19_aud_RL_75_ERP_bc kxj_19_aud_RL_75_ERP_bc;

%% Sub lxh_10
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject lxh_10');
%Reading the data
cfg = [];
cfg.dataset = 'lxh_10_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
lxh_10_aud_LR_75_preproc = ft_preprocessing(cfg);
save lxh_10_aud_LR_75_preproc lxh_10_aud_LR_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
lxh_10_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, lxh_10_aud_LR_75_preproc);
save lxh_10_aud_LR_75_preproc_bc lxh_10_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
lxh_10_aud_LR_75_ERP_ST_bc = ft_timelockanalysis(cfg, lxh_10_aud_LR_75_preproc_bc);
save lxh_10_aud_LR_75_ERP_ST_bc lxh_10_aud_LR_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
lxh_10_aud_LR_75_ERP_bc = ft_timelockanalysis(cfg, lxh_10_aud_LR_75_preproc_bc);
save lxh_10_aud_LR_75_ERP_bc lxh_10_aud_LR_75_ERP_bc;

%% Sub pxp_04
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject pxp_04');
%Reading the data
cfg = [];
cfg.dataset = 'pxp_04_aud_LR_final.set';
cfg = trialdefinition_75(cfg);
pxp_04_aud_LR_75_preproc = ft_preprocessing(cfg);
save pxp_04_aud_LR_75_preproc pxp_04_aud_LR_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
pxp_04_aud_LR_75_preproc_bc = ft_timelockbaseline(cfg, pxp_04_aud_LR_75_preproc);
save pxp_04_aud_LR_75_preproc_bc pxp_04_aud_LR_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
pxp_04_aud_LR_75_ERP_ST_bc = ft_timelockanalysis(cfg, pxp_04_aud_LR_75_preproc_bc);
save pxp_04_aud_LR_75_ERP_ST_bc pxp_04_aud_LR_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
pxp_04_aud_LR_75_ERP_bc = ft_timelockanalysis(cfg, pxp_04_aud_LR_75_preproc_bc);
save pxp_04_aud_LR_75_ERP_bc pxp_04_aud_LR_75_ERP_bc;


%% Sub rxp_02
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject rxp_02');
%Reading the data
cfg = [];
cfg.dataset = 'rxp_02_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
rxp_02_aud_RL_75_preproc = ft_preprocessing(cfg);
save rxp_02_aud_RL_75_preproc rxp_02_aud_RL_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
rxp_02_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, rxp_02_aud_RL_75_preproc);
save rxp_02_aud_RL_75_preproc_bc rxp_02_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
rxp_02_aud_RL_75_ERP_ST_bc = ft_timelockanalysis(cfg, rxp_02_aud_RL_75_preproc_bc);
save rxp_02_aud_RL_75_ERP_ST_bc rxp_02_aud_RL_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
rxp_02_aud_RL_75_ERP_bc = ft_timelockanalysis(cfg, rxp_02_aud_RL_75_preproc_bc);
save rxp_02_aud_RL_75_ERP_bc rxp_02_aud_RL_75_ERP_bc;

%% Sub sxc_08
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\ERP data\Tinnitus\1. Final files\Auditory');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject sxc_08');
%Reading the data
cfg = [];
cfg.dataset = 'sxc_08_aud_RL_final.set';
cfg = trialdefinition_75(cfg);
sxc_08_aud_RL_75_preproc = ft_preprocessing(cfg);
save sxc_08_aud_RL_75_preproc sxc_08_aud_RL_75_preproc;

%Baseline correction on single trial
cfg.baseline = [-.1 .3];
cfg.channels = 'all';
cfg.parameter = 'trial';
sxc_08_aud_RL_75_preproc_bc = ft_timelockbaseline(cfg, sxc_08_aud_RL_75_preproc);
save sxc_08_aud_RL_75_preproc_bc sxc_08_aud_RL_75_preproc_bc ;

%Generation of full ERP ST
cfg.latency = 'all';
cfg.keeptrials = 'yes';
sxc_08_aud_RL_75_ERP_ST_bc = ft_timelockanalysis(cfg, sxc_08_aud_RL_75_preproc_bc);
save sxc_08_aud_RL_75_ERP_ST_bc sxc_08_aud_RL_75_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
sxc_08_aud_RL_75_ERP_bc = ft_timelockanalysis(cfg, sxc_08_aud_RL_75_preproc_bc);
save sxc_08_aud_RL_75_ERP_bc sxc_08_aud_RL_75_ERP_bc;

