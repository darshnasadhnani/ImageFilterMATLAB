function med = median_helper(sub_matrix)
  A = sub_matrix(:);
  B = quickSort(A);
  B=B(:);
  n = size(B);
  if mod(n,2)==0
    med =(B(n/2) + B(n/2 +1))/2;
  else
    med = B(cast((n+1)/2,'uint8'));
  endif
  med=med(:);
  med=med(1);
endfunction
