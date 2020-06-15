%Review insertion in a matrix. Rows: User, Columns: Movie. Columns 1,2,3 are imported from the file u.data into the matrix data.
a = max(data(:,1));
b = max(data(:,2));
U = zeros(a,b);
for i = 1:size(data,1)
    U(data(i,1),data(i,2)) = data(i,3);
end