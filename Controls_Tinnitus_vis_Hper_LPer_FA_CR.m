clc;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

addpath('D:\2. Tinnitus Priors ERP\Matlab data_FT\Vis_10\Controls');
addpath('D:\2. Tinnitus Priors ERP\Matlab data_FT\Vis_10\Tinnitus');

load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Times_new.mat');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Channels_Ft.mat');

load('axm_01_vis_LR_10_ERP_ST.mat');
load('jvw_16_vis_LR_10_ERP_ST.mat');
load('jxo_09_vis_RL_10_ERP_ST.mat');
load('jxn_11_vis_RL_10_ERP_ST.mat');
load('kxj_15_vis_RL_10_ERP_ST.mat');
load('lxh_22_vis_LR_10_ERP_ST.mat');
load('lxo_21_vis_LR_10_ERP_ST.mat');
load('oxh_24_vis_RL_10_ERP_ST.mat');
load('pxm_25_vis_LR_10_ERP_ST.mat');
load('rxv_17_vis_RL_10_ERP_ST.mat');

load('axl_13_vis_RL_10_ERP_ST.mat');
load('bxr_06_vis_LR_10_ERP_ST.mat');
load('evw_07_vis_RL_10_ERP_ST.mat');
load('ivl_14_vis_LR_10_ERP_ST.mat');
load('ixe_12_vis_LR_10_ERP_ST.mat');
load('jvj_18_vis_LR_10_ERP_ST.mat');
load('kxj_19_vis_RL_10_ERP_ST.mat');
load('lxh_10_vis_LR_10_ERP_ST.mat');
load('pxp_04_vis_LR_10_ERP_ST.mat');
load('rxp_02_vis_RL_10_ERP_ST.mat');
load('sxc_08_vis_RL_10_ERP_ST.mat');

% Building new variables - Controls

axm_01_vis_10_FA_ERP_ST =[];
jvw_16_vis_10_FA_ERP_ST =[];
jxo_09_vis_10_FA_ERP_ST =[];
jxn_11_vis_10_FA_ERP_ST =[];
kxj_15_vis_10_FA_ERP_ST =[];
lxh_22_vis_10_FA_ERP_ST =[];
lxo_21_vis_10_FA_ERP_ST =[];
oxh_24_vis_10_FA_ERP_ST =[];
pxm_25_vis_10_FA_ERP_ST =[];
rxv_17_vis_10_FA_ERP_ST =[];


axm_01_vis_10_CR_ERP_ST =[];
jvw_16_vis_10_CR_ERP_ST =[];
jxo_09_vis_10_CR_ERP_ST =[];
jxn_11_vis_10_CR_ERP_ST =[];
kxj_15_vis_10_CR_ERP_ST =[];
lxh_22_vis_10_CR_ERP_ST =[];
lxo_21_vis_10_CR_ERP_ST =[];
oxh_24_vis_10_CR_ERP_ST =[];
pxm_25_vis_10_CR_ERP_ST =[];
rxv_17_vis_10_CR_ERP_ST =[];

% axm_01
disp('axm_01');
data = axm_01_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

axm_01_epochs_10_FA = [];
axm_01_epochs_10_CR = [];
Pass_10 = 0;
FA_axm_01 = 1;
CR_axm_01 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        axm_01_epochs_10_FA(FA_axm_01,:,:) = data(i,:,:);
        FA_axm_01 = FA_axm_01 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        axm_01_epochs_10_CR(CR_axm_01,:,:) = data(i,:,:);
        CR_axm_01 = CR_axm_01 + 1;
    end
end

axm_01_vis_10_FA_ERP_ST.SubID = 'axm_01';
axm_01_vis_10_FA_ERP_ST.time = axm_01_vis_LR_10_ERP_ST.time;
axm_01_vis_10_FA_ERP_ST.label = Channels_Ft.label;
axm_01_vis_10_FA_ERP_ST.elec = Channels_Ft;
axm_01_vis_10_FA_ERP_ST.trial = axm_01_epochs_10_FA;
axm_01_vis_10_FA_ERP_ST.avg = mean(axm_01_epochs_10_FA,1);
axm_01_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
axm_01_vis_10_FA_ERP_ST.cfg = axm_01_vis_LR_10_ERP_ST.cfg;

axm_01_vis_10_CR_ERP_ST.SubID = 'axm_01';
axm_01_vis_10_CR_ERP_ST.time = axm_01_vis_LR_10_ERP_ST.time;
axm_01_vis_10_CR_ERP_ST.label = Channels_Ft.label;
axm_01_vis_10_CR_ERP_ST.elec = Channels_Ft;
axm_01_vis_10_CR_ERP_ST.trial = axm_01_epochs_10_CR;
axm_01_vis_10_CR_ERP_ST.avg = mean(axm_01_epochs_10_CR,1);
axm_01_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
axm_01_vis_10_CR_ERP_ST.cfg = axm_01_vis_LR_10_ERP_ST.cfg;

% jvw_16
disp('jvw_16');
data = jvw_16_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

jvw_16_epochs_10_FA = [];
jvw_16_epochs_10_CR = [];
Pass_10 = 0;
FA_jvw_16 = 1;
CR_jvw_16 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jvw_16_epochs_10_FA(FA_jvw_16,:,:) = data(i,:,:);
        FA_jvw_16 = FA_jvw_16 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jvw_16_epochs_10_CR(CR_jvw_16,:,:) = data(i,:,:);
        CR_jvw_16 = CR_jvw_16 + 1;
    end
end

jvw_16_vis_10_FA_ERP_ST.SubID = 'jvw_16';
jvw_16_vis_10_FA_ERP_ST.time = jvw_16_vis_LR_10_ERP_ST.time;
jvw_16_vis_10_FA_ERP_ST.label = Channels_Ft.label;
jvw_16_vis_10_FA_ERP_ST.elec = Channels_Ft;
jvw_16_vis_10_FA_ERP_ST.trial = jvw_16_epochs_10_FA;
jvw_16_vis_10_FA_ERP_ST.avg = mean(jvw_16_epochs_10_FA,1);
jvw_16_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
jvw_16_vis_10_FA_ERP_ST.cfg = jvw_16_vis_LR_10_ERP_ST.cfg;

jvw_16_vis_10_CR_ERP_ST.SubID = 'jvw_16';
jvw_16_vis_10_CR_ERP_ST.time = jvw_16_vis_LR_10_ERP_ST.time;
jvw_16_vis_10_CR_ERP_ST.label = Channels_Ft.label;
jvw_16_vis_10_CR_ERP_ST.elec = Channels_Ft;
jvw_16_vis_10_CR_ERP_ST.trial = jvw_16_epochs_10_CR;
jvw_16_vis_10_CR_ERP_ST.avg = mean(jvw_16_epochs_10_CR,1);
jvw_16_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
jvw_16_vis_10_CR_ERP_ST.cfg = jvw_16_vis_LR_10_ERP_ST.cfg;

% jxn_11
disp('jxn_11');
data = jxn_11_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

jxn_11_epochs_10_FA = [];
jxn_11_epochs_10_CR = [];
Pass_10 = 0;
FA_jxn_11 = 1;
CR_jxn_11 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jxn_11_epochs_10_FA(FA_jxn_11,:,:) = data(i,:,:);
        FA_jxn_11 = FA_jxn_11 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jxn_11_epochs_10_CR(CR_jxn_11,:,:) = data(i,:,:);
        CR_jxn_11 = CR_jxn_11 + 1;
    end
end

jxn_11_vis_10_FA_ERP_ST.SubID = 'jxn_11';
jxn_11_vis_10_FA_ERP_ST.time = jxn_11_vis_RL_10_ERP_ST.time;
jxn_11_vis_10_FA_ERP_ST.label = Channels_Ft.label;
jxn_11_vis_10_FA_ERP_ST.elec = Channels_Ft;
jxn_11_vis_10_FA_ERP_ST.trial = jxn_11_epochs_10_FA;
jxn_11_vis_10_FA_ERP_ST.avg = mean(jxn_11_epochs_10_FA,1);
jxn_11_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
jxn_11_vis_10_FA_ERP_ST.cfg = jxn_11_vis_RL_10_ERP_ST.cfg;

jxn_11_vis_10_CR_ERP_ST.SubID = 'jxn_11';
jxn_11_vis_10_CR_ERP_ST.time = jxn_11_vis_RL_10_ERP_ST.time;
jxn_11_vis_10_CR_ERP_ST.label = Channels_Ft.label;
jxn_11_vis_10_CR_ERP_ST.elec = Channels_Ft;
jxn_11_vis_10_CR_ERP_ST.trial = jxn_11_epochs_10_CR;
jxn_11_vis_10_CR_ERP_ST.avg = mean(jxn_11_epochs_10_CR,1);
jxn_11_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
jxn_11_vis_10_CR_ERP_ST.cfg = jxn_11_vis_RL_10_ERP_ST.cfg;

% jxo_09
disp('jxo_09');
data = jxo_09_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

jxo_09_epochs_10_FA = [];
jxo_09_epochs_10_CR = [];
Pass_10 = 0;
FA_jxo_09 = 1;
CR_jxo_09 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jxo_09_epochs_10_FA(FA_jxo_09,:,:) = data(i,:,:);
        FA_jxo_09 = FA_jxo_09 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jxo_09_epochs_10_CR(CR_jxo_09,:,:) = data(i,:,:);
        CR_jxo_09 = CR_jxo_09 + 1;
    end
end

jxo_09_vis_10_FA_ERP_ST.SubID = 'jxo_09';
jxo_09_vis_10_FA_ERP_ST.time = jxo_09_vis_RL_10_ERP_ST.time;
jxo_09_vis_10_FA_ERP_ST.label = Channels_Ft.label;
jxo_09_vis_10_FA_ERP_ST.elec = Channels_Ft;
jxo_09_vis_10_FA_ERP_ST.trial = jxo_09_epochs_10_FA;
jxo_09_vis_10_FA_ERP_ST.avg = mean(jxo_09_epochs_10_FA,1);
jxo_09_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
jxo_09_vis_10_FA_ERP_ST.cfg = jxo_09_vis_RL_10_ERP_ST.cfg;

jxo_09_vis_10_CR_ERP_ST.SubID = 'jxo_09';
jxo_09_vis_10_CR_ERP_ST.time = jxo_09_vis_RL_10_ERP_ST.time;
jxo_09_vis_10_CR_ERP_ST.label = Channels_Ft.label;
jxo_09_vis_10_CR_ERP_ST.elec = Channels_Ft;
jxo_09_vis_10_CR_ERP_ST.trial = jxo_09_epochs_10_CR;
jxo_09_vis_10_CR_ERP_ST.avg = mean(jxo_09_epochs_10_CR,1);
jxo_09_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
jxo_09_vis_10_CR_ERP_ST.cfg = jxo_09_vis_RL_10_ERP_ST.cfg;

% kxj_15
disp('kxj_15');
data = kxj_15_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

kxj_15_epochs_10_FA = [];
kxj_15_epochs_10_CR = [];
Pass_10 = 0;
FA_kxj_15 = 1;
CR_kxj_15 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        kxj_15_epochs_10_FA(FA_kxj_15,:,:) = data(i,:,:);
        FA_kxj_15 = FA_kxj_15 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        kxj_15_epochs_10_CR(CR_kxj_15,:,:) = data(i,:,:);
        CR_kxj_15 = CR_kxj_15 + 1;
    end
end

kxj_15_vis_10_FA_ERP_ST.SubID = 'kxj_15';
kxj_15_vis_10_FA_ERP_ST.time = kxj_15_vis_RL_10_ERP_ST.time;
kxj_15_vis_10_FA_ERP_ST.label = Channels_Ft.label;
kxj_15_vis_10_FA_ERP_ST.elec = Channels_Ft;
kxj_15_vis_10_FA_ERP_ST.trial = kxj_15_epochs_10_FA;
kxj_15_vis_10_FA_ERP_ST.avg = mean(kxj_15_epochs_10_FA,1);
kxj_15_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
kxj_15_vis_10_FA_ERP_ST.cfg = kxj_15_vis_RL_10_ERP_ST.cfg;

kxj_15_vis_10_CR_ERP_ST.SubID = 'kxj_15';
kxj_15_vis_10_CR_ERP_ST.time = kxj_15_vis_RL_10_ERP_ST.time;
kxj_15_vis_10_CR_ERP_ST.label = Channels_Ft.label;
kxj_15_vis_10_CR_ERP_ST.elec = Channels_Ft;
kxj_15_vis_10_CR_ERP_ST.trial = kxj_15_epochs_10_CR;
kxj_15_vis_10_CR_ERP_ST.avg = mean(kxj_15_epochs_10_CR,1);
kxj_15_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
kxj_15_vis_10_CR_ERP_ST.cfg = kxj_15_vis_RL_10_ERP_ST.cfg;

% lxh_22
disp('lxh_22');
data = lxh_22_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

lxh_22_epochs_10_FA = [];
lxh_22_epochs_10_CR = [];
Pass_10 = 0;
FA_lxh_22 = 1;
CR_lxh_22 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        lxh_22_epochs_10_FA(FA_lxh_22,:,:) = data(i,:,:);
        FA_lxh_22 = FA_lxh_22 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        lxh_22_epochs_10_CR(CR_lxh_22,:,:) = data(i,:,:);
        CR_lxh_22 = CR_lxh_22 + 1;
    end
end

lxh_22_vis_10_FA_ERP_ST.SubID = 'lxh_22';
lxh_22_vis_10_FA_ERP_ST.time = lxh_22_vis_LR_10_ERP_ST.time;
lxh_22_vis_10_FA_ERP_ST.label = Channels_Ft.label;
lxh_22_vis_10_FA_ERP_ST.elec = Channels_Ft;
lxh_22_vis_10_FA_ERP_ST.trial = lxh_22_epochs_10_FA;
lxh_22_vis_10_FA_ERP_ST.avg = mean(lxh_22_epochs_10_FA,1);
lxh_22_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
lxh_22_vis_10_FA_ERP_ST.cfg = lxh_22_vis_LR_10_ERP_ST.cfg;

lxh_22_vis_10_CR_ERP_ST.SubID = 'lxh_22';
lxh_22_vis_10_CR_ERP_ST.time = lxh_22_vis_LR_10_ERP_ST.time;
lxh_22_vis_10_CR_ERP_ST.label = Channels_Ft.label;
lxh_22_vis_10_CR_ERP_ST.elec = Channels_Ft;
lxh_22_vis_10_CR_ERP_ST.trial = lxh_22_epochs_10_CR;
lxh_22_vis_10_CR_ERP_ST.avg = mean(lxh_22_epochs_10_CR,1);
lxh_22_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
lxh_22_vis_10_CR_ERP_ST.cfg = lxh_22_vis_LR_10_ERP_ST.cfg;

% lxo_21
disp('lxo_21');
data = lxo_21_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

lxo_21_epochs_10_FA = [];
lxo_21_epochs_10_CR = [];
Pass_10 = 0;
FA_lxo_21 = 1;
CR_lxo_21 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        lxo_21_epochs_10_FA(FA_lxo_21,:,:) = data(i,:,:);
        FA_lxo_21 = FA_lxo_21 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        lxo_21_epochs_10_CR(CR_lxo_21,:,:) = data(i,:,:);
        CR_lxo_21 = CR_lxo_21 + 1;
    end
end

lxo_21_vis_10_FA_ERP_ST.SubID = 'lxo_21';
lxo_21_vis_10_FA_ERP_ST.time = lxo_21_vis_LR_10_ERP_ST.time;
lxo_21_vis_10_FA_ERP_ST.label = Channels_Ft.label;
lxo_21_vis_10_FA_ERP_ST.elec = Channels_Ft;
lxo_21_vis_10_FA_ERP_ST.trial = lxo_21_epochs_10_FA;
lxo_21_vis_10_FA_ERP_ST.avg = mean(lxo_21_epochs_10_FA,1);
lxo_21_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
lxo_21_vis_10_FA_ERP_ST.cfg = lxo_21_vis_LR_10_ERP_ST.cfg;

lxo_21_vis_10_CR_ERP_ST.SubID = 'lxo_21';
lxo_21_vis_10_CR_ERP_ST.time = lxo_21_vis_LR_10_ERP_ST.time;
lxo_21_vis_10_CR_ERP_ST.label = Channels_Ft.label;
lxo_21_vis_10_CR_ERP_ST.elec = Channels_Ft;
lxo_21_vis_10_CR_ERP_ST.trial = lxo_21_epochs_10_CR;
lxo_21_vis_10_CR_ERP_ST.avg = mean(lxo_21_epochs_10_CR,1);
lxo_21_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
lxo_21_vis_10_CR_ERP_ST.cfg = lxo_21_vis_LR_10_ERP_ST.cfg;

% oxh_24
disp('oxh_24');
data = oxh_24_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

oxh_24_epochs_10_FA = [];
oxh_24_epochs_10_CR = [];
Pass_10 = 0;
FA_oxh_24 = 1;
CR_oxh_24 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        oxh_24_epochs_10_FA(FA_oxh_24,:,:) = data(i,:,:);
        FA_oxh_24 = FA_oxh_24 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        oxh_24_epochs_10_CR(CR_oxh_24,:,:) = data(i,:,:);
        CR_oxh_24 = CR_oxh_24 + 1;
    end
end

oxh_24_vis_10_FA_ERP_ST.SubID = 'oxh_24';
oxh_24_vis_10_FA_ERP_ST.time = oxh_24_vis_RL_10_ERP_ST.time;
oxh_24_vis_10_FA_ERP_ST.label = Channels_Ft.label;
oxh_24_vis_10_FA_ERP_ST.elec = Channels_Ft;
oxh_24_vis_10_FA_ERP_ST.trial = oxh_24_epochs_10_FA;
oxh_24_vis_10_FA_ERP_ST.avg = mean(oxh_24_epochs_10_FA,1);
oxh_24_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
oxh_24_vis_10_FA_ERP_ST.cfg = oxh_24_vis_RL_10_ERP_ST.cfg;

oxh_24_vis_10_CR_ERP_ST.SubID = 'oxh_24';
oxh_24_vis_10_CR_ERP_ST.time = oxh_24_vis_RL_10_ERP_ST.time;
oxh_24_vis_10_CR_ERP_ST.label = Channels_Ft.label;
oxh_24_vis_10_CR_ERP_ST.elec = Channels_Ft;
oxh_24_vis_10_CR_ERP_ST.trial = oxh_24_epochs_10_CR;
oxh_24_vis_10_CR_ERP_ST.avg = mean(oxh_24_epochs_10_CR,1);
oxh_24_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
oxh_24_vis_10_CR_ERP_ST.cfg = oxh_24_vis_RL_10_ERP_ST.cfg;

% pxm_25
disp('pxm_25');
data = pxm_25_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

pxm_25_epochs_10_FA = [];
pxm_25_epochs_10_CR = [];
Pass_10 = 0;
FA_pxm_25 = 1;
CR_pxm_25 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        pxm_25_epochs_10_FA(FA_pxm_25,:,:) = data(i,:,:);
        FA_pxm_25 = FA_pxm_25 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        pxm_25_epochs_10_CR(CR_pxm_25,:,:) = data(i,:,:);
        CR_pxm_25 = CR_pxm_25 + 1;
    end
end

pxm_25_vis_10_FA_ERP_ST.SubID = 'pxm_25';
pxm_25_vis_10_FA_ERP_ST.time = pxm_25_vis_LR_10_ERP_ST.time;
pxm_25_vis_10_FA_ERP_ST.label = Channels_Ft.label;
pxm_25_vis_10_FA_ERP_ST.elec = Channels_Ft;
pxm_25_vis_10_FA_ERP_ST.trial = pxm_25_epochs_10_FA;
pxm_25_vis_10_FA_ERP_ST.avg = mean(pxm_25_epochs_10_FA,1);
pxm_25_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
pxm_25_vis_10_FA_ERP_ST.cfg = pxm_25_vis_LR_10_ERP_ST.cfg;

pxm_25_vis_10_CR_ERP_ST.SubID = 'pxm_25';
pxm_25_vis_10_CR_ERP_ST.time = pxm_25_vis_LR_10_ERP_ST.time;
pxm_25_vis_10_CR_ERP_ST.label = Channels_Ft.label;
pxm_25_vis_10_CR_ERP_ST.elec = Channels_Ft;
pxm_25_vis_10_CR_ERP_ST.trial = pxm_25_epochs_10_CR;
pxm_25_vis_10_CR_ERP_ST.avg = mean(pxm_25_epochs_10_CR,1);
pxm_25_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
pxm_25_vis_10_CR_ERP_ST.cfg = pxm_25_vis_LR_10_ERP_ST.cfg;

% rxv_17
disp('rxv_17');
data = rxv_17_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

rxv_17_epochs_10_FA = [];
rxv_17_epochs_10_CR = [];
Pass_10 = 0;
FA_rxv_17 = 1;
CR_rxv_17 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        rxv_17_epochs_10_FA(FA_rxv_17,:,:) = data(i,:,:);
        FA_rxv_17 = FA_rxv_17 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        rxv_17_epochs_10_CR(CR_rxv_17,:,:) = data(i,:,:);
        CR_rxv_17 = CR_rxv_17 + 1;
    end
end

rxv_17_vis_10_FA_ERP_ST.SubID = 'rxv_17';
rxv_17_vis_10_FA_ERP_ST.time = rxv_17_vis_RL_10_ERP_ST.time;
rxv_17_vis_10_FA_ERP_ST.label = Channels_Ft.label;
rxv_17_vis_10_FA_ERP_ST.elec = Channels_Ft;
rxv_17_vis_10_FA_ERP_ST.trial = rxv_17_epochs_10_FA;
rxv_17_vis_10_FA_ERP_ST.avg = mean(rxv_17_epochs_10_FA,1);
rxv_17_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
rxv_17_vis_10_FA_ERP_ST.cfg = rxv_17_vis_RL_10_ERP_ST.cfg;

rxv_17_vis_10_CR_ERP_ST.SubID = 'rxv_17';
rxv_17_vis_10_CR_ERP_ST.time = rxv_17_vis_RL_10_ERP_ST.time;
rxv_17_vis_10_CR_ERP_ST.label = Channels_Ft.label;
rxv_17_vis_10_CR_ERP_ST.elec = Channels_Ft;
rxv_17_vis_10_CR_ERP_ST.trial = rxv_17_epochs_10_CR;
rxv_17_vis_10_CR_ERP_ST.avg = mean(rxv_17_epochs_10_CR,1);
rxv_17_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
rxv_17_vis_10_CR_ERP_ST.cfg = rxv_17_vis_RL_10_ERP_ST.cfg;

Controls_vis_10_FA_ERP_ST(1).subject = axm_01_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(2).subject = jvw_16_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(3).subject = jxn_11_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(4).subject = jxo_09_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(5).subject = kxj_15_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(6).subject = lxh_22_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(7).subject = lxo_21_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(8).subject = oxh_24_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(9).subject = pxm_25_vis_10_FA_ERP_ST;
Controls_vis_10_FA_ERP_ST(10).subject = rxv_17_vis_10_FA_ERP_ST;

Controls_vis_10_CR_ERP_ST(1).subject = axm_01_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(2).subject = jvw_16_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(3).subject = jxn_11_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(4).subject = jxo_09_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(5).subject = kxj_15_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(6).subject = lxh_22_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(7).subject = lxo_21_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(8).subject = oxh_24_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(9).subject = pxm_25_vis_10_CR_ERP_ST;
Controls_vis_10_CR_ERP_ST(10).subject = rxv_17_vis_10_CR_ERP_ST;

save Controls_vis_10_FA_ERP_ST Controls_vis_10_FA_ERP_ST;
save Controls_vis_10_CR_ERP_ST Controls_vis_10_CR_ERP_ST;

Controls_vis_HighPer_FA_ERP_ST(1).subject = jxo_09_vis_10_FA_ERP_ST;
Controls_vis_HighPer_FA_ERP_ST(2).subject = lxh_22_vis_10_FA_ERP_ST;
Controls_vis_HighPer_FA_ERP_ST(3).subject = oxh_24_vis_10_FA_ERP_ST;
Controls_vis_HighPer_FA_ERP_ST(4).subject = pxm_25_vis_10_CR_ERP_ST;

Controls_vis_LowPer_CR_ERP_ST(1).subject = axm_01_vis_10_CR_ERP_ST;
Controls_vis_LowPer_CR_ERP_ST(2).subject = jvw_16_vis_10_CR_ERP_ST;
Controls_vis_LowPer_CR_ERP_ST(3).subject = jxn_11_vis_10_CR_ERP_ST;
Controls_vis_LowPer_CR_ERP_ST(4).subject = kxj_15_vis_10_CR_ERP_ST;
Controls_vis_LowPer_CR_ERP_ST(5).subject = rxv_17_vis_10_CR_ERP_ST;

save Controls_vis_HighPer_FA_ERP_ST Controls_vis_HighPer_FA_ERP_ST;
save Controls_vis_LowPer_CR_ERP_ST Controls_vis_LowPer_CR_ERP_ST;

clear avr_02_epochs_10_CR ;
clear axm_01_epochs_10_CR ;
clear jvw_16_epochs_10_CR ;
clear jxo_09_epochs_10_CR ;
clear jxn_11_epochs_10_CR ;
clear kxj_15_epochs_10_CR ;
clear lxh_22_epochs_10_CR ;
clear lxo_21_epochs_10_CR ;
clear oxh_24_epochs_10_CR ;
clear pxm_25_epochs_10_CR ;
clear rxv_17_epochs_10_CR ;
clear txm_30_epochs_10_CR ;
clear wxo_19_epochs_10_CR ;

clear avr_02_epochs_10_FA ;
clear axm_01_epochs_10_FA ;
clear jvw_16_epochs_10_FA ;
clear jxo_09_epochs_10_FA ;
clear jxn_11_epochs_10_FA ;
clear kxj_15_epochs_10_FA ;
clear lxh_22_epochs_10_FA ;
clear lxo_21_epochs_10_FA ;
clear oxh_24_epochs_10_FA ;
clear pxm_25_epochs_10_FA ;
clear rxv_17_epochs_10_FA ;
clear txm_30_epochs_10_FA ;
clear wxo_19_epochs_10_FA ;

clear axm_01_vis_LR_10_ERP_ST ;
clear jvw_16_vis_LR_10_ERP_ST ;
clear jxo_09_vis_RL_10_ERP_ST ;
clear jxn_11_vis_RL_10_ERP_ST ;
clear kxj_15_vis_RL_10_ERP_ST ;
clear lxh_22_vis_LR_10_ERP_ST ;
clear lxo_21_vis_LR_10_ERP_ST ;
clear oxh_24_vis_RL_10_ERP_ST ;
clear pxm_25_vis_LR_10_ERP_ST ;
clear rxv_17_vis_RL_10_ERP_ST ;

clear axm_01_vis_10_FA_ERP_ST;
clear jvw_16_vis_10_FA_ERP_ST;
clear jxn_11_vis_10_FA_ERP_ST;
clear jxo_09_vis_10_FA_ERP_ST;
clear kxj_15_vis_10_FA_ERP_ST;
clear lxh_22_vis_10_FA_ERP_ST;
clear lxo_21_vis_10_FA_ERP_ST;
clear oxh_24_vis_10_FA_ERP_ST;
clear pxm_25_vis_10_FA_ERP_ST;
clear rxv_17_vis_10_FA_ERP_ST;

clear axm_01_vis_10_CR_ERP_ST;
clear jvw_16_vis_10_CR_ERP_ST;
clear jxn_11_vis_10_CR_ERP_ST;
clear jxo_09_vis_10_CR_ERP_ST;
clear kxj_15_vis_10_CR_ERP_ST;
clear lxh_22_vis_10_CR_ERP_ST;
clear lxo_21_vis_10_CR_ERP_ST;
clear oxh_24_vis_10_CR_ERP_ST;
clear pxm_25_vis_10_CR_ERP_ST;
clear rxv_17_vis_10_CR_ERP_ST;

clear Controls_vis_10_FA_ERP_ST;
clear Controls_vis_10_CR_ERP_ST;
clear Controls_vis_HighPer_FA_ERP_ST;
clear Controls_vis_LowPer_CR_ERP_ST;

% Building new variables  - Tinnitus 

axl_13_vis_10_FA_ERP_ST =[];
bxr_06_vis_10_FA_ERP_ST =[];
evw_07_vis_10_FA_ERP_ST =[];
ivl_14_vis_10_FA_ERP_ST =[];
ixe_12_vis_10_FA_ERP_ST =[];
jvj_18_vis_10_FA_ERP_ST =[];
kxj_19_vis_10_FA_ERP_ST =[];
lxh_10_vis_10_FA_ERP_ST =[];
pxp_04_vis_10_FA_ERP_ST =[];
rxp_02_vis_10_FA_ERP_ST =[];
sxc_08_vis_10_FA_ERP_ST =[];

axl_13_vis_10_CR_ERP_ST =[];
bxr_06_vis_10_CR_ERP_ST =[];
evw_07_vis_10_CR_ERP_ST =[];
ivl_14_vis_10_CR_ERP_ST =[];
ixe_12_vis_10_CR_ERP_ST =[];
jvj_18_vis_10_CR_ERP_ST =[];
kxj_19_vis_10_CR_ERP_ST =[];
lxh_10_vis_10_CR_ERP_ST =[];
pxp_04_vis_10_CR_ERP_ST =[];
rxp_02_vis_10_CR_ERP_ST =[];
sxc_08_vis_10_CR_ERP_ST =[];

% axl_13
disp('axl_13');
data = axl_13_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

axl_13_epochs_10_FA = [];
axl_13_epochs_10_CR = [];
Pass_10 = 0;
FA = 1;
CR = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        axl_13_epochs_10_FA(FA,:,:) = data(i,:,:);
        FA = FA + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        axl_13_epochs_10_CR(CR,:,:) = data(i,:,:);
        CR = CR + 1;
    end
end

axl_13_vis_10_FA_ERP_ST.SubID = 'axl_13';
axl_13_vis_10_FA_ERP_ST.time = axl_13_vis_RL_10_ERP_ST.time;
axl_13_vis_10_FA_ERP_ST.label = Channels_Ft.label;
axl_13_vis_10_FA_ERP_ST.elec = Channels_Ft;
axl_13_vis_10_FA_ERP_ST.trial = axl_13_epochs_10_FA;
axl_13_vis_10_FA_ERP_ST.avg = mean(axl_13_epochs_10_FA,1);
axl_13_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
axl_13_vis_10_FA_ERP_ST.cfg = axl_13_vis_RL_10_ERP_ST.cfg;

axl_13_vis_10_CR_ERP_ST.SubID = 'axl_13';
axl_13_vis_10_CR_ERP_ST.time = axl_13_vis_RL_10_ERP_ST.time;
axl_13_vis_10_CR_ERP_ST.label = Channels_Ft.label;
axl_13_vis_10_CR_ERP_ST.elec = Channels_Ft;
axl_13_vis_10_CR_ERP_ST.trial = axl_13_epochs_10_CR;
axl_13_vis_10_CR_ERP_ST.avg = mean(axl_13_epochs_10_CR,1);
axl_13_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
axl_13_vis_10_CR_ERP_ST.cfg = axl_13_vis_RL_10_ERP_ST.cfg;

% bxr_06
data = bxr_06_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

bxr_06_epochs_10_FA = [];
bxr_06_epochs_10_CR = [];
Pass_10 = 0;
FA_bxr_06 = 1;
CR_bxr_06 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        bxr_06_epochs_10_FA(FA_bxr_06,:,:) = data(i,:,:);
        FA_bxr_06 = FA_bxr_06 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        bxr_06_epochs_10_CR(CR_bxr_06,:,:) = data(i,:,:);
        CR_bxr_06 = CR_bxr_06 + 1;
    end
end

bxr_06_vis_10_FA_ERP_ST.SubID = 'bxr_06';
bxr_06_vis_10_FA_ERP_ST.time = bxr_06_vis_LR_10_ERP_ST.time;
bxr_06_vis_10_FA_ERP_ST.label = Channels_Ft.label;
bxr_06_vis_10_FA_ERP_ST.elec = Channels_Ft;
bxr_06_vis_10_FA_ERP_ST.trial = bxr_06_epochs_10_FA;
bxr_06_vis_10_FA_ERP_ST.avg = mean(bxr_06_epochs_10_FA,1);
bxr_06_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
bxr_06_vis_10_FA_ERP_ST.cfg = bxr_06_vis_LR_10_ERP_ST.cfg;

bxr_06_vis_10_CR_ERP_ST.SubID = 'bxr_06';
bxr_06_vis_10_CR_ERP_ST.time = bxr_06_vis_LR_10_ERP_ST.time;
bxr_06_vis_10_CR_ERP_ST.label = Channels_Ft.label;
bxr_06_vis_10_CR_ERP_ST.elec = Channels_Ft;
bxr_06_vis_10_CR_ERP_ST.trial = bxr_06_epochs_10_CR;
bxr_06_vis_10_CR_ERP_ST.avg = mean(bxr_06_epochs_10_CR,1);
bxr_06_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
bxr_06_vis_10_CR_ERP_ST.cfg = bxr_06_vis_LR_10_ERP_ST.cfg;

% evw_07
disp('evw_07');
data = evw_07_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

evw_07_epochs_10_FA = [];
evw_07_epochs_10_CR = [];
Pass_10 = 0;
FA_evw_07 = 1;
CR_evw_07 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        evw_07_epochs_10_FA(FA_evw_07,:,:) = data(i,:,:);
        FA_evw_07 = FA_evw_07 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        evw_07_epochs_10_CR(CR_evw_07,:,:) = data(i,:,:);
        CR_evw_07 = CR_evw_07 + 1;
    end
end

evw_07_vis_10_FA_ERP_ST.SubID = 'evw_07';
evw_07_vis_10_FA_ERP_ST.time = evw_07_vis_RL_10_ERP_ST.time;
evw_07_vis_10_FA_ERP_ST.label = Channels_Ft.label;
evw_07_vis_10_FA_ERP_ST.elec = Channels_Ft;
evw_07_vis_10_FA_ERP_ST.trial = evw_07_epochs_10_FA;
evw_07_vis_10_FA_ERP_ST.avg = mean(evw_07_epochs_10_FA,1);
evw_07_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
evw_07_vis_10_FA_ERP_ST.cfg = evw_07_vis_RL_10_ERP_ST.cfg;

evw_07_vis_10_CR_ERP_ST.SubID = 'evw_07';
evw_07_vis_10_CR_ERP_ST.time = evw_07_vis_RL_10_ERP_ST.time;
evw_07_vis_10_CR_ERP_ST.label = Channels_Ft.label;
evw_07_vis_10_CR_ERP_ST.elec = Channels_Ft;
evw_07_vis_10_CR_ERP_ST.trial = evw_07_epochs_10_CR;
evw_07_vis_10_CR_ERP_ST.avg = mean(evw_07_epochs_10_CR,1);
evw_07_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
evw_07_vis_10_CR_ERP_ST.cfg = evw_07_vis_RL_10_ERP_ST.cfg;

% ivl_14
disp('ivl_14');
data = ivl_14_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

ivl_14_epochs_10_FA = [];
ivl_14_epochs_10_CR = [];
Pass_10 = 0;
FA_ivl_14 = 1;
CR_ivl_14 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        ivl_14_epochs_10_FA(FA_ivl_14,:,:) = data(i,:,:);
        FA_ivl_14 = FA_ivl_14 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        ivl_14_epochs_10_CR(CR_ivl_14,:,:) = data(i,:,:);
        CR_ivl_14 = CR_ivl_14 + 1;
    end
end

ivl_14_vis_10_FA_ERP_ST.SubID = 'ivl_14';
ivl_14_vis_10_FA_ERP_ST.time = ivl_14_vis_LR_10_ERP_ST.time;
ivl_14_vis_10_FA_ERP_ST.label = Channels_Ft.label;
ivl_14_vis_10_FA_ERP_ST.elec = Channels_Ft;
ivl_14_vis_10_FA_ERP_ST.trial = ivl_14_epochs_10_FA;
ivl_14_vis_10_FA_ERP_ST.avg = mean(ivl_14_epochs_10_FA,1);
ivl_14_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
ivl_14_vis_10_FA_ERP_ST.cfg = ivl_14_vis_LR_10_ERP_ST.cfg;

ivl_14_vis_10_CR_ERP_ST.SubID = 'ivl_14';
ivl_14_vis_10_CR_ERP_ST.time = ivl_14_vis_LR_10_ERP_ST.time;
ivl_14_vis_10_CR_ERP_ST.label = Channels_Ft.label;
ivl_14_vis_10_CR_ERP_ST.elec = Channels_Ft;
ivl_14_vis_10_CR_ERP_ST.trial = ivl_14_epochs_10_CR;
ivl_14_vis_10_CR_ERP_ST.avg = mean(ivl_14_epochs_10_CR,1);
ivl_14_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
ivl_14_vis_10_CR_ERP_ST.cfg = ivl_14_vis_LR_10_ERP_ST.cfg;

% ixe_12
disp('ixe_12');
data = ixe_12_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

ixe_12_epochs_10_FA = [];
ixe_12_epochs_10_CR = [];
Pass_10 = 0;
FA_ixe_12 = 1;
CR_ixe_12 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        ixe_12_epochs_10_FA(FA_ixe_12,:,:) = data(i,:,:);
        FA_ixe_12 = FA_ixe_12 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        ixe_12_epochs_10_CR(CR_ixe_12,:,:) = data(i,:,:);
        CR_ixe_12 = CR_ixe_12 + 1;
    end
end

ixe_12_vis_10_FA_ERP_ST.SubID = 'ixe_12';
ixe_12_vis_10_FA_ERP_ST.time = ixe_12_vis_LR_10_ERP_ST.time;
ixe_12_vis_10_FA_ERP_ST.label = Channels_Ft.label;
ixe_12_vis_10_FA_ERP_ST.elec = Channels_Ft;
ixe_12_vis_10_FA_ERP_ST.trial = ixe_12_epochs_10_FA;
ixe_12_vis_10_FA_ERP_ST.avg = mean(ixe_12_epochs_10_FA,1);
ixe_12_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
ixe_12_vis_10_FA_ERP_ST.cfg = ixe_12_vis_LR_10_ERP_ST.cfg;

ixe_12_vis_10_CR_ERP_ST.SubID = 'ixe_12';
ixe_12_vis_10_CR_ERP_ST.time = ixe_12_vis_LR_10_ERP_ST.time;
ixe_12_vis_10_CR_ERP_ST.label = Channels_Ft.label;
ixe_12_vis_10_CR_ERP_ST.elec = Channels_Ft;
ixe_12_vis_10_CR_ERP_ST.trial = ixe_12_epochs_10_CR;
ixe_12_vis_10_CR_ERP_ST.avg = mean(ixe_12_epochs_10_CR,1);
ixe_12_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
ixe_12_vis_10_CR_ERP_ST.cfg = ixe_12_vis_LR_10_ERP_ST.cfg;

% jvj_18
disp('jvj_18');
data = jvj_18_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

jvj_18_epochs_10_FA = [];
jvj_18_epochs_10_CR = [];
Pass_10 = 0;
FA_jvj_18 = 1;
CR_jvj_18 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jvj_18_epochs_10_FA(FA_jvj_18,:,:) = data(i,:,:);
        FA_jvj_18 = FA_jvj_18 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jvj_18_epochs_10_CR(CR_jvj_18,:,:) = data(i,:,:);
        CR_jvj_18 = CR_jvj_18 + 1;
    end
end

jvj_18_vis_10_FA_ERP_ST.SubID = 'jvj_18';
jvj_18_vis_10_FA_ERP_ST.time = jvj_18_vis_LR_10_ERP_ST.time;
jvj_18_vis_10_FA_ERP_ST.label = Channels_Ft.label;
jvj_18_vis_10_FA_ERP_ST.elec = Channels_Ft;
jvj_18_vis_10_FA_ERP_ST.trial = jvj_18_epochs_10_FA;
jvj_18_vis_10_FA_ERP_ST.avg = mean(jvj_18_epochs_10_FA,1);
jvj_18_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
jvj_18_vis_10_FA_ERP_ST.cfg = jvj_18_vis_LR_10_ERP_ST.cfg;

jvj_18_vis_10_CR_ERP_ST.SubID = 'jvj_18';
jvj_18_vis_10_CR_ERP_ST.time = jvj_18_vis_LR_10_ERP_ST.time;
jvj_18_vis_10_CR_ERP_ST.label = Channels_Ft.label;
jvj_18_vis_10_CR_ERP_ST.elec = Channels_Ft;
jvj_18_vis_10_CR_ERP_ST.trial = jvj_18_epochs_10_CR;
jvj_18_vis_10_CR_ERP_ST.avg = mean(jvj_18_epochs_10_CR,1);
jvj_18_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
jvj_18_vis_10_CR_ERP_ST.cfg = jvj_18_vis_LR_10_ERP_ST.cfg;

% kxj_19
disp('kxj_19');
data = kxj_19_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

kxj_19_epochs_10_FA = [];
kxj_19_epochs_10_CR = [];
Pass_10 = 0;
FA_kxj_19 = 1;
CR_kxj_19 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        kxj_19_epochs_10_FA(FA_kxj_19,:,:) = data(i,:,:);
        FA_kxj_19 = FA_kxj_19 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        kxj_19_epochs_10_CR(CR_kxj_19,:,:) = data(i,:,:);
        CR_kxj_19 = CR_kxj_19 + 1;
    end
end

kxj_19_vis_10_FA_ERP_ST.SubID = 'kxj_19';
kxj_19_vis_10_FA_ERP_ST.time = kxj_19_vis_RL_10_ERP_ST.time;
kxj_19_vis_10_FA_ERP_ST.label = Channels_Ft.label;
kxj_19_vis_10_FA_ERP_ST.elec = Channels_Ft;
kxj_19_vis_10_FA_ERP_ST.trial = kxj_19_epochs_10_FA;
kxj_19_vis_10_FA_ERP_ST.avg = mean(kxj_19_epochs_10_FA,1);
kxj_19_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
kxj_19_vis_10_FA_ERP_ST.cfg = kxj_19_vis_RL_10_ERP_ST.cfg;

kxj_19_vis_10_CR_ERP_ST.SubID = 'kxj_19';
kxj_19_vis_10_CR_ERP_ST.time = kxj_19_vis_RL_10_ERP_ST.time;
kxj_19_vis_10_CR_ERP_ST.label = Channels_Ft.label;
kxj_19_vis_10_CR_ERP_ST.elec = Channels_Ft;
kxj_19_vis_10_CR_ERP_ST.trial = kxj_19_epochs_10_CR;
kxj_19_vis_10_CR_ERP_ST.avg = mean(kxj_19_epochs_10_CR,1);
kxj_19_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
kxj_19_vis_10_CR_ERP_ST.cfg = kxj_19_vis_RL_10_ERP_ST.cfg;

% lxh_10
disp('lxh_10');
data = lxh_10_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

lxh_10_epochs_10_FA = [];
lxh_10_epochs_10_CR = [];
Pass_10 = 0;
FA_lxh_10 = 1;
CR_lxh_10 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        lxh_10_epochs_10_FA(FA_lxh_10,:,:) = data(i,:,:);
        FA_lxh_10 = FA_lxh_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        lxh_10_epochs_10_CR(CR_lxh_10,:,:) = data(i,:,:);
        CR_lxh_10 = CR_lxh_10 + 1;
    end
end

lxh_10_vis_10_FA_ERP_ST.SubID = 'lxh_10';
lxh_10_vis_10_FA_ERP_ST.time = lxh_10_vis_LR_10_ERP_ST.time;
lxh_10_vis_10_FA_ERP_ST.label = Channels_Ft.label;
lxh_10_vis_10_FA_ERP_ST.elec = Channels_Ft;
lxh_10_vis_10_FA_ERP_ST.trial = lxh_10_epochs_10_FA;
lxh_10_vis_10_FA_ERP_ST.avg = mean(lxh_10_epochs_10_FA,1);
lxh_10_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
lxh_10_vis_10_FA_ERP_ST.cfg = lxh_10_vis_LR_10_ERP_ST.cfg;

lxh_10_vis_10_CR_ERP_ST.SubID = 'lxh_10';
lxh_10_vis_10_CR_ERP_ST.time = lxh_10_vis_LR_10_ERP_ST.time;
lxh_10_vis_10_CR_ERP_ST.label = Channels_Ft.label;
lxh_10_vis_10_CR_ERP_ST.elec = Channels_Ft;
lxh_10_vis_10_CR_ERP_ST.trial = lxh_10_epochs_10_CR;
lxh_10_vis_10_CR_ERP_ST.avg = mean(lxh_10_epochs_10_CR,1);
lxh_10_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
lxh_10_vis_10_CR_ERP_ST.cfg = lxh_10_vis_LR_10_ERP_ST.cfg;

% pxp_04
disp('pxp_04');
data = pxp_04_vis_LR_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

pxp_04_epochs_10_FA = [];
pxp_04_epochs_10_CR = [];
Pass_10 = 0;
FA_pxp_04 = 1;
CR_pxp_04 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        pxp_04_epochs_10_FA(FA_pxp_04,:,:) = data(i,:,:);
        FA_pxp_04 = FA_pxp_04 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        pxp_04_epochs_10_CR(CR_pxp_04,:,:) = data(i,:,:);
        CR_pxp_04 = CR_pxp_04 + 1;
    end
end

pxp_04_vis_10_FA_ERP_ST.SubID = 'pxp_04';
pxp_04_vis_10_FA_ERP_ST.time = pxp_04_vis_LR_10_ERP_ST.time;
pxp_04_vis_10_FA_ERP_ST.label = Channels_Ft.label;
pxp_04_vis_10_FA_ERP_ST.elec = Channels_Ft;
pxp_04_vis_10_FA_ERP_ST.trial = pxp_04_epochs_10_FA;
pxp_04_vis_10_FA_ERP_ST.avg = mean(pxp_04_epochs_10_FA,1);
pxp_04_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
pxp_04_vis_10_FA_ERP_ST.cfg = pxp_04_vis_LR_10_ERP_ST.cfg;

pxp_04_vis_10_CR_ERP_ST.SubID = 'pxp_04';
pxp_04_vis_10_CR_ERP_ST.time = pxp_04_vis_LR_10_ERP_ST.time;
pxp_04_vis_10_CR_ERP_ST.label = Channels_Ft.label;
pxp_04_vis_10_CR_ERP_ST.elec = Channels_Ft;
pxp_04_vis_10_CR_ERP_ST.trial = pxp_04_epochs_10_CR;
pxp_04_vis_10_CR_ERP_ST.avg = mean(pxp_04_epochs_10_CR,1);
pxp_04_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
pxp_04_vis_10_CR_ERP_ST.cfg = pxp_04_vis_LR_10_ERP_ST.cfg;

% rxp_02
disp('rxp_02');
data = rxp_02_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

rxp_02_epochs_10_FA = [];
rxp_02_epochs_10_CR = [];
Pass_10 = 0;
FA_rxp_02 = 1;
CR_rxp_02 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        rxp_02_epochs_10_FA(FA_rxp_02,:,:) = data(i,:,:);
        FA_rxp_02 = FA_rxp_02 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        rxp_02_epochs_10_CR(CR_rxp_02,:,:) = data(i,:,:);
        CR_rxp_02 = CR_rxp_02 + 1;
    end
end

rxp_02_vis_10_FA_ERP_ST.SubID = 'rxp_02';
rxp_02_vis_10_FA_ERP_ST.time = rxp_02_vis_RL_10_ERP_ST.time;
rxp_02_vis_10_FA_ERP_ST.label = Channels_Ft.label;
rxp_02_vis_10_FA_ERP_ST.elec = Channels_Ft;
rxp_02_vis_10_FA_ERP_ST.trial = rxp_02_epochs_10_FA;
rxp_02_vis_10_FA_ERP_ST.avg = mean(rxp_02_epochs_10_FA,1);
rxp_02_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
rxp_02_vis_10_FA_ERP_ST.cfg = rxp_02_vis_RL_10_ERP_ST.cfg;

rxp_02_vis_10_CR_ERP_ST.SubID = 'rxp_02';
rxp_02_vis_10_CR_ERP_ST.time = rxp_02_vis_RL_10_ERP_ST.time;
rxp_02_vis_10_CR_ERP_ST.label = Channels_Ft.label;
rxp_02_vis_10_CR_ERP_ST.elec = Channels_Ft;
rxp_02_vis_10_CR_ERP_ST.trial = rxp_02_epochs_10_CR;
rxp_02_vis_10_CR_ERP_ST.avg = mean(rxp_02_epochs_10_CR,1);
rxp_02_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
rxp_02_vis_10_CR_ERP_ST.cfg = rxp_02_vis_RL_10_ERP_ST.cfg;

% sxc_08
disp('sxc_08');
data = sxc_08_vis_RL_10_ERP_ST.trial;
size_data = size(data);
num_events = size_data(1);

sxc_08_epochs_10_FA = [];
sxc_08_epochs_10_CR = [];
Pass_10 = 0;
FA_sxc_08 = 1;
CR_sxc_08 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_10 = Pass_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        sxc_08_epochs_10_FA(FA_sxc_08,:,:) = data(i,:,:);
        FA_sxc_08 = FA_sxc_08 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        sxc_08_epochs_10_CR(CR_sxc_08,:,:) = data(i,:,:);
        CR_sxc_08 = CR_sxc_08 + 1;
    end
end

sxc_08_vis_10_FA_ERP_ST.SubID = 'sxc_08';
sxc_08_vis_10_FA_ERP_ST.time = sxc_08_vis_RL_10_ERP_ST.time;
sxc_08_vis_10_FA_ERP_ST.label = Channels_Ft.label;
sxc_08_vis_10_FA_ERP_ST.elec = Channels_Ft;
sxc_08_vis_10_FA_ERP_ST.trial = sxc_08_epochs_10_FA;
sxc_08_vis_10_FA_ERP_ST.avg = mean(sxc_08_epochs_10_FA,1);
sxc_08_vis_10_FA_ERP_ST.dimord = 'rpt_chan_time';
sxc_08_vis_10_FA_ERP_ST.cfg = sxc_08_vis_RL_10_ERP_ST.cfg;

sxc_08_vis_10_CR_ERP_ST.SubID = 'sxc_08';
sxc_08_vis_10_CR_ERP_ST.time = sxc_08_vis_RL_10_ERP_ST.time;
sxc_08_vis_10_CR_ERP_ST.label = Channels_Ft.label;
sxc_08_vis_10_CR_ERP_ST.elec = Channels_Ft;
sxc_08_vis_10_CR_ERP_ST.trial = sxc_08_epochs_10_CR;
sxc_08_vis_10_CR_ERP_ST.avg = mean(sxc_08_epochs_10_CR,1);
sxc_08_vis_10_CR_ERP_ST.dimord = 'rpt_chan_time';
sxc_08_vis_10_CR_ERP_ST.cfg = sxc_08_vis_RL_10_ERP_ST.cfg;

Tinnitus_vis_10_FA_ERP_ST(1).subject = axl_13_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(2).subject = bxr_06_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(3).subject = evw_07_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(4).subject = ivl_14_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(5).subject = ixe_12_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(6).subject = jvj_18_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(7).subject = kxj_19_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(8).subject = lxh_10_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(9).subject = pxp_04_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(10).subject = rxp_02_vis_10_FA_ERP_ST;
Tinnitus_vis_10_FA_ERP_ST(11).subject = sxc_08_vis_10_FA_ERP_ST;

Tinnitus_vis_10_CR_ERP_ST(1).subject = axl_13_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(2).subject = bxr_06_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(3).subject = evw_07_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(4).subject = ivl_14_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(5).subject = ixe_12_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(6).subject = jvj_18_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(7).subject = kxj_19_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(8).subject = lxh_10_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(9).subject = pxp_04_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(10).subject = rxp_02_vis_10_CR_ERP_ST;
Tinnitus_vis_10_CR_ERP_ST(11).subject = sxc_08_vis_10_CR_ERP_ST;

save Tinnitus_vis_10_FA_ERP_ST Tinnitus_vis_10_FA_ERP_ST;
save Tinnitus_vis_10_CR_ERP_ST Tinnitus_vis_10_CR_ERP_ST;

Tinnitus_vis_HighPer_FA_ERP_ST(1).subject = axl_13_vis_10_FA_ERP_ST;
Tinnitus_vis_HighPer_FA_ERP_ST(2).subject = jvj_18_vis_10_FA_ERP_ST;
Tinnitus_vis_HighPer_FA_ERP_ST(3).subject = kxj_19_vis_10_FA_ERP_ST;
Tinnitus_vis_HighPer_FA_ERP_ST(4).subject = lxh_10_vis_10_FA_ERP_ST;
Tinnitus_vis_HighPer_FA_ERP_ST(5).subject = rxp_02_vis_10_FA_ERP_ST;
Tinnitus_vis_HighPer_FA_ERP_ST(6).subject = sxc_08_vis_10_CR_ERP_ST;

Tinnitus_vis_LowPer_CR_ERP_ST(1).subject = bxr_06_vis_10_CR_ERP_ST;
Tinnitus_vis_LowPer_CR_ERP_ST(2).subject = evw_07_vis_10_CR_ERP_ST;
Tinnitus_vis_LowPer_CR_ERP_ST(3).subject = ivl_14_vis_10_CR_ERP_ST;
Tinnitus_vis_LowPer_CR_ERP_ST(4).subject = ixe_12_vis_10_CR_ERP_ST;
Tinnitus_vis_LowPer_CR_ERP_ST(5).subject = pxp_04_vis_10_CR_ERP_ST;

save Tinnitus_vis_HighPer_FA_ERP_ST Tinnitus_vis_HighPer_FA_ERP_ST;
save Tinnitus_vis_LowPer_CR_ERP_ST Tinnitus_vis_LowPer_CR_ERP_ST;

clear axl_13_vis_10_FA_ERP_ST;
clear bxr_06_vis_10_FA_ERP_ST;
clear evw_07_vis_10_FA_ERP_ST;
clear ivl_14_vis_10_FA_ERP_ST;
clear ixe_12_vis_10_FA_ERP_ST;
clear jvj_18_vis_10_FA_ERP_ST;
clear  kxj_19_vis_10_FA_ERP_ST;
clear lxh_10_vis_10_FA_ERP_ST;
clear pxp_04_vis_10_FA_ERP_ST;
clear rxp_02_vis_10_FA_ERP_ST;
clear sxc_08_vis_10_FA_ERP_ST;

clear axl_13_vis_10_CR_ERP_ST;
clear bxr_06_vis_10_CR_ERP_ST;
clear evw_07_vis_10_CR_ERP_ST;
clear ivl_14_vis_10_CR_ERP_ST;
clear ixe_12_vis_10_CR_ERP_ST;
clear jvj_18_vis_10_CR_ERP_ST;
clear kxj_19_vis_10_CR_ERP_ST;
clear lxh_10_vis_10_CR_ERP_ST;
clear pxp_04_vis_10_CR_ERP_ST;
clear rxp_02_vis_10_CR_ERP_ST;
clear sxc_08_vis_10_CR_ERP_ST;

clear axl_13_epochs_10_CR ;
clear bxr_06_epochs_10_CR ;
clear evw_07_epochs_10_CR ;
clear ivl_14_epochs_10_CR ;
clear ixe_12_epochs_10_CR ;
clear jvj_18_epochs_10_CR ;
clear kxj_19_epochs_10_CR ;
clear lxh_10_epochs_10_CR ;
clear pxp_04_epochs_10_CR ;
clear rxp_02_epochs_10_CR ;
clear sxc_08_epochs_10_CR ;

clear axl_13_vis_10_CR_ERP_ST;
clear bxr_06_vis_10_CR_ERP_ST;
clear evw_07_vis_10_CR_ERP_ST;
clear ivl_14_vis_10_CR_ERP_ST;
clear ixe_12_vis_10_CR_ERP_ST;
clear jvj_18_vis_10_CR_ERP_ST;
clear kxj_19_vis_10_CR_ERP_ST;
clear lxh_10_vis_10_CR_ERP_ST;
clear pxp_04_vis_10_CR_ERP_ST;
clear rxp_02_vis_10_CR_ERP_ST;
clear sxc_08_vis_10_CR_ERP_ST;

clear Tinnitus_vis_HighPer_FA_ERP_ST;
clear Tinnitus_vis_LowPer_CR_ERP_ST;

%% stats - High perceivers: Tinnitus vs Controls
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;
load('Controls_vis_HighPer_FA_ERP_ST.mat');
load('Tinnitus_vis_HighPer_FA_ERP_ST.mat');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\neighbours_mitsar.mat');

TinCon_vis_HighPer_FA_ERP_contrasts = [];

cfg = [];
cfg.parameter = 'avg';
cfg.latency = [-.1 2];
cfg.channel = {'Fz', 'Cz', 'Pz'}; 
cfg.method = 'montecarlo';
cfg.statistic = 'ft_statfun_indepsamplesT';
cfg.correctm = 'fdr';
cfg.clusteralpha = 0.05;
cfg.clusterstatistic = 'maxsum';
cfg.clusterthreshold = 'nonparametric_individual';
cfg.minnbchan = 2;
cfg.neighbours = neighbours;  
cfg.tail = 0;
cfg.clustertail = 0;
cfg.alpha = 0.025;
cfg.numrandomization = 1000;

size_Con = 4;
size_Tin = 6;

design = zeros(1,size_Con + size_Tin);
design(1,1:size_Tin) = 2;
design(1,(size_Tin+1):(size_Con + size_Tin))= 1;

cfg.design = design;             % design matrix
cfg.ivar  = 1;   
        
[stat_TinCon_vis_HighPer_FA_ERP] = ft_timelockstatistics(cfg, Tinnitus_vis_HighPer_FA_ERP_ST(1).subject, Tinnitus_vis_HighPer_FA_ERP_ST(2).subject, Tinnitus_vis_HighPer_FA_ERP_ST(3).subject,...
    Tinnitus_vis_HighPer_FA_ERP_ST(4).subject, Tinnitus_vis_HighPer_FA_ERP_ST(5).subject, Tinnitus_vis_HighPer_FA_ERP_ST(6).subject, Controls_vis_HighPer_FA_ERP_ST(1).subject,...
    Controls_vis_HighPer_FA_ERP_ST(2).subject, Controls_vis_HighPer_FA_ERP_ST(3).subject, Controls_vis_HighPer_FA_ERP_ST(4).subject);
   
stat_logic = [];
for i = 1 : 3
    for j = 1 : 526
        if stat_TinCon_vis_HighPer_FA_ERP.prob(i,j) < .05
            stat_logic(i,j) = 1;
        else
            stat_logic(i,j) = 0;
        end
    end
end

save stat_TinCon_vis_HighPer_FA_ERP stat_TinCon_vis_HighPer_FA_ERP;

%% stats - Low perceivers: Controls vs Tinnitus
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;
load('Controls_vis_LowPer_CR_ERP_ST.mat');
load('Tinnitus_vis_LowPer_CR_ERP_ST.mat');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\neighbours_mitsar.mat');

Con_vis_HighPer_LowPer_FA_CR_ERP_contrasts = [];

cfg = [];
cfg.parameter = 'avg';
cfg.latency = [-.1 2];
cfg.channel = {'Fz', 'Cz', 'Pz'}; 
cfg.method = 'montecarlo';
cfg.statistic = 'ft_statfun_indepsamplesT';
cfg.correctm = 'fdr';
cfg.clusteralpha = 0.05;
cfg.clusterstatistic = 'maxsum';
cfg.clusterthreshold = 'nonparametric_individual';
cfg.minnbchan = 2;
cfg.neighbours = neighbours;  
cfg.tail = 0;
cfg.clustertail = 0;
cfg.alpha = 0.025;
cfg.numrandomization = 1000;

size_Con = 5;
size_Tin = 5;

design = zeros(1,size_Con + size_Tin);
design(1,1:size_Tin) = 2;
design(1,(size_Tin+1):(size_Con + size_Tin))= 1;

cfg.design = design;             % design matrix
cfg.ivar  = 1;   
        
[stat_TinCon_vis_LowPer_CR_ERP] = ft_timelockstatistics(cfg, Tinnitus_vis_LowPer_CR_ERP_ST(1).subject, Tinnitus_vis_LowPer_CR_ERP_ST(2).subject, Tinnitus_vis_LowPer_CR_ERP_ST(3).subject,...
   Tinnitus_vis_LowPer_CR_ERP_ST(4).subject, Tinnitus_vis_LowPer_CR_ERP_ST(5).subject, Controls_vis_LowPer_CR_ERP_ST(1).subject, Controls_vis_LowPer_CR_ERP_ST(2).subject, ...
   Controls_vis_LowPer_CR_ERP_ST(3).subject, Controls_vis_LowPer_CR_ERP_ST(4).subject,Controls_vis_LowPer_CR_ERP_ST(5).subject );
   
stat_logic = [];
for i = 1 : 3
    for j = 1 : 526
        if stat_TinCon_vis_LowPer_CR_ERP.prob(i,j) < .05
            stat_logic(i,j) = 1;
        else
            stat_logic(i,j) = 0;
        end
    end
end

save stat_TinCon_vis_LowPer_CR_ERP stat_TinCon_vis_LowPer_CR_ERP;

%% Plotting: High Perceivers : Tinnitus vs Controls 

load Controls_vis_HighPer_FA_ERP_ST;
load Tinnitus_vis_HighPer_FA_ERP_ST;
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Times_new.mat');

Controls_vis_HighPer_FA_ERP_sub_avg = [];
Tinnitus_vis_HighPer_FA_ERP_sub_avg = [];
Controls_vis_HighPer_FA_ERP_sub_var = [];
Tinnitus_vis_HighPer_FA_ERP_sub_var = [];


for i = 1 : 4
    Controls_vis_HighPer_FA_ERP_sub_avg(:,:,i) = reshape(Controls_vis_HighPer_FA_ERP_ST(i).subject.avg,20,900);
    %Controls_vis_HighPer_FA_ERP_sub_var(:,:,i) = reshape(var(Controls_vis_10_CR_ERP_ST(Controls_sub(i)).subject.trial,0,1),20,900);
end


for i = 1 : 6
    Tinnitus_vis_HighPer_FA_ERP_sub_avg(:,:,i) = reshape(Tinnitus_vis_HighPer_FA_ERP_ST(i).subject.avg,20,900);
    %Tinnitus_vis_HighPer_FA_ERP_sub_var(:,:,i) = reshape(var(Tinnitus_vis_10_CR_ERP_ST(Tinnitus_sub(i)).subject.trial,0,1),20,900);
end

Controls_vis_HighPer_FA_ERP_avg = mean(Controls_vis_HighPer_FA_ERP_sub_avg,3);
%Controls_pooledSD = sqrt(mean(Controls_vis_HighPer_FA_ERP_sub_var,3)./1857);
%Controls_vis_HighPer_FA_ERP_pooledSE = Controls_pooledSD.*sqrt(4/1857);

Tinnitus_vis_HighPer_FA_ERP_avg = mean(Tinnitus_vis_HighPer_FA_ERP_sub_avg,3);
%Tinnitus_pooledSD = sqrt(mean(Tinnitus_vis_HighPer_FA_ERP_sub_var,3)./1636);
%Tinnitus_vis_HighPer_FA_ERP_pooledSE = Tinnitus_pooledSD.*sqrt(4/1636);

Tin_Con_vis_HighPer_FA_ERP_avg = Tinnitus_vis_HighPer_FA_ERP_avg - Controls_vis_HighPer_FA_ERP_avg;

customcolormap = customcolormap_preset('red-white-blue');

% during stimulus potential - 348 - 480

Controls_vis_HighPer_FA_meanAmp_LPP_2 = mean(Controls_vis_HighPer_FA_ERP_avg(1:19,113:146),2);
Tinnitus_vis_HighPer_FA_meanAmp_LPP_2 = mean(Tinnitus_vis_HighPer_FA_ERP_avg(1:19,113:146),2);

TinCon_vis_HighPer_FA_meanAmp_LPP_2 = Tinnitus_vis_HighPer_FA_meanAmp_LPP_2 - Controls_vis_HighPer_FA_meanAmp_LPP_2;

figure; topoplot(Controls_vis_HighPer_FA_meanAmp_LPP_2, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);
figure; topoplot(Tinnitus_vis_HighPer_FA_meanAmp_LPP_2, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);
figure; topoplot(TinCon_vis_HighPer_FA_meanAmp_LPP_2, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);

Controls_vis_HighPer_FA_ERP_3chan = Controls_vis_HighPer_FA_ERP_avg([5 10 15],:);
Tinnitus_vis_HighPer_FA_ERP_3chan = Tinnitus_vis_HighPer_FA_ERP_avg([5 10 15],:);

% post stimulus

%% Plotting: Controls CR: FA vs no FA

load Controls_vis_LowPer_CR_ERP_ST;
load Tinnitus_vis_LowPer_CR_ERP_ST;
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Times_new.mat');

Controls_vis_LowPer_CR_ERP_sub_avg = [];
Tinnitus_vis_LowPer_CR_ERP_sub_avg = [];
%Controls_vis_LowPer_CR_ERP_sub_var = [];
%Tinnitus_vis_LowPer_CR_ERP_sub_var = [];


for i = 1 : 5
    Controls_vis_LowPer_CR_ERP_sub_avg(:,:,i) = reshape(Controls_vis_LowPer_CR_ERP_ST(i).subject.avg,20,900);
    %Controls_vis_LowPer_CR_ERP_sub_var(:,:,i) = reshape(var(Controls_vis_10_CR_ERP_ST(Controls_sub(i)).subject.trial,0,1),20,900);
end


for i = 1 : 5
    Tinnitus_vis_LowPer_CR_ERP_sub_avg(:,:,i) = reshape(Tinnitus_vis_LowPer_CR_ERP_ST(i).subject.avg,20,900);
    %Tinnitus_vis_LowPer_CR_ERP_sub_var(:,:,i) = reshape(var(Tinnitus_vis_10_CR_ERP_ST(Tinnitus_sub(i)).subject.trial,0,1),20,900);
end

Controls_vis_LowPer_CR_ERP_avg = mean(Controls_vis_LowPer_CR_ERP_sub_avg,3);
%Controls_pooledSD = sqrt(mean(Controls_vis_LowPer_CR_ERP_sub_var,3)./1857);
%Controls_vis_LowPer_CR_ERP_pooledSE = Controls_pooledSD.*sqrt(4/1857);

Tinnitus_vis_LowPer_CR_ERP_avg = mean(Tinnitus_vis_LowPer_CR_ERP_sub_avg,3);
%Tinnitus_pooledSD = sqrt(mean(Tinnitus_vis_LowPer_CR_ERP_sub_var,3)./1636);
%Tinnitus_vis_LowPer_CR_ERP_pooledSE = Tinnitus_pooledSD.*sqrt(4/1636);

Tin_Con_vis_LowPer_CR_ERP_avg = Tinnitus_vis_LowPer_CR_ERP_avg - Controls_vis_LowPer_CR_ERP_avg;

customcolormap = customcolormap_preset('red-white-blue');

% pre stimulus potential - 112 - 300

Controls_vis_LowPer_CR_meanAmp_pre = mean(Controls_vis_LowPer_CR_ERP_avg(1:19,54:101),2);
Tinnitus_vis_LowPer_CR_meanAmp_pre = mean(Tinnitus_vis_LowPer_CR_ERP_avg(1:19,54:101),2);

TinCon_vis_LowPer_CR_meanAmp_pre = Tinnitus_vis_LowPer_CR_meanAmp_pre - Controls_vis_LowPer_CR_meanAmp_pre;

figure; topoplot(Controls_vis_LowPer_CR_meanAmp_pre, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);
figure; topoplot(Tinnitus_vis_LowPer_CR_meanAmp_pre, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);
figure; topoplot(TinCon_vis_LowPer_CR_meanAmp_pre, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);


% during stimulus potential - 300 - 342

Controls_vis_LowPer_CR_meanAmp_dS_1 = mean(Controls_vis_LowPer_CR_ERP_avg(1:19,102:118),2);
Tinnitus_vis_LowPer_CR_meanAmp_dS_1 = mean(Tinnitus_vis_LowPer_CR_ERP_avg(1:19,102:118),2);

TinCon_vis_LowPer_CR_meanAmp_dS_1 = Tinnitus_vis_LowPer_CR_meanAmp_dS_1 - Controls_vis_LowPer_CR_meanAmp_dS_1;

figure; topoplot(Controls_vis_LowPer_CR_meanAmp_dS_1, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);
figure; topoplot(Tinnitus_vis_LowPer_CR_meanAmp_dS_1, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);
figure; topoplot(TinCon_vis_LowPer_CR_meanAmp_dS_1, ALLEEG.chanlocs, 'maplimits', 'maxmin', 'style', 'both', 'shading', 'interp'); colormap(customcolormap);

Controls_vis_LowPer_CR_ERP_3chan = Controls_vis_LowPer_CR_ERP_avg([5 10 15],:);
Tinnitus_vis_LowPer_CR_ERP_3chan = Tinnitus_vis_LowPer_CR_ERP_avg([5 10 15],:);


%% High Per: FA: Controls and Tinnitus Time-frequency 

load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Times_new');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\frex');

load Controls_vis_HighPer_FA_ERP_ST;
load Tinnitus_vis_HighPer_FA_ERP_ST;

Controls_vis_HighPer_FA_ERP_sub_avg = [];
Tinnitus_vis_HighPer_FA_ERP_sub_avg = [];

for i = 1 : 4
    Controls_vis_HighPer_FA_ERP_sub_avg(:,:,i) = reshape(Controls_vis_HighPer_FA_ERP_ST(i).subject.avg,20,900);
end


for i = 1 : 6
    Tinnitus_vis_HighPer_FA_ERP_sub_avg(:,:,i) = reshape(Tinnitus_vis_HighPer_FA_ERP_ST(i).subject.avg,20,900);
end

%Controls

[jxo_09_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_HighPer_FA_ERP_sub_avg(5,:,1), 1, Times_new);

[lxh_22_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_HighPer_FA_ERP_sub_avg(5,:,2), 1, Times_new);

[oxh_24_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_HighPer_FA_ERP_sub_avg(5,:,3), 1, Times_new);

[pxm_25_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_HighPer_FA_ERP_sub_avg(5,:,4), 1, Times_new);


%Tinnitus

[axl_13_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_HighPer_FA_ERP_sub_avg(5,:,1), 1, Times_new);

[jvj_18_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_HighPer_FA_ERP_sub_avg(5,:,2), 1, Times_new);

[kxj_19_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_HighPer_FA_ERP_sub_avg(5,:,3), 1, Times_new);

[lxh_10_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_HighPer_FA_ERP_sub_avg(5,:,4), 1, Times_new);

[rxp_02_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_HighPer_FA_ERP_sub_avg(5,:,5), 1, Times_new);

[sxc_08_vis_HighPer_FA_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_HighPer_FA_ERP_sub_avg(5,:,6), 1, Times_new);

Controls_vis_HighPer_FA_ERP_tf_nobc(:,:,1) = jxo_09_vis_HighPer_FA_ERP_tf_nobc;
Controls_vis_HighPer_FA_ERP_tf_nobc(:,:,2) = lxh_22_vis_HighPer_FA_ERP_tf_nobc;
Controls_vis_HighPer_FA_ERP_tf_nobc(:,:,3) = oxh_24_vis_HighPer_FA_ERP_tf_nobc;
Controls_vis_HighPer_FA_ERP_tf_nobc(:,:,4) = pxm_25_vis_HighPer_FA_ERP_tf_nobc;
save Controls_vis_HighPer_FA_ERP_tf_nobc Controls_vis_HighPer_FA_ERP_tf_nobc

Tinnitus_vis_HighPer_FA_ERP_tf_nobc(:,:,1) = axl_13_vis_HighPer_FA_ERP_tf_nobc;
Tinnitus_vis_HighPer_FA_ERP_tf_nobc(:,:,2) = jvj_18_vis_HighPer_FA_ERP_tf_nobc;
Tinnitus_vis_HighPer_FA_ERP_tf_nobc(:,:,3) = kxj_19_vis_HighPer_FA_ERP_tf_nobc;
Tinnitus_vis_HighPer_FA_ERP_tf_nobc(:,:,4) = lxh_10_vis_HighPer_FA_ERP_tf_nobc;
Tinnitus_vis_HighPer_FA_ERP_tf_nobc(:,:,5) = rxp_02_vis_HighPer_FA_ERP_tf_nobc;
Tinnitus_vis_HighPer_FA_ERP_tf_nobc(:,:,6) = sxc_08_vis_HighPer_FA_ERP_tf_nobc;
save Tinnitus_vis_HighPer_FA_ERP_tf_nobc Tinnitus_vis_HighPer_FA_ERP_tf_nobc

Controls_vis_HighPer_FA_ERP_tf_nobc_avg = mean(Controls_vis_HighPer_FA_ERP_tf_nobc,3);
Tinnitus_vis_HighPer_FA_ERP_tf_nobc_avg = mean(Tinnitus_vis_HighPer_FA_ERP_tf_nobc,3);
TinCon_vis_HighPer_FA_ERP_tf_nobc_avg = Tinnitus_vis_HighPer_FA_ERP_tf_nobc_avg - Controls_vis_HighPer_FA_ERP_tf_nobc_avg;

figure; contourf(Times_new, frex, squeeze(Controls_vis_HighPer_FA_ERP_tf_nobc_avg) ,40, 'linecolor', 'none');
figure; contourf(Times_new, frex, squeeze(Tinnitus_vis_HighPer_FA_ERP_tf_nobc_avg),40, 'linecolor', 'none');
figure; contourf(Times_new, frex, squeeze(TinCon_vis_HighPer_FA_ERP_tf_nobc_avg),40, 'linecolor', 'none');

Controls_Theta_amp = reshape(mean(mean(Controls_vis_HighPer_FA_ERP_tf_nobc(13:26,113:146,:),1),2),4,1); 
Tinnitus_Theta_amp = reshape(mean(mean(Tinnitus_vis_HighPer_FA_ERP_tf_nobc(13:26,113:146,:),1),2),6,1);

Controls_Alpha_amp = reshape(mean(mean(Controls_vis_HighPer_FA_ERP_tf_nobc(29:45,113:146,:),1),2),4,1); 
Tinnitus_Alpha_amp = reshape(mean(mean(Tinnitus_vis_HighPer_FA_ERP_tf_nobc(29:45,113:146,:),1),2),6,1);

Controls_Beta_amp = reshape(mean(mean(Controls_vis_HighPer_FA_ERP_tf_nobc(49:117,113:146,:),1),2),4,1); 
Tinnitus_Beta_amp = reshape(mean(mean(Tinnitus_vis_HighPer_FA_ERP_tf_nobc(49:117,113:146,:),1),2),6,1);

Controls_Gamma_amp = reshape(mean(mean(Controls_vis_HighPer_FA_ERP_tf_nobc(119:173,113:146,:),1),2),4,1); 
Tinnitus_Gamma_amp = reshape(mean(mean(Tinnitus_vis_HighPer_FA_ERP_tf_nobc(119:173,113:146,:),1),2),6,1);


%% Low Per: CR: Controls and Tinnitus Time-frequency 

load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Times_new');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\frex');

load Controls_vis_LowPer_CR_ERP_ST;
load Tinnitus_vis_LowPer_CR_ERP_ST;

Controls_vis_LowPer_CR_ERP_sub_avg = [];
Tinnitus_vis_LowPer_CR_ERP_sub_avg = [];

for i = 1 : 5
    Controls_vis_LowPer_CR_ERP_sub_avg(:,:,i) = reshape(Controls_vis_LowPer_CR_ERP_ST(i).subject.avg,20,900);
end


for i = 1 : 5
    Tinnitus_vis_LowPer_CR_ERP_sub_avg(:,:,i) = reshape(Tinnitus_vis_LowPer_CR_ERP_ST(i).subject.avg,20,900);
end

%Controls

[axm_01_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_LowPer_CR_ERP_sub_avg(15,:,1), 1, Times_new);

[jvw_16_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_LowPer_CR_ERP_sub_avg(15,:,2), 1, Times_new);

[jxn_11_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_LowPer_CR_ERP_sub_avg(15,:,3), 1, Times_new);

[kxj_15_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_LowPer_CR_ERP_sub_avg(15,:,4), 1, Times_new);

[rxv_17_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Controls_vis_LowPer_CR_ERP_sub_avg(15,:,5), 1, Times_new);


%Tinnitus

[bxr_06_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_LowPer_CR_ERP_sub_avg(15,:,1), 1, Times_new);

[evw_07_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_LowPer_CR_ERP_sub_avg(15,:,2), 1, Times_new);

[ivl_14_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_LowPer_CR_ERP_sub_avg(15,:,3), 1, Times_new);

[ixe_12_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_LowPer_CR_ERP_sub_avg(15,:,4), 1, Times_new);

[pxp_04_vis_LowPer_CR_ERP_tf_nobc] = tf_decomp_ERP(Tinnitus_vis_LowPer_CR_ERP_sub_avg(15,:,5), 1, Times_new);

Controls_vis_LowPer_CR_ERP_tf_nobc(:,:,1) = axm_01_vis_LowPer_CR_ERP_tf_nobc;
Controls_vis_LowPer_CR_ERP_tf_nobc(:,:,2) = jvw_16_vis_LowPer_CR_ERP_tf_nobc;
Controls_vis_LowPer_CR_ERP_tf_nobc(:,:,3) = jxn_11_vis_LowPer_CR_ERP_tf_nobc;
Controls_vis_LowPer_CR_ERP_tf_nobc(:,:,4) = kxj_15_vis_LowPer_CR_ERP_tf_nobc;
Controls_vis_LowPer_CR_ERP_tf_nobc(:,:,5) = rxv_17_vis_LowPer_CR_ERP_tf_nobc;
save Controls_vis_LowPer_CR_ERP_tf_nobc Controls_vis_LowPer_CR_ERP_tf_nobc

Tinnitus_vis_LowPer_CR_ERP_tf_nobc(:,:,1) = bxr_06_vis_LowPer_CR_ERP_tf_nobc;
Tinnitus_vis_LowPer_CR_ERP_tf_nobc(:,:,2) = evw_07_vis_LowPer_CR_ERP_tf_nobc;
Tinnitus_vis_LowPer_CR_ERP_tf_nobc(:,:,3) = ivl_14_vis_LowPer_CR_ERP_tf_nobc;
Tinnitus_vis_LowPer_CR_ERP_tf_nobc(:,:,4) = ixe_12_vis_LowPer_CR_ERP_tf_nobc;
Tinnitus_vis_LowPer_CR_ERP_tf_nobc(:,:,5) = pxp_04_vis_LowPer_CR_ERP_tf_nobc;
save Tinnitus_vis_LowPer_CR_ERP_tf_nobc Tinnitus_vis_LowPer_CR_ERP_tf_nobc

Controls_vis_LowPer_CR_ERP_tf_nobc_avg = mean(Controls_vis_LowPer_CR_ERP_tf_nobc,3);
Tinnitus_vis_LowPer_CR_ERP_tf_nobc_avg = mean(Tinnitus_vis_LowPer_CR_ERP_tf_nobc,3);
TinCon_vis_LowPer_CR_ERP_tf_nobc_avg = Tinnitus_vis_LowPer_CR_ERP_tf_nobc_avg - Controls_vis_LowPer_CR_ERP_tf_nobc_avg;

figure; contourf(Times_new, frex, squeeze(Controls_vis_LowPer_CR_ERP_tf_nobc_avg) ,40, 'linecolor', 'none');
figure; contourf(Times_new, frex, squeeze(Tinnitus_vis_LowPer_CR_ERP_tf_nobc_avg),40, 'linecolor', 'none');
figure; contourf(Times_new, frex, squeeze(TinCon_vis_LowPer_CR_ERP_tf_nobc_avg),40, 'linecolor', 'none');

Controls_Theta_amp = reshape(mean(mean(Controls_vis_LowPer_CR_ERP_tf_nobc(13:26,137:153,:),1),2),5,1); 
Tinnitus_Theta_amp = reshape(mean(mean(Tinnitus_vis_LowPer_CR_ERP_tf_nobc(13:26,137:153,:),1),2),5,1);

Controls_Alpha_amp = reshape(mean(mean(Controls_vis_LowPer_CR_ERP_tf_nobc(29:45,137:153,:),1),2),5,1); 
Tinnitus_Alpha_amp = reshape(mean(mean(Tinnitus_vis_LowPer_CR_ERP_tf_nobc(29:45,137:153,:),1),2),5,1);

Controls_Beta_amp = reshape(mean(mean(Controls_vis_LowPer_CR_ERP_tf_nobc(49:117,137:153,:),1),2),5,1); 
Tinnitus_Beta_amp = reshape(mean(mean(Tinnitus_vis_LowPer_CR_ERP_tf_nobc(49:117,137:153,:),1),2),5,1);

Controls_Gamma_amp = reshape(mean(mean(Controls_vis_LowPer_CR_ERP_tf_nobc(119:173,137:153,:),1),2),5,1); 
Tinnitus_Gamma_amp = reshape(mean(mean(Tinnitus_vis_LowPer_CR_ERP_tf_nobc(119:173,137:153,:),1),2),5,1);
