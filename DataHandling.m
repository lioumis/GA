%Getting the neighborhood
function N = DataHandling(x,U)
    [m,n] = size(U);
    A = zeros(1,m);
    for i = 1:m
        T = corrcoef(U(x,:),U(i,:));
        A(1,i) = T(1,2)+1;
    end
    A(1,x) = 0;
    max_num = zeros(10,1);
    max_idx = zeros(10,1);
    N = zeros(10,1682);
    for j = 1:10
        [max_num(j,1),max_idx(j,1)] = max(A);
        A(1,max_idx(j,1)) = 0;
        for k = 1:1682
            N(j,k) = U(max_idx(j,1),k);
        end
    end
end
