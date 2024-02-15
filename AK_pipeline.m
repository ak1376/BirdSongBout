% SCRATCH FILES
%% STEP 1: CREATE PARAMS FILE
isnew = 1; %first time we make the repo, set to 1
target_file = [pwd filesep 'params.mat'];

input_params = struct;
input_params.GitHubDir = '/Users/mirandahulsey-vincent/Dropbox (University of Oregon)/AK_RHV_Analysis/SongAnnotator';
input_params.workDIR = '/Users/mirandahulsey-vincent/Desktop/learning_how_to_annotate/llb3_songs';
input_params.annotation_file = '/Users/mirandahulsey-vincent/Desktop/learning_how_to_annotate/llb3_songs/llb3_annotation_Apr_2019_emily_4TF.mat';
input_params.template_file = '/Users/mirandahulsey-vincent/Desktop/learning_how_to_annotate/llb3_songs/llb3_templates_Apr_2019_emily.mat';
input_params.estimates_file = '';
input_params.new_annotation_file = '';
input_params.path_to_SyllableSpects = '';

params = bsb_create_parameter_file_for_annotation_pipeline(target_file, input_params,isnew);
DIR = '/Users/mirandahulsey-vincent/Desktop/learning_how_to_annotate/llb3_songs'; % where the .wav files are stored

wavs = bsb_create_wavs_list(DIR,1);
params.wavs = wavs;
bsb_create_spectrograms_from_wavs(params);
bsb_add_annotation_to_mat(DIR,params.annotation_file,params.template_file);