n = 200;
% get covarience matrix
data = X_train;

coeff = pca(data);
% get n top feature
feamat = coeff(:, 1:n);

% get train
outfile = fopen('pca_out', 'w+');
for i = 1:size(data, 1)
    % reduce dimension with pca
    reduced = data(i,:)*feamat;

    fprintf(outfile, '%d', y_train(i,1));
    
    for j = 1:size(reduced,2)
        fprintf(outfile, ' %d:%d', j, reduced(j));
    end
    fprintf(outfile, '\n');
end
fclose(outfile);