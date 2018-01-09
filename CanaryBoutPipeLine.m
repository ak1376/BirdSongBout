% pipeline for using Jeff's data
% helper functions in
% '/Users/yardenc/Documents/GitHub/BirdSongBout/helpers'
% 1. NameAndMoveFiles.m
% 2. segment_labels_from_phrase_annotations.m
% 3.  In the wav file directory: [keys, elements, templates] = create_empty_elements(DIR,bird_exper_name,[])
% 4. [keys, elements, templates] = populate_existing_elements(path_to_annotation_file,path_to_mat_files,path_to_wav_files,dt)
%%
cd('/Users/yardenc/Documents/Experiments/CanaryBoutAnnotation/bird_4');
path_to_annotation_file = '/Users/yardenc/Documents/Experiments/CanaryBoutAnnotation/bird_4/bird4_annotation.mat';
path_to_mat_files = '/Users/yardenc/Documents/Experiments/CanaryBoutAnnotation/bird_4/mat';
path_to_wav_files = '/Users/yardenc/Documents/Experiments/CanaryBoutAnnotation/bird_4';
[keys, elements, templates] = create_empty_elements(pwd,'bird4',[]);
save bird4_annotation keys elements;
save bird4_templates templates;
dt = 1/3.692307692307692e+02;
[keys, elements, templates] = populate_existing_elements(path_to_annotation_file,path_to_mat_files,path_to_wav_files,dt);
cd('/Users/yardenc/Documents/Experiments/CanaryBoutAnnotation/bird_4');
save bird4_annotation keys elements;
save bird4_templates templates;
