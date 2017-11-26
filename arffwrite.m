function arffwrite(fname,data)
% fname This is file name without extension
%data is m x n where m are the instances and n-1 are the features. The last
%column is the class as integer

sss=size(data,2);
filename1=strcat(fname,'.arff');
out1 = fopen (filename1, 'w+');
aa1=strcat('@relation',{' '},fname,'-weka.filters.unsupervised.attribute.NumericToNominal-Rlast');
fprintf (out1, '%s\n', char(aa1));
for jj=1:sss
fprintf (out1, '@attribute %s real\n',num2str(jj));
end

fprintf (out1, '@attribute class {1, 2}\n');
fprintf (out1,'@data\n');

