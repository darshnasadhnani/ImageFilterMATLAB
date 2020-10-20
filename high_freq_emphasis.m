function img_result = high_freq_emphasis(img_input, a, b)

  fourier_img = fft2(img_input);
  fourier_img=fftshift(fourier_img);
 
  H=[];
  
  [n,m]=size(fourier_img);
   D0=50;
  for x=1:n
    for y=1:m
      D=((x-floor(n/2))^2 + (y-floor(m/2))^2)^(1/2);
      if(D<=D0)
      H(x,y)=0;
      else
      H(x,y)=1;
      endif
    endfor
  endfor
  
  H=a+b*H;
 
  img_result=ifftshift(fourier_img.*H);
  img_result=ifft2(img_result);

end