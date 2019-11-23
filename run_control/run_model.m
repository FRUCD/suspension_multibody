function out = run_model(model_name)
%% RUN_F_SUSPENSION run front suspension model and post-process output

% make it shut up.
warn_state = warning('query', 'all');
%warning('off','all');

% whenever simulink runs, it leaves a bunch of cache files in the current
% directory. if you're not careful, it will take a shit all over your
% filesystem. this section housetrains it.
cur_dir = cd;
func_path = mfilename('fullpath');
func_name = mfilename;
func_path = regexprep(func_path, strcat(func_name, "$"), '');
SPMB_path = strcat(func_path, "../");
run_folder_path = strcat(SPMB_path, "run_folder/");
cd(run_folder_path);

% load data into model file. this stops it looking in the main workspace,
% which will probably help stability later on.
%load_system(model_name);
%model_workspace = get_param(model_name,'ModelWorkspace');
%assignin(model_workspace, 'SP', SP)
% this solution may not actually work. there doesn't seem to be a way to
% make variant subsytems look in the model workspace. fuck matlab.

% run model.
out = sim(model_name);

% post-process output.
out = simout_post_process(out);


% we don't need it to shut up anymore and matlab doesn't get that warning
% change should be restricted to function scope. grrrrr...
warning(warn_state);

% go back to current directory.
cd(cur_dir);

end