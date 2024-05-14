%% Sub aat_02
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\AAT002');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject aat_002');

%Baseline correction on single trial
load('aat_002_HT_75_preproc_ERP_ST')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
aat_002_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save aat_002_HT_75_preproc_ERP_ST_bc aat_002_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
aat_002_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, aat_002_HT_75_preproc_ERP_ST_bc);
save aat_002_HT_75_preproc_ERP_bc aat_002_HT_75_preproc_ERP_bc;

%% Sub amy_015
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\AMY015');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject amy_015');

%Baseline correction on single trial
load('amy_015_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
amy_015_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save amy_015_HT_75_preproc_ERP_ST_bc amy_015_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
amy_015_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, amy_015_HT_75_preproc_ERP_ST_bc);
save amy_015_HT_75_preproc_ERP_bc amy_015_HT_75_preproc_ERP_bc;

%% Sub aor_030
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\AOR030');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject aor_030');

%Baseline correction on single trial
load('aor_030_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
aor_030_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save aor_030_HT_75_preproc_ERP_ST_bc aor_030_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
aor_030_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, aor_030_HT_75_preproc_ERP_ST_bc);
save aor_030_HT_75_preproc_ERP_bc aor_030_HT_75_preproc_ERP_bc;

%% Sub cas_003
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\CAS003');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject cas_003');

%Baseline correction on single trial
load('cas_003_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
cas_003_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save cas_003_HT_75_preproc_ERP_ST_bc cas_003_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
cas_003_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, cas_003_HT_75_preproc_ERP_ST_bc);
save cas_003_HT_75_preproc_ERP_bc cas_003_HT_75_preproc_ERP_bc;

%% Sub cas_020
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\CAS020');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject cas_020');

%Baseline correction on single trial
load('cas_020_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
cas_020_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save cas_020_HT_75_preproc_ERP_ST_bc cas_020_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
cas_020_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, cas_020_HT_75_preproc_ERP_ST_bc);
save cas_020_HT_75_preproc_ERP_bc cas_020_HT_75_preproc_ERP_bc;

%% Sub cex_043
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\CEX043');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject cex_043');

%Baseline correction on single trial
load('cex_043_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
cex_043_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save cex_043_HT_75_preproc_ERP_ST_bc cex_043_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
cex_043_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, cex_043_HT_75_preproc_ERP_ST_bc);
save cex_043_HT_75_preproc_ERP_bc cex_043_HT_75_preproc_ERP_bc;

%% Sub chy_017
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\CHY017');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject chy_017');

%Baseline correction on single trial
load('chy_017_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
chy_017_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save chy_017_HT_75_preproc_ERP_ST_bc chy_017_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
chy_017_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, chy_017_HT_75_preproc_ERP_ST_bc);
save chy_017_HT_75_preproc_ERP_bc chy_017_HT_75_preproc_ERP_bc;

%% Sub cry_018
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\CRY018');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject cry_018');

%Baseline correction on single trial
load('cry_018_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
cry_018_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save cry_018_HT_75_preproc_ERP_ST_bc cry_018_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
cry_018_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, cry_018_HT_75_preproc_ERP_ST_bc);
save cry_018_HT_75_preproc_ERP_bc cry_018_HT_75_preproc_ERP_bc;

%% Sub cud_008
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\CUD008');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject cud_008');

%Baseline correction on single trial
load('cud_008_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
cud_008_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save cud_008_HT_75_preproc_ERP_ST_bc cud_008_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
cud_008_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, cud_008_HT_75_preproc_ERP_ST_bc);
save cud_008_HT_75_preproc_ERP_bc cud_008_HT_75_preproc_ERP_bc;

%% Sub dit_029
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\DIT029');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject dit_029');

%Baseline correction on single trial
load('dit_029_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
dit_029_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save dit_029_HT_75_preproc_ERP_ST_bc dit_029_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
dit_029_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, dit_029_HT_75_preproc_ERP_ST_bc);
save dit_029_HT_75_preproc_ERP_bc dit_029_HT_75_preproc_ERP_bc;

%% Sub dus_037
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\DUS037');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject dus_037');

%Baseline correction on single trial
load('dus_037_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
dus_037_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save dus_037_HT_75_preproc_ERP_ST_bc dus_037_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
dus_037_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, dus_037_HT_75_preproc_ERP_ST_bc);
save dus_037_HT_75_preproc_ERP_bc dus_037_HT_75_preproc_ERP_bc;

%% Sub eaw_006
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\EAW006');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject eaw_006');

%Baseline correction on single trial
load('eaw_006_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
eaw_006_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save eaw_006_HT_75_preproc_ERP_ST_bc eaw_006_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
eaw_006_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, eaw_006_HT_75_preproc_ERP_ST_bc);
save eaw_006_HT_75_preproc_ERP_bc eaw_006_HT_75_preproc_ERP_bc;

%% Sub elr_035
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\ELR035');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject elr_035');

%Baseline correction on single trial
load('elr_035_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
elr_035_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save elr_035_HT_75_preproc_ERP_ST_bc elr_035_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
elr_035_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, elr_035_HT_75_preproc_ERP_ST_bc);
save elr_035_HT_75_preproc_ERP_bc elr_035_HT_75_preproc_ERP_bc;

%% Sub eos_012
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\EOS012');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject eos_012');

%Baseline correction on single trial
load('eos_012_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
eos_012_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save eos_012_HT_75_preproc_ERP_ST_bc eos_012_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
eos_012_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, eos_012_HT_75_preproc_ERP_ST_bc);
save eos_012_HT_75_preproc_ERP_bc eos_012_HT_75_preproc_ERP_bc;

%% Sub eus_021
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\EUS021');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject eus_021');

%Baseline correction on single trial
load('eus_021_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
eus_021_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save eus_021_HT_75_preproc_ERP_ST_bc eus_021_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
eus_021_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, eus_021_HT_75_preproc_ERP_ST_bc);
save eus_021_HT_75_preproc_ERP_bc eus_021_HT_75_preproc_ERP_bc;

%% Sub gyw_022
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\GYW022');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject gyw_022');

%Baseline correction on single trial
load('gyw_022_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
gyw_022_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save gyw_022_HT_75_preproc_ERP_ST_bc gyw_022_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
gyw_022_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, gyw_022_HT_75_preproc_ERP_ST_bc);
save gyw_022_HT_75_preproc_ERP_bc gyw_022_HT_75_preproc_ERP_bc;

%% Sub jut_028
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\JUT028');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject jut_028');

%Baseline correction on single trial
load('jut_028_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
jut_028_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save jut_028_HT_75_preproc_ERP_ST_bc jut_028_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
jut_028_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, jut_028_HT_75_preproc_ERP_ST_bc);
save jut_028_HT_75_preproc_ERP_bc jut_028_HT_75_preproc_ERP_bc;

%% Sub las_026
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\LAS026');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject las_026');

%Baseline correction on single trial
load('las_026_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
las_026_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save las_026_HT_75_preproc_ERP_ST_bc las_026_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
las_026_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, las_026_HT_75_preproc_ERP_ST_bc);
save las_026_HT_75_preproc_ERP_bc las_026_HT_75_preproc_ERP_bc;

%% Sub las_032
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\LAS032');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject las_032');

%Baseline correction on single trial
load('las_032_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
las_032_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save las_032_HT_75_preproc_ERP_ST_bc las_032_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
las_032_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, las_032_HT_75_preproc_ERP_ST_bc);
save las_032_HT_75_preproc_ERP_bc las_032_HT_75_preproc_ERP_bc;

%% Sub las_039
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\LAS039');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject las_039');

%Baseline correction on single trial
load('las_039_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
las_039_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save las_039_HT_75_preproc_ERP_ST_bc las_039_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
las_039_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, las_039_HT_75_preproc_ERP_ST_bc);
save las_039_HT_75_preproc_ERP_bc las_039_HT_75_preproc_ERP_bc;

%% Sub las_046
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\LAS046');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject las_046');

%Baseline correction on single trial
load('las_046_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
las_046_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save las_046_HT_75_preproc_ERP_ST_bc las_046_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
las_046_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, las_046_HT_75_preproc_ERP_ST_bc);
save las_046_HT_75_preproc_ERP_bc las_046_HT_75_preproc_ERP_bc;

%% Sub mir_041
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\MIR041');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject mir_041');

%Baseline correction on single trial
load('mir_041_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
mir_041_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save mir_041_HT_75_preproc_ERP_ST_bc mir_041_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
mir_041_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, mir_041_HT_75_preproc_ERP_ST_bc);
save mir_041_HT_75_preproc_ERP_bc mir_041_HT_75_preproc_ERP_bc;

%% Sub mrv_038
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\MRV038');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject mrv_038');

%Baseline correction on single trial
load('mrv_038_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
mrv_038_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save mrv_038_HT_75_preproc_ERP_ST_bc mrv_038_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
mrv_038_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, mrv_038_HT_75_preproc_ERP_ST_bc);
save mrv_038_HT_75_preproc_ERP_bc mrv_038_HT_75_preproc_ERP_bc;

%% Sub mus_004
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\MUS004');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject mus_004');

%Baseline correction on single trial
load('mus_004_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
mus_004_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save mus_004_HT_75_preproc_ERP_ST_bc mus_004_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
mus_004_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, mus_004_HT_75_preproc_ERP_ST_bc);
save mus_004_HT_75_preproc_ERP_bc mus_004_HT_75_preproc_ERP_bc;

%% Sub nis_007
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\NIS007');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject nis_007');

%Baseline correction on single trial
load('nis_007_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
nis_007_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save nis_007_HT_75_preproc_ERP_ST_bc nis_007_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
nis_007_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, nis_007_HT_75_preproc_ERP_ST_bc);
save nis_007_HT_75_preproc_ERP_bc nis_007_HT_75_preproc_ERP_bc;

%% Sub oet_005
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\OET005');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject oet_005');

%Baseline correction on single trial
load('oet_005_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
oet_005_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save oet_005_HT_75_preproc_ERP_ST_bc oet_005_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
oet_005_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, oet_005_HT_75_preproc_ERP_ST_bc);
save oet_005_HT_75_preproc_ERP_bc oet_005_HT_75_preproc_ERP_bc;

%% Sub oos_034
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\OOS034');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject oos_034');

%Baseline correction on single trial
load('oos_034_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
oos_034_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save oos_034_HT_75_preproc_ERP_ST_bc oos_034_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
oos_034_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, oos_034_HT_75_preproc_ERP_ST_bc);
save oos_034_HT_75_preproc_ERP_bc oos_034_HT_75_preproc_ERP_bc;

%% Sub pbc_016
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\PBC016');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject pbc_016');

%Baseline correction on single trial
load('pbc_016_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
pbc_016_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save pbc_016_HT_75_preproc_ERP_ST_bc pbc_016_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
pbc_016_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, pbc_016_HT_75_preproc_ERP_ST_bc);
save pbc_016_HT_75_preproc_ERP_bc pbc_016_HT_75_preproc_ERP_bc;

%% Sub peb_009
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\PEB009');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject peb_009');

%Baseline correction on single trial
load('peb_009_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
peb_009_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save peb_009_HT_75_preproc_ERP_ST_bc peb_009_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
peb_009_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, peb_009_HT_75_preproc_ERP_ST_bc);
save peb_009_HT_75_preproc_ERP_bc peb_009_HT_75_preproc_ERP_bc;

%% Sub rez_045
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\REZ045');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject rez_045');

%Baseline correction on single trial
load('rez_045_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
rez_045_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save rez_045_HT_75_preproc_ERP_ST_bc rez_045_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
rez_045_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, rez_045_HT_75_preproc_ERP_ST_bc);
save rez_045_HT_75_preproc_ERP_bc rez_045_HT_75_preproc_ERP_bc;

%% Sub rnz_014
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\RNZ014');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject rnz_014');

%Baseline correction on single trial
load('rnz_014_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
rnz_014_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save rnz_014_HT_75_preproc_ERP_ST_bc rnz_014_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
rnz_014_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, rnz_014_HT_75_preproc_ERP_ST_bc);
save rnz_014_HT_75_preproc_ERP_bc rnz_014_HT_75_preproc_ERP_bc;

%% Sub ror_024
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\ROR024');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject ror_024');

%Baseline correction on single trial
load('ror_024_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
ror_024_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save ror_024_HT_75_preproc_ERP_ST_bc ror_024_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
ror_024_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, ror_024_HT_75_preproc_ERP_ST_bc);
save ror_024_HT_75_preproc_ERP_bc ror_024_HT_75_preproc_ERP_bc;

%% Sub saw_040
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\SAW040');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject saw_040');

%Baseline correction on single trial
load('saw_040_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
saw_040_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save saw_040_HT_75_preproc_ERP_ST_bc saw_040_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
saw_040_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, saw_040_HT_75_preproc_ERP_ST_bc);
save saw_040_HT_75_preproc_ERP_bc saw_040_HT_75_preproc_ERP_bc;

%% Sub sdt_001
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\SDT001');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject sdt_001');

%Baseline correction on single trial
load('sdt_001_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
sdt_001_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save sdt_001_HT_75_preproc_ERP_ST_bc sdt_001_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
sdt_001_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, sdt_001_HT_75_preproc_ERP_ST_bc);
save sdt_001_HT_75_preproc_ERP_bc sdt_001_HT_75_preproc_ERP_bc;

%% Sub ses_036
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\SES036');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject ses_036');

%Baseline correction on single trial
load('ses_036_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
ses_036_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save ses_036_HT_75_preproc_ERP_ST_bc ses_036_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
ses_036_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, ses_036_HT_75_preproc_ERP_ST_bc);
save ses_036_HT_75_preproc_ERP_bc ses_036_HT_75_preproc_ERP_bc;

%% Sub sos_031
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\SOS031');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject sos_031');

%Baseline correction on single trial
load('sos_031_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
sos_031_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save sos_031_HT_75_preproc_ERP_ST_bc sos_031_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
sos_031_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, sos_031_HT_75_preproc_ERP_ST_bc);
save sos_031_HT_75_preproc_ERP_bc sos_031_HT_75_preproc_ERP_bc;

%% Sub sos_044
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\SOS044');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject sos_044');

%Baseline correction on single trial
load('sos_044_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
sos_044_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save sos_044_HT_75_preproc_ERP_ST_bc sos_044_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
sos_044_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, sos_044_HT_75_preproc_ERP_ST_bc);
save sos_044_HT_75_preproc_ERP_bc sos_044_HT_75_preproc_ERP_bc;

%% Sub srs_033
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\SRS033');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject srs_033');

%Baseline correction on single trial
load('srs_033_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
srs_033_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save srs_033_HT_75_preproc_ERP_ST_bc srs_033_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
srs_033_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, srs_033_HT_75_preproc_ERP_ST_bc);
save srs_033_HT_75_preproc_ERP_bc srs_033_HT_75_preproc_ERP_bc;

%% Sub taa_019
clear all;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

%Add necessary folders to path
addpath('D:\2. Tinnitus Priors ERP\39 sub ERP_avg and ST data\TAA019');
addpath('D:\2. Tinnitus Priors ERP\Matlab codes\FieldTrip codes\Preparing the data');

disp('Working in subject taa_019');

%Baseline correction on single trial
load('taa_019_HT_75_preproc_ERP_ST.mat')
cfg.baseline = [-.3 0];
cfg.channels = 'all';
cfg.parameter = 'trial';
taa_019_HT_75_preproc_ERP_ST_bc = ft_timelockbaseline(cfg, data_ERP_ST);
save taa_019_HT_75_preproc_ERP_ST_bc taa_019_HT_75_preproc_ERP_ST_bc;

%Generation of full ERP
cfg.latency = 'all';
cfg.keeptrials = 'no';
taa_019_HT_75_preproc_ERP_bc = ft_timelockanalysis(cfg, taa_019_HT_75_preproc_ERP_ST_bc);
save taa_019_HT_75_preproc_ERP_bc taa_019_HT_75_preproc_ERP_bc;