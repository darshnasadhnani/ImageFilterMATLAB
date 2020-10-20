function noisy_image = add_salt_pepper_noise(img_input, p)
      b = img_input;  
      [n,m]=size(b);
      x = rand(size(b));
      for i=1:n
        for j=1:m
          if (x(i,j)<p)&&(x(i,j)>=0)
            b(i,j)=0;
          endif
          if (x(i,j)>=p/2)&&(x(i,j)<p)
            b(i,j)=255;
          endif
          
        endfor
      endfor
     noisy_image=b;    
endfunction 

