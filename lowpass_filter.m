function img_result = lowpass_filter(img_input,D0)

  fourier_img = fft2(img_input);
  fourier_img=fftshift(fourier_img);
 
  H=[];
  F2=[];
  [n,m]=size(fourier_img);
  for x=1:n
    for y=1:m
      D=((x-floor(n/2))^2 + (y-floor(m/2))^2)^(1/2);
      F2(x,y)=D;
      if(D<=D0)
      H(x,y)=1;
      else
      H(x,y)=0;
      endif
    endfor
  endfor
  %figure,imshow(H);
  img_result=ifftshift(fourier_img.*H)
  img_result=ifft2(img_result);

end

