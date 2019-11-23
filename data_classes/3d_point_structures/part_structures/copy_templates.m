clear;
fclose all;

EX_rep = {'CH'; 'LA'; 'PR'; 'RA'; 'RK'; 'SH'; 'SY'; 'TL'; 'UA'; 'WP'};
part_rep = {'Chassis'; 'Lower Arm'; 'Pushrod'; 'Rocker Arm'; 'Rack'; 'Shock'; 'System'; 'Toe Link'; 'Upper Arm'; 'Wheel Package'};

%{
for i = 1:length(EX_rep)
    fprintf('%s\t%s\n', EX_rep{i}, part_rep{i});
end
%}

source_files = {'C:\Users\user\Documents\FR\FE6\suspension\MATLAB\simscape_multibody\data_classes\3d_point_structures\part_structures\EX\EX_points_Cl.m'; ...
                'C:\Users\user\Documents\FR\FE6\suspension\MATLAB\simscape_multibody\data_classes\3d_point_structures\part_structures\EX\FL_EX_points_Cl.m'; ...
                'C:\Users\user\Documents\FR\FE6\suspension\MATLAB\simscape_multibody\data_classes\3d_point_structures\part_structures\EX\FR_EX_points_Cl.m'; ...
                'C:\Users\user\Documents\FR\FE6\suspension\MATLAB\simscape_multibody\data_classes\3d_point_structures\part_structures\EX\RL_EX_points_Cl.m'; ...
                'C:\Users\user\Documents\FR\FE6\suspension\MATLAB\simscape_multibody\data_classes\3d_point_structures\part_structures\EX\RR_EX_points_Cl.m'};

for i = 1:length(EX_rep)
    dest_files = regexprep(source_files, 'EX', EX_rep{i});
    
    source_fd = zeros(length(source_files), 1);
    dest_fd = zeros(length(dest_files), 1);
    file_contents = cell(length(source_files), 1);
    
    for j = 1:length(source_files)
        source_fd(j) = fopen(source_files{j}, 'r');
        dest_fd(j) = fopen(dest_files{j}, 'a');
        file_contents{j} = fread(source_fd(j), 'char');
        file_contents{j} = string(char(file_contents{j}'));
        file_contents{j} = regexprep(file_contents{j}, 'EX', EX_rep{i});
        file_contents{j} = regexprep(file_contents{j}, '\[part\]', part_rep{i});
        fwrite(dest_fd(j), file_contents{j});
    end
    
    for j = 1:length(source_files)
        fclose(source_fd(j));
        fclose(dest_fd(j));
    end
end