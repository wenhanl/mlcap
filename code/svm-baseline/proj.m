
outfile = fopen('proj_test', 'w+');
for i = 1:15000
   fprintf(outfile, '%d', 2);
     
   for j = 1:3072
         fprintf(outfile, ' %d:%d', j, X_test(i,j));
   end
   fprintf(outfile, '\n');
end
fclose(outfile);