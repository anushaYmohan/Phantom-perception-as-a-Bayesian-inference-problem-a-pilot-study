clc;

%Initialize FT
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;

addpath('D:\2. Tinnitus Priors ERP\Matlab data_FT\Aud_75_bc\Controls');
addpath('D:\2. Tinnitus Priors ERP\Matlab data_FT\Aud_75_bc\Tinnitus');

load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Times_new.mat');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\Channels_Ft.mat');

load('axm_01_aud_LR_75_ERP_ST_bc.mat');
load('jvw_16_aud_LR_75_ERP_ST_bc.mat');
load('jxo_09_aud_RL_75_ERP_ST_bc.mat');
load('jxn_11_aud_RL_75_ERP_ST_bc.mat');
load('kxj_15_aud_RL_75_ERP_ST_bc.mat');
load('lxh_22_aud_LR_75_ERP_ST_bc.mat');
load('lxo_21_aud_LR_75_ERP_ST_bc.mat');
load('oxh_24_aud_RL_75_ERP_ST_bc.mat');
load('pxm_25_aud_LR_75_ERP_ST_bc.mat');
load('rxv_17_aud_RL_75_ERP_ST_bc.mat');


load('axl_13_aud_RL_75_ERP_ST_bc.mat');
load('bxr_06_aud_LR_75_ERP_ST_bc.mat');
load('evw_07_aud_RL_75_ERP_ST_bc.mat');
load('ivl_14_aud_LR_75_ERP_ST_bc.mat');
load('ixe_12_aud_LR_75_ERP_ST_bc.mat');
load('jvj_18_aud_LR_75_ERP_ST_bc.mat');
load('kxj_19_aud_RL_75_ERP_ST_bc.mat');
load('lxh_10_aud_LR_75_ERP_ST_bc.mat');
load('pxp_04_aud_LR_75_ERP_ST_bc.mat');
load('rxp_02_aud_RL_75_ERP_ST_bc.mat');
load('sxc_08_aud_RL_75_ERP_ST_bc.mat');

% Building new variables - Controls

axm_01_aud_75_Hits_ERP_ST_bc =[];
jxo_09_aud_75_Hits_ERP_ST_bc =[];
jxn_11_aud_75_Hits_ERP_ST_bc =[];
kxj_15_aud_75_Hits_ERP_ST_bc =[];
lxh_22_aud_75_Hits_ERP_ST_bc =[];
oxh_24_aud_75_Hits_ERP_ST_bc =[];
pxm_25_aud_75_Hits_ERP_ST_bc =[];
rxv_17_aud_75_Hits_ERP_ST_bc =[];


% axm_01
disp('axm_01');
data = axm_01_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

axm_01_epochs_75_Hits = [];
axm_01_epochs_75_Miss = [];
Pass_75 = 0;
Hits_axm_01 = 1;
Miss_axm_01 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        axm_01_epochs_75_Hits(Hits_axm_01,:,:) = data(i,:,:);
        Hits_axm_01 = Hits_axm_01 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        axm_01_epochs_75_Miss(Miss_axm_01,:,:) = data(i,:,:);
        Miss_axm_01 = Miss_axm_01 + 1;
    end
end

axm_01_aud_75_Hits_ERP_ST_bc.SubID = 'axm_01';
axm_01_aud_75_Hits_ERP_ST_bc.time = axm_01_aud_LR_75_ERP_ST_bc.time;
axm_01_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
axm_01_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
axm_01_aud_75_Hits_ERP_ST_bc.trial = axm_01_epochs_75_Hits;
axm_01_aud_75_Hits_ERP_ST_bc.avg = mean(axm_01_epochs_75_Hits,1);
axm_01_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
axm_01_aud_75_Hits_ERP_ST_bc.cfg = axm_01_aud_LR_75_ERP_ST_bc.cfg;

% jvw_16
disp('jvw_16');
data = jvw_16_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

jvw_16_epochs_75_Hits = [];
jvw_16_epochs_75_Miss = [];
Pass_75 = 0;
Hits_jvw_16 = 1;
Miss_jvw_16 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jvw_16_epochs_75_Hits(Hits_jvw_16,:,:) = data(i,:,:);
        Hits_jvw_16 = Hits_jvw_16 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jvw_16_epochs_75_Miss(Miss_jvw_16,:,:) = data(i,:,:);
        Miss_jvw_16 = Miss_jvw_16 + 1;
    end
end

jvw_16_aud_75_Hits_ERP_ST_bc.SubID = 'jvw_16';
jvw_16_aud_75_Hits_ERP_ST_bc.time = jvw_16_aud_LR_75_ERP_ST_bc.time;
jvw_16_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
jvw_16_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
jvw_16_aud_75_Hits_ERP_ST_bc.trial = jvw_16_epochs_75_Hits;
jvw_16_aud_75_Hits_ERP_ST_bc.avg = mean(jvw_16_epochs_75_Hits,1);
jvw_16_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
jvw_16_aud_75_Hits_ERP_ST_bc.cfg = jvw_16_aud_LR_75_ERP_ST_bc.cfg;


% jxn_11
disp('jxn_11');
data = jxn_11_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

jxn_11_epochs_75_Hits = [];
jxn_11_epochs_75_Miss = [];
Pass_75 = 0;
Hits_jxn_11 = 1;
Miss_jxn_11 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jxn_11_epochs_75_Hits(Hits_jxn_11,:,:) = data(i,:,:);
        Hits_jxn_11 = Hits_jxn_11 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jxn_11_epochs_75_Miss(Miss_jxn_11,:,:) = data(i,:,:);
        Miss_jxn_11 = Miss_jxn_11 + 1;
    end
end

jxn_11_aud_75_Hits_ERP_ST_bc.SubID = 'jxn_11';
jxn_11_aud_75_Hits_ERP_ST_bc.time = jxn_11_aud_RL_75_ERP_ST_bc.time;
jxn_11_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
jxn_11_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
jxn_11_aud_75_Hits_ERP_ST_bc.trial = jxn_11_epochs_75_Hits;
jxn_11_aud_75_Hits_ERP_ST_bc.avg = mean(jxn_11_epochs_75_Hits,1);
jxn_11_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
jxn_11_aud_75_Hits_ERP_ST_bc.cfg = jxn_11_aud_RL_75_ERP_ST_bc.cfg;

% jxo_09
disp('jxo_09');
data = jxo_09_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

jxo_09_epochs_75_Hits = [];
jxo_09_epochs_75_Miss = [];
Pass_75 = 0;
Hits_jxo_09 = 1;
Miss_jxo_09 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jxo_09_epochs_75_Hits(Hits_jxo_09,:,:) = data(i,:,:);
        Hits_jxo_09 = Hits_jxo_09 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jxo_09_epochs_75_Miss(Miss_jxo_09,:,:) = data(i,:,:);
        Miss_jxo_09 = Miss_jxo_09 + 1;
    end
end

jxo_09_aud_75_Hits_ERP_ST_bc.SubID = 'jxo_09';
jxo_09_aud_75_Hits_ERP_ST_bc.time = jxo_09_aud_RL_75_ERP_ST_bc.time;
jxo_09_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
jxo_09_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
jxo_09_aud_75_Hits_ERP_ST_bc.trial = jxo_09_epochs_75_Hits;
jxo_09_aud_75_Hits_ERP_ST_bc.avg = mean(jxo_09_epochs_75_Hits,1);
jxo_09_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
jxo_09_aud_75_Hits_ERP_ST_bc.cfg = jxo_09_aud_RL_75_ERP_ST_bc.cfg;

% kxj_15
disp('kxj_15');
data = kxj_15_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

kxj_15_epochs_75_Hits = [];
kxj_15_epochs_75_Miss = [];
Pass_75 = 0;
Hits_kxj_15 = 1;
Miss_kxj_15 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        kxj_15_epochs_75_Hits(Hits_kxj_15,:,:) = data(i,:,:);
        Hits_kxj_15 = Hits_kxj_15 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        kxj_15_epochs_75_Miss(Miss_kxj_15,:,:) = data(i,:,:);
        Miss_kxj_15 = Miss_kxj_15 + 1;
    end
end

kxj_15_aud_75_Hits_ERP_ST_bc.SubID = 'kxj_15';
kxj_15_aud_75_Hits_ERP_ST_bc.time = kxj_15_aud_RL_75_ERP_ST_bc.time;
kxj_15_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
kxj_15_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
kxj_15_aud_75_Hits_ERP_ST_bc.trial = kxj_15_epochs_75_Hits;
kxj_15_aud_75_Hits_ERP_ST_bc.avg = mean(kxj_15_epochs_75_Hits,1);
kxj_15_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
kxj_15_aud_75_Hits_ERP_ST_bc.cfg = kxj_15_aud_RL_75_ERP_ST_bc.cfg;

% lxh_22
disp('lxh_22');
data = lxh_22_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

lxh_22_epochs_75_Hits = [];
lxh_22_epochs_75_Miss = [];
Pass_75 = 0;
Hits_lxh_22 = 1;
Miss_lxh_22 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        lxh_22_epochs_75_Hits(Hits_lxh_22,:,:) = data(i,:,:);
        Hits_lxh_22 = Hits_lxh_22 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        lxh_22_epochs_75_Miss(Miss_lxh_22,:,:) = data(i,:,:);
        Miss_lxh_22 = Miss_lxh_22 + 1;
    end
end

lxh_22_aud_75_Hits_ERP_ST_bc.SubID = 'lxh_22';
lxh_22_aud_75_Hits_ERP_ST_bc.time = lxh_22_aud_LR_75_ERP_ST_bc.time;
lxh_22_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
lxh_22_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
lxh_22_aud_75_Hits_ERP_ST_bc.trial = lxh_22_epochs_75_Hits;
lxh_22_aud_75_Hits_ERP_ST_bc.avg = mean(lxh_22_epochs_75_Hits,1);
lxh_22_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
lxh_22_aud_75_Hits_ERP_ST_bc.cfg = lxh_22_aud_LR_75_ERP_ST_bc.cfg;

% lxo_21
disp('lxo_21');
data = lxo_21_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

lxo_21_epochs_75_Hits = [];
lxo_21_epochs_75_Miss = [];
Pass_75 = 0;
Hits_lxo_21 = 1;
Miss_lxo_21 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        lxo_21_epochs_75_Hits(Hits_lxo_21,:,:) = data(i,:,:);
        Hits_lxo_21 = Hits_lxo_21 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        lxo_21_epochs_75_Miss(Miss_lxo_21,:,:) = data(i,:,:);
        Miss_lxo_21 = Miss_lxo_21 + 1;
    end
end

lxo_21_aud_75_Hits_ERP_ST_bc.SubID = 'lxo_21';
lxo_21_aud_75_Hits_ERP_ST_bc.time = lxo_21_aud_LR_75_ERP_ST_bc.time;
lxo_21_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
lxo_21_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
lxo_21_aud_75_Hits_ERP_ST_bc.trial = lxo_21_epochs_75_Hits;
lxo_21_aud_75_Hits_ERP_ST_bc.avg = mean(lxo_21_epochs_75_Hits,1);
lxo_21_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
lxo_21_aud_75_Hits_ERP_ST_bc.cfg = lxo_21_aud_LR_75_ERP_ST_bc.cfg;

% oxh_24
disp('oxh_24');
data = oxh_24_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

oxh_24_epochs_75_Hits = [];
oxh_24_epochs_75_Miss = [];
Pass_75 = 0;
Hits_oxh_24 = 1;
Miss_oxh_24 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        oxh_24_epochs_75_Hits(Hits_oxh_24,:,:) = data(i,:,:);
        Hits_oxh_24 = Hits_oxh_24 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        oxh_24_epochs_75_Miss(Miss_oxh_24,:,:) = data(i,:,:);
        Miss_oxh_24 = Miss_oxh_24 + 1;
    end
end

oxh_24_aud_75_Hits_ERP_ST_bc.SubID = 'oxh_24';
oxh_24_aud_75_Hits_ERP_ST_bc.time = oxh_24_aud_RL_75_ERP_ST_bc.time;
oxh_24_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
oxh_24_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
oxh_24_aud_75_Hits_ERP_ST_bc.trial = oxh_24_epochs_75_Hits;
oxh_24_aud_75_Hits_ERP_ST_bc.avg = mean(oxh_24_epochs_75_Hits,1);
oxh_24_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
oxh_24_aud_75_Hits_ERP_ST_bc.cfg = oxh_24_aud_RL_75_ERP_ST_bc.cfg;

% pxm_25
disp('pxm_25');
data = pxm_25_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

pxm_25_epochs_75_Hits = [];
pxm_25_epochs_75_Miss = [];
Pass_75 = 0;
Hits_pxm_25 = 1;
Miss_pxm_25 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        pxm_25_epochs_75_Hits(Hits_pxm_25,:,:) = data(i,:,:);
        Hits_pxm_25 = Hits_pxm_25 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        pxm_25_epochs_75_Miss(Miss_pxm_25,:,:) = data(i,:,:);
        Miss_pxm_25 = Miss_pxm_25 + 1;
    end
end

pxm_25_aud_75_Hits_ERP_ST_bc.SubID = 'pxm_25';
pxm_25_aud_75_Hits_ERP_ST_bc.time = pxm_25_aud_LR_75_ERP_ST_bc.time;
pxm_25_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
pxm_25_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
pxm_25_aud_75_Hits_ERP_ST_bc.trial = pxm_25_epochs_75_Hits;
pxm_25_aud_75_Hits_ERP_ST_bc.avg = mean(pxm_25_epochs_75_Hits,1);
pxm_25_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
pxm_25_aud_75_Hits_ERP_ST_bc.cfg = pxm_25_aud_LR_75_ERP_ST_bc.cfg;

% rxv_17
disp('rxv_17');
data = rxv_17_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

rxv_17_epochs_75_Hits = [];
rxv_17_epochs_75_Miss = [];
Pass_75 = 0;
Hits_rxv_17 = 1;
Miss_rxv_17 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        rxv_17_epochs_75_Hits(Hits_rxv_17,:,:) = data(i,:,:);
        Hits_rxv_17 = Hits_rxv_17 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        rxv_17_epochs_75_Miss(Miss_rxv_17,:,:) = data(i,:,:);
        Miss_rxv_17 = Miss_rxv_17 + 1;
    end
end

rxv_17_aud_75_Hits_ERP_ST_bc.SubID = 'rxv_17';
rxv_17_aud_75_Hits_ERP_ST_bc.time = rxv_17_aud_RL_75_ERP_ST_bc.time;
rxv_17_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
rxv_17_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
rxv_17_aud_75_Hits_ERP_ST_bc.trial = rxv_17_epochs_75_Hits;
rxv_17_aud_75_Hits_ERP_ST_bc.avg = mean(rxv_17_epochs_75_Hits,1);
rxv_17_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
rxv_17_aud_75_Hits_ERP_ST_bc.cfg = rxv_17_aud_RL_75_ERP_ST_bc.cfg;

Controls_aud_75_Hits_ERP_ST_bc(1).subject = axm_01_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(2).subject = jvw_16_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(3).subject = jxn_11_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(4).subject = jxo_09_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(5).subject = kxj_15_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(6).subject = lxh_22_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(7).subject = lxo_21_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(8).subject = oxh_24_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(9).subject = pxm_25_aud_75_Hits_ERP_ST_bc;
Controls_aud_75_Hits_ERP_ST_bc(10).subject = rxv_17_aud_75_Hits_ERP_ST_bc;

save Controls_aud_75_Hits_ERP_ST_bc Controls_aud_75_Hits_ERP_ST_bc;

Controls_aud_HighPer_Hits_ERP_ST_bc(1).subject = axm_01_aud_75_Hits_ERP_ST_bc;
Controls_aud_HighPer_Hits_ERP_ST_bc(2).subject = jxo_09_aud_75_Hits_ERP_ST_bc;
Controls_aud_HighPer_Hits_ERP_ST_bc(3).subject = lxh_22_aud_75_Hits_ERP_ST_bc;
Controls_aud_HighPer_Hits_ERP_ST_bc(4).subject = oxh_24_aud_75_Hits_ERP_ST_bc;

Controls_aud_LowPer_Hits_ERP_ST_bc(1).subject = jxn_11_aud_75_Hits_ERP_ST_bc;
Controls_aud_LowPer_Hits_ERP_ST_bc(2).subject = kxj_15_aud_75_Hits_ERP_ST_bc;
Controls_aud_LowPer_Hits_ERP_ST_bc(3).subject = pxm_25_aud_75_Hits_ERP_ST_bc;
Controls_aud_LowPer_Hits_ERP_ST_bc(4).subject = rxv_17_aud_75_Hits_ERP_ST_bc;

save Controls_aud_HighPer_Hits_ERP_ST_bc Controls_aud_HighPer_Hits_ERP_ST_bc;
save Controls_aud_LowPer_Hits_ERP_ST_bc Controls_aud_LowPer_Hits_ERP_ST_bc;

clear axm_01_epochs_75_Hits ;
clear jvw_16_epochs_75_Hits ;
clear jxo_09_epochs_75_Hits ;
clear jxn_11_epochs_75_Hits ;
clear kxj_15_epochs_75_Hits ;
clear lxh_22_epochs_75_Hits ;
clear lxo_21_epochs_75_Hits ;
clear oxh_24_epochs_75_Hits ;
clear pxm_25_epochs_75_Hits ;
clear rxv_17_epochs_75_Hits ;

clear axm_01_aud_LR_75_HitsERP_ST_bc ;
clear jvw_16_aud_LR_75_HitsERP_ST_bc ;
clear jxo_09_aud_RL_75_HitsERP_ST_bc ;
clear jxn_11_aud_RL_75_HitsERP_ST_bc ;
clear kxj_15_aud_RL_75_HitsERP_ST_bc ;
clear lxh_22_aud_LR_75_HitsERP_ST_bc ;
clear lxo_21_aud_LR_75_HitsERP_ST_bc ;
clear oxh_24_aud_RL_75_HitsERP_ST_bc ;
clear pxm_25_aud_LR_75_HitsERP_ST_bc ;
clear rxv_17_aud_RL_75_HitsERP_ST_bc ;

% Building new variables  - Tinnitus 

axl_13_aud_75_Hits_ERP_ST_bc =[];
bxr_06_aud_75_Hits_ERP_ST_bc =[];
evw_07_aud_75_Hits_ERP_ST_bc =[];
ivl_14_aud_75_Hits_ERP_ST_bc =[];
ixe_12_aud_75_Hits_ERP_ST_bc =[];
jvj_18_aud_75_Hits_ERP_ST_bc =[];
kxj_19_aud_75_Hits_ERP_ST_bc =[];
lxh_10_aud_75_Hits_ERP_ST_bc =[];
pxp_04_aud_75_Hits_ERP_ST_bc =[];
rxp_02_aud_75_Hits_ERP_ST_bc =[];
sxc_08_aud_75_Hits_ERP_ST_bc =[];

% axl_13
disp('axl_13');
data = axl_13_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

axl_13_epochs_75_Hits = [];
axl_13_epochs_75_Miss = [];
Pass_75 = 0;
FA = 1;
CR = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        axl_13_epochs_75_Hits(FA,:,:) = data(i,:,:);
        FA = FA + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        axl_13_epochs_75_Miss(CR,:,:) = data(i,:,:);
        CR = CR + 1;
    end
end

axl_13_aud_75_Hits_ERP_ST_bc.SubID = 'axl_13';
axl_13_aud_75_Hits_ERP_ST_bc.time = axl_13_aud_RL_75_ERP_ST_bc.time;
axl_13_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
axl_13_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
axl_13_aud_75_Hits_ERP_ST_bc.trial = axl_13_epochs_75_Hits;
axl_13_aud_75_Hits_ERP_ST_bc.avg = mean(axl_13_epochs_75_Hits,1);
axl_13_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
axl_13_aud_75_Hits_ERP_ST_bc.cfg = axl_13_aud_RL_75_ERP_ST_bc.cfg;

% bxr_06
data = bxr_06_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

bxr_06_epochs_75_Hits = [];
bxr_06_epochs_75_Miss = [];
Pass_75 = 0;
Hits_bxr_06 = 1;
Miss_bxr_06 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        bxr_06_epochs_75_Hits(Hits_bxr_06,:,:) = data(i,:,:);
        Hits_bxr_06 = Hits_bxr_06 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        bxr_06_epochs_75_Miss(Miss_bxr_06,:,:) = data(i,:,:);
        Miss_bxr_06 = Miss_bxr_06 + 1;
    end
end

bxr_06_aud_75_Hits_ERP_ST_bc.SubID = 'bxr_06';
bxr_06_aud_75_Hits_ERP_ST_bc.time = bxr_06_aud_LR_75_ERP_ST_bc.time;
bxr_06_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
bxr_06_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
bxr_06_aud_75_Hits_ERP_ST_bc.trial = bxr_06_epochs_75_Hits;
bxr_06_aud_75_Hits_ERP_ST_bc.avg = mean(bxr_06_epochs_75_Hits,1);
bxr_06_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
bxr_06_aud_75_Hits_ERP_ST_bc.cfg = bxr_06_aud_LR_75_ERP_ST_bc.cfg;

% evw_07
disp('evw_07');
data = evw_07_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

evw_07_epochs_75_Hits = [];
evw_07_epochs_75_Miss = [];
Pass_75 = 0;
Hits_evw_07 = 1;
Miss_evw_07 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        evw_07_epochs_75_Hits(Hits_evw_07,:,:) = data(i,:,:);
        Hits_evw_07 = Hits_evw_07 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        evw_07_epochs_75_Miss(Miss_evw_07,:,:) = data(i,:,:);
        Miss_evw_07 = Miss_evw_07 + 1;
    end
end

evw_07_aud_75_Hits_ERP_ST_bc.SubID = 'evw_07';
evw_07_aud_75_Hits_ERP_ST_bc.time = evw_07_aud_RL_75_ERP_ST_bc.time;
evw_07_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
evw_07_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
evw_07_aud_75_Hits_ERP_ST_bc.trial = evw_07_epochs_75_Hits;
evw_07_aud_75_Hits_ERP_ST_bc.avg = mean(evw_07_epochs_75_Hits,1);
evw_07_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
evw_07_aud_75_Hits_ERP_ST_bc.cfg = evw_07_aud_RL_75_ERP_ST_bc.cfg;

% ivl_14
disp('ivl_14');
data = ivl_14_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

ivl_14_epochs_75_Hits = [];
ivl_14_epochs_75_Miss = [];
Pass_75 = 0;
Hits_ivl_14 = 1;
Miss_ivl_14 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        ivl_14_epochs_75_Hits(Hits_ivl_14,:,:) = data(i,:,:);
        Hits_ivl_14 = Hits_ivl_14 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        ivl_14_epochs_75_Miss(Miss_ivl_14,:,:) = data(i,:,:);
        Miss_ivl_14 = Miss_ivl_14 + 1;
    end
end

ivl_14_aud_75_Hits_ERP_ST_bc.SubID = 'ivl_14';
ivl_14_aud_75_Hits_ERP_ST_bc.time = ivl_14_aud_LR_75_ERP_ST_bc.time;
ivl_14_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
ivl_14_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
ivl_14_aud_75_Hits_ERP_ST_bc.trial = ivl_14_epochs_75_Hits;
ivl_14_aud_75_Hits_ERP_ST_bc.avg = mean(ivl_14_epochs_75_Hits,1);
ivl_14_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
ivl_14_aud_75_Hits_ERP_ST_bc.cfg = ivl_14_aud_LR_75_ERP_ST_bc.cfg;

% ixe_12
disp('ixe_12');
data = ixe_12_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

ixe_12_epochs_75_Hits = [];
ixe_12_epochs_75_Miss = [];
Pass_75 = 0;
Hits_ixe_12 = 1;
Miss_ixe_12 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        ixe_12_epochs_75_Hits(Hits_ixe_12,:,:) = data(i,:,:);
        Hits_ixe_12 = Hits_ixe_12 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        ixe_12_epochs_75_Miss(Miss_ixe_12,:,:) = data(i,:,:);
        Miss_ixe_12 = Miss_ixe_12 + 1;
    end
end

ixe_12_aud_75_Hits_ERP_ST_bc.SubID = 'ixe_12';
ixe_12_aud_75_Hits_ERP_ST_bc.time = ixe_12_aud_LR_75_ERP_ST_bc.time;
ixe_12_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
ixe_12_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
ixe_12_aud_75_Hits_ERP_ST_bc.trial = ixe_12_epochs_75_Hits;
ixe_12_aud_75_Hits_ERP_ST_bc.avg = mean(ixe_12_epochs_75_Hits,1);
ixe_12_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
ixe_12_aud_75_Hits_ERP_ST_bc.cfg = ixe_12_aud_LR_75_ERP_ST_bc.cfg;

% jvj_18
disp('jvj_18');
data = jvj_18_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

jvj_18_epochs_75_Hits = [];
jvj_18_epochs_75_Miss = [];
Pass_75 = 0;
Hits_jvj_18 = 1;
Miss_jvj_18 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        jvj_18_epochs_75_Hits(Hits_jvj_18,:,:) = data(i,:,:);
        Hits_jvj_18 = Hits_jvj_18 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        jvj_18_epochs_75_Miss(Miss_jvj_18,:,:) = data(i,:,:);
        Miss_jvj_18 = Miss_jvj_18 + 1;
    end
end

jvj_18_aud_75_Hits_ERP_ST_bc.SubID = 'jvj_18';
jvj_18_aud_75_Hits_ERP_ST_bc.time = jvj_18_aud_LR_75_ERP_ST_bc.time;
jvj_18_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
jvj_18_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
jvj_18_aud_75_Hits_ERP_ST_bc.trial = jvj_18_epochs_75_Hits;
jvj_18_aud_75_Hits_ERP_ST_bc.avg = mean(jvj_18_epochs_75_Hits,1);
jvj_18_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
jvj_18_aud_75_Hits_ERP_ST_bc.cfg = jvj_18_aud_LR_75_ERP_ST_bc.cfg;

% kxj_19
disp('kxj_19');
data = kxj_19_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

kxj_19_epochs_75_Hits = [];
kxj_19_epochs_75_Miss = [];
Pass_75 = 0;
Hits_kxj_19 = 1;
Miss_kxj_19 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        kxj_19_epochs_75_Hits(Hits_kxj_19,:,:) = data(i,:,:);
        Hits_kxj_19 = Hits_kxj_19 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        kxj_19_epochs_75_Miss(Miss_kxj_19,:,:) = data(i,:,:);
        Miss_kxj_19 = Miss_kxj_19 + 1;
    end
end

kxj_19_aud_75_Hits_ERP_ST_bc.SubID = 'kxj_19';
kxj_19_aud_75_Hits_ERP_ST_bc.time = kxj_19_aud_RL_75_ERP_ST_bc.time;
kxj_19_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
kxj_19_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
kxj_19_aud_75_Hits_ERP_ST_bc.trial = kxj_19_epochs_75_Hits;
kxj_19_aud_75_Hits_ERP_ST_bc.avg = mean(kxj_19_epochs_75_Hits,1);
kxj_19_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
kxj_19_aud_75_Hits_ERP_ST_bc.cfg = kxj_19_aud_RL_75_ERP_ST_bc.cfg;

% lxh_10
disp('lxh_10');
data = lxh_10_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

lxh_10_epochs_75_Hits = [];
lxh_10_epochs_75_Miss = [];
Pass_75 = 0;
Hits_lxh_10 = 1;
Miss_lxh_10 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        lxh_10_epochs_75_Hits(Hits_lxh_10,:,:) = data(i,:,:);
        Hits_lxh_10 = Hits_lxh_10 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        lxh_10_epochs_75_Miss(Miss_lxh_10,:,:) = data(i,:,:);
        Miss_lxh_10 = Miss_lxh_10 + 1;
    end
end

lxh_10_aud_75_Hits_ERP_ST_bc.SubID = 'lxh_10';
lxh_10_aud_75_Hits_ERP_ST_bc.time = lxh_10_aud_LR_75_ERP_ST_bc.time;
lxh_10_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
lxh_10_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
lxh_10_aud_75_Hits_ERP_ST_bc.trial = lxh_10_epochs_75_Hits;
lxh_10_aud_75_Hits_ERP_ST_bc.avg = mean(lxh_10_epochs_75_Hits,1);
lxh_10_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
lxh_10_aud_75_Hits_ERP_ST_bc.cfg = lxh_10_aud_LR_75_ERP_ST_bc.cfg;

% pxp_04
disp('pxp_04');
data = pxp_04_aud_LR_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

pxp_04_epochs_75_Hits = [];
pxp_04_epochs_75_Miss = [];
Pass_75 = 0;
Hits_pxp_04 = 1;
Miss_pxp_04 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        pxp_04_epochs_75_Hits(Hits_pxp_04,:,:) = data(i,:,:);
        Hits_pxp_04 = Hits_pxp_04 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        pxp_04_epochs_75_Miss(Miss_pxp_04,:,:) = data(i,:,:);
        Miss_pxp_04 = Miss_pxp_04 + 1;
    end
end

pxp_04_aud_75_Hits_ERP_ST_bc.SubID = 'pxp_04';
pxp_04_aud_75_Hits_ERP_ST_bc.time = pxp_04_aud_LR_75_ERP_ST_bc.time;
pxp_04_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
pxp_04_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
pxp_04_aud_75_Hits_ERP_ST_bc.trial = pxp_04_epochs_75_Hits;
pxp_04_aud_75_Hits_ERP_ST_bc.avg = mean(pxp_04_epochs_75_Hits,1);
pxp_04_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
pxp_04_aud_75_Hits_ERP_ST_bc.cfg = pxp_04_aud_LR_75_ERP_ST_bc.cfg;

% rxp_02
disp('rxp_02');
data = rxp_02_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

rxp_02_epochs_75_Hits = [];
rxp_02_epochs_75_Miss = [];
Pass_75 = 0;
Hits_rxp_02 = 1;
Miss_rxp_02 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        rxp_02_epochs_75_Hits(Hits_rxp_02,:,:) = data(i,:,:);
        Hits_rxp_02 = Hits_rxp_02 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        rxp_02_epochs_75_Miss(Miss_rxp_02,:,:) = data(i,:,:);
        Miss_rxp_02 = Miss_rxp_02 + 1;
    end
end

rxp_02_aud_75_Hits_ERP_ST_bc.SubID = 'rxp_02';
rxp_02_aud_75_Hits_ERP_ST_bc.time = rxp_02_aud_RL_75_ERP_ST_bc.time;
rxp_02_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
rxp_02_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
rxp_02_aud_75_Hits_ERP_ST_bc.trial = rxp_02_epochs_75_Hits;
rxp_02_aud_75_Hits_ERP_ST_bc.avg = mean(rxp_02_epochs_75_Hits,1);
rxp_02_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
rxp_02_aud_75_Hits_ERP_ST_bc.cfg = rxp_02_aud_RL_75_ERP_ST_bc.cfg;

% sxc_08
disp('sxc_08');
data = sxc_08_aud_RL_75_ERP_ST_bc.trial;
size_data = size(data);
num_events = size_data(1);

sxc_08_epochs_75_Hits = [];
sxc_08_epochs_75_Miss = [];
Pass_75 = 0;
Hits_sxc_08 = 1;
Miss_sxc_08 = 1;

for i = 1 : num_events
    if ismember(1,data(i,20,101:end)) == 1 && ismember(2,data(i,20,101:end)) == 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(1,data(i,20,101:end)) ~= 1 && ismember(2,data(i,20,101:end)) ~= 1
        Pass_75 = Pass_75 + 1;
    elseif ismember(2,data(i,20,101:end)) == 1
        sxc_08_epochs_75_Hits(Hits_sxc_08,:,:) = data(i,:,:);
        Hits_sxc_08 = Hits_sxc_08 + 1;
    elseif ismember(1,data(i,20,101:end)) == 1
        sxc_08_epochs_75_Miss(Miss_sxc_08,:,:) = data(i,:,:);
        Miss_sxc_08 = Miss_sxc_08 + 1;
    end
end

sxc_08_aud_75_Hits_ERP_ST_bc.SubID = 'sxc_08';
sxc_08_aud_75_Hits_ERP_ST_bc.time = sxc_08_aud_RL_75_ERP_ST_bc.time;
sxc_08_aud_75_Hits_ERP_ST_bc.label = Channels_Ft.label;
sxc_08_aud_75_Hits_ERP_ST_bc.elec = Channels_Ft;
sxc_08_aud_75_Hits_ERP_ST_bc.trial = sxc_08_epochs_75_Hits;
sxc_08_aud_75_Hits_ERP_ST_bc.avg = mean(sxc_08_epochs_75_Hits,1);
sxc_08_aud_75_Hits_ERP_ST_bc.dimord = 'rpt_chan_time';
sxc_08_aud_75_Hits_ERP_ST_bc.cfg = sxc_08_aud_RL_75_ERP_ST_bc.cfg;

Tinnitus_aud_75_Hits_ERP_ST_bc(1).subject = axl_13_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(2).subject = bxr_06_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(3).subject = evw_07_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(4).subject = ivl_14_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(5).subject = ixe_12_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(6).subject = jvj_18_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(7).subject = kxj_19_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(8).subject = lxh_10_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(9).subject = pxp_04_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(10).subject = rxp_02_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_75_Hits_ERP_ST_bc(11).subject = sxc_08_aud_75_Hits_ERP_ST_bc;

save Tinnitus_aud_75_Hits_ERP_ST_bc Tinnitus_aud_75_Hits_ERP_ST_bc;

Tinnitus_aud_HighPer_Hits_ERP_ST_bc(1).subject = axl_13_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_HighPer_Hits_ERP_ST_bc(2).subject = lxh_10_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_HighPer_Hits_ERP_ST_bc(3).subject = rxp_02_aud_75_Hits_ERP_ST_bc;

Tinnitus_aud_LowPer_Hits_ERP_ST_bc(1).subject = bxr_06_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_LowPer_Hits_ERP_ST_bc(2).subject = evw_07_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_LowPer_Hits_ERP_ST_bc(3).subject = kxj_19_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_LowPer_Hits_ERP_ST_bc(4).subject = pxp_04_aud_75_Hits_ERP_ST_bc;
Tinnitus_aud_LowPer_Hits_ERP_ST_bc(5).subject = sxc_08_aud_75_Hits_ERP_ST_bc;

save Tinnitus_aud_HighPer_Hits_ERP_ST_bc Tinnitus_aud_HighPer_Hits_ERP_ST_bc;
save Tinnitus_aud_LowPer_Hits_ERP_ST_bc Tinnitus_aud_LowPer_Hits_ERP_ST_bc;

clear axl_13_epochs_75_Hits ;
clear bxr_06_epochs_75_Hits ;
clear evw_07_epochs_75_Hits ;
clear ivl_14_epochs_75_Miss ;
clear ixe_12_epochs_75_Miss ;
clear jvj_18_epochs_75_Miss ;
clear kxj_19_epochs_75_Hits ;
clear lxh_10_epochs_75_Hits ;
clear pxp_04_epochs_75_Hits ;
clear rxp_02_epochs_75_Hits ;
clear sxc_08_epochs_75_Hits ;

clear axl_13_aud_75_Hits_ERP_ST_bc;
clear bxr_06_aud_75_Hits_ERP_ST_bc;
clear evw_07_aud_75_Hits_ERP_ST_bc;
clear ivl_14_aud_75_Miss_ERP_ST_bc;
clear ixe_12_aud_75_Miss_ERP_ST_bc;
clear jvj_18_aud_75_Miss_ERP_ST_bc;
clear kxj_19_aud_75_Hits_ERP_ST_bc;
clear lxh_10_aud_75_Hits_ERP_ST_bc;
clear pxp_04_aud_75_Hits_ERP_ST_bc;
clear rxp_02_aud_75_Hits_ERP_ST_bc;
clear sxc_08_aud_75_Hits_ERP_ST_bc;

%% All 75 stimuli:
Controls_aud_75_ERP_ST_bc(1).subject = axm_01_aud_LR_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(2).subject = jvw_16_aud_LR_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(3).subject = jxn_11_aud_RL_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(4).subject = jxo_09_aud_RL_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(5).subject = kxj_15_aud_RL_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(6).subject = lxh_22_aud_LR_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(7).subject = lxo_21_aud_LR_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(8).subject = oxh_24_aud_RL_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(9).subject = pxm_25_aud_LR_75_ERP_ST_bc;
Controls_aud_75_ERP_ST_bc(10).subject = rxv_17_aud_RL_75_ERP_ST_bc;

Tinnitus_aud_75_ERP_ST_bc(1).subject = axl_13_aud_RL_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(2).subject = bxr_06_aud_LR_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(3).subject = evw_07_aud_RL_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(4).subject = ivl_14_aud_LR_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(5).subject = ixe_12_aud_LR_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(6).subject = jvj_18_aud_LR_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(7).subject = kxj_19_aud_RL_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(8).subject = lxh_10_aud_LR_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(9).subject = pxp_04_aud_LR_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(10).subject = rxp_02_aud_RL_75_ERP_ST_bc;
Tinnitus_aud_75_ERP_ST_bc(11).subject = sxc_08_aud_RL_75_ERP_ST_bc;

save Controls_aud_75_ERP_ST_bc Controls_aud_75_ERP_ST_bc;
save Tinnitus_aud_75_ERP_ST_bc Tinnitus_aud_75_ERP_ST_bc;

%% stats - High perceivers: Tinnitus vs Controls
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;
load('Controls_aud_HighPer_Hits_ERP_ST_bc.mat');
load('Tinnitus_aud_HighPer_Hits_ERP_ST_bc.mat');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\neighbours_mitsar.mat');

TinCon_aud_HighPer_Hits_ERP_contrasts = [];

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
size_Tin = 3;

design = zeros(1,size_Con + size_Tin);
design(1,1:size_Tin) = 2;
design(1,(size_Tin+1):(size_Con + size_Tin))= 1;

cfg.design = design;             % design matrix
cfg.ivar  = 1;   
        
[stat_TinCon_aud_HighPer_Hits_ERP_bc] = ft_timelockstatistics(cfg, Tinnitus_aud_HighPer_Hits_ERP_ST_bc(1).subject, Tinnitus_aud_HighPer_Hits_ERP_ST_bc(2).subject, Tinnitus_aud_HighPer_Hits_ERP_ST_bc(3).subject,...
    Controls_aud_HighPer_Hits_ERP_ST_bc(1).subject, Controls_aud_HighPer_Hits_ERP_ST_bc(2).subject, Controls_aud_HighPer_Hits_ERP_ST_bc(3).subject, Controls_aud_HighPer_Hits_ERP_ST_bc(4).subject);
   
stat_logic = [];
for i = 1 : 3
    for j = 1 : 526
        if stat_TinCon_aud_HighPer_Hits_ERP_bc.prob(i,j) < .05
            stat_logic(i,j) = 1;
        else
            stat_logic(i,j) = 0;
        end
    end
end

save stat_TinCon_aud_HighPer_Hits_ERP_bc stat_TinCon_aud_HighPer_Hits_ERP_bc;

%% stats - Low perceivers: Controls vs Tinnitus
restoredefaultpath;
addpath('C:\Users\mohan\OneDrive\Documents\MATLAB\fieldtrip-20230118');
ft_defaults;
load('Controls_aud_LowPer_Hits_ERP_ST_bc.mat');
load('Tinnitus_aud_LowPer_Hits_ERP_ST_bc.mat');
load('D:\2. Tinnitus Priors ERP\Matlab data_FT\neighbours_mitsar.mat');

Con_aud_HighPer_LowPer_FA_CR_ERP_contrasts = [];

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
size_Tin = 5;

design = zeros(1,size_Con + size_Tin);
design(1,1:size_Tin) = 2;
design(1,(size_Tin+1):(size_Con + size_Tin))= 1;

cfg.design = design;             % design matrix
cfg.ivar  = 1;   
        
[stat_TinCon_aud_LowPer_Hits_ERP_bc] = ft_timelockstatistics(cfg, Tinnitus_aud_LowPer_Hits_ERP_ST_bc(1).subject, Tinnitus_aud_LowPer_Hits_ERP_ST_bc(2).subject, Tinnitus_aud_LowPer_Hits_ERP_ST_bc(3).subject,...
   Tinnitus_aud_LowPer_Hits_ERP_ST_bc(4).subject, Tinnitus_aud_LowPer_Hits_ERP_ST_bc(5).subject, Controls_aud_LowPer_Hits_ERP_ST_bc(1).subject, Controls_aud_LowPer_Hits_ERP_ST_bc(2).subject, ...
   Controls_aud_LowPer_Hits_ERP_ST_bc(3).subject, Controls_aud_LowPer_Hits_ERP_ST_bc(4).subject);
   
stat_logic = [];
for i = 1 : 3
    for j = 1 : 526
        if stat_TinCon_aud_LowPer_Hits_ERP_bc.prob(i,j) < .05
            stat_logic(i,j) = 1;
        else
            stat_logic(i,j) = 0;
        end
    end
end

save stat_TinCon_aud_LowPer_Hits_ERP_bc stat_TinCon_aud_LowPer_Hits_ERP_bc;
