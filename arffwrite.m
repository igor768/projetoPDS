function arffwrite(fname,data,classe)
% fname This is file name without extension
%data is m x n where m are the instances and n-1 are the features. The last
%column is the class as integer

sss=size(data,2);
filename1=strcat(fname,'.arff');
out1 = fopen (filename1, 'w+');
aa1=strcat('@relation',{' '},fname,'-weka.filters.unsupervised.attribute.NumericToNominal-Rlast');
fprintf (out1, '%s\n', char(aa1));
for jj=1:sss
fprintf (out1, '@attribute %s numeric\n',num2str(jj));
end
n_classes=max(unique(data(:,end)));
txt1=strcat('@attribute',{' '},num2str(sss+1),{' {'},classe,{'}'});

%fprintf (out1, '%s\n',char(txt1));
fprintf (out1,'@data\n');

