function W = reverse_diag(N)
W = zeros(N);
W(1:N+1:end) = 1; 
W = fliplr(W);
end
