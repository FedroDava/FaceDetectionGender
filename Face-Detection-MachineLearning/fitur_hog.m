nfiles=dir('C:\Users\FEDRO\Desktop\dataset1\train\woman\*.jpg');
n=max(size(nfiles));
feature_negatif=[];
for i=1:n
    currentfilename = nfiles(i).name;
    images{i} = imread(fullfile('C:\Users\FEDRO\Desktop\dataset1\train\woman\',currentfilename));
    images{i} = rgb2gray(images{i});
    images{i} = imresize(images{i},[128 128]);
    feature{i}=hog_feature_vector(images{i});
    feature_negatif=[feature_negatif; feature{i}];
end

nfiles=dir('C:\Users\FEDRO\Desktop\dataset1\train\man\*.jpg');
n=max(size(nfiles));
feature_positif=[];
for i=1:n
    currentfilename = nfiles(i).name;
    images{i} = imread(fullfile('C:\Users\FEDRO\Desktop\dataset1\train\man\',currentfilename));
    images{i} = rgb2gray(images{i});
    images{i} = imresize(images{i},[128 128]);
    feature{i}=hog_feature_vector(images{i});
    feature_positif=[feature_positif; feature{i}];
end

nfiles=dir('C:\Users\FEDRO\Desktop\dataset1\test\man\*.jpg')
n=max(size(nfiles))
feature_uji_positif=[];
for i=1:n
    currentfilename = nfiles(i).name;
    images{i} = imread(fullfile('C:\Users\FEDRO\Desktop\dataset1\test\man\',currentfilename));
    images{i} = rgb2gray(images{i});
    images{i} = imresize(images{i},[128 128]);
    feature{i}=hog_feature_vector(images{i});
    feature_uji_positif=[feature_uji_positif; feature{i}];
end

nfiles=dir('C:\Users\FEDRO\Desktop\dataset1\test\woman\*.jpg');
n=max(size(nfiles));
feature_uji_negatif=[];
for i=1:n
    currentfilename = nfiles(i).name;
    images{i} = imread(fullfile('C:\Users\FEDRO\Desktop\dataset1\test\woman\',currentfilename));
    images{i} = rgb2gray(images{i});
    images{i} = imresize(images{i},[128 128]);
    feature{i}=hog_feature_vector(images{i});
    feature_uji_negatif=[feature_uji_negatif; feature{i}];
end


save 'C:\Users\FEDRO\Desktop\dataset1\train\woman\fitur_negatif' feature_negatif;
save 'C:\Users\FEDRO\Desktop\dataset1\train\man\fitur_positif' feature_positif;
save 'C:\Users\FEDRO\Desktop\dataset1\test\woman\fitur_uji_negatif' feature_uji_negatif;
save 'C:\Users\FEDRO\Desktop\dataset1\test\man\fitur_uji_positif' feature_uji_positif;

