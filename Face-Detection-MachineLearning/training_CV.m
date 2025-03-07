load ('C:\Users\FEDRO\Desktop\dataset1\train\woman\fitur_negatif');
load ('C:\Users\FEDRO\Desktop\dataset1\train\man\fitur_positif');
options.MaxIter = 20000;
options.Display='iter';
jml_pos=size(feature_positif,1);
jml_neg=size(feature_negatif,1);
label_pos=ones(jml_pos,1);
label_neg=-1*label_pos;
data_x=[feature_positif;feature_negatif];
data_y=[label_pos;label_neg];
SVMFaceman=svmtrain(data_x,data_y,'Options',options);
save 'C:\Users\FEDRO\Desktop\dataset1\train\SVMFaceman' SVMFaceman