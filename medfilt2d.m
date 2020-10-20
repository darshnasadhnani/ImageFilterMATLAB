function img_result = medfilt2d(img_input, size1)
  
   %Getting sizes of inputs
   [n,m]=size(img_input); 
   f=(size1-1)/2;

  %Adding Zero Padding Based on filter size 
   v = zeros(f,m);
   img_input= vertcat(v,img_input);
   img_input=vertcat(img_input,v);
   h=zeros(n+(f)*2,f);
   img_input=horzcat(h,img_input);
   img_input=horzcat(img_input,h);
   
   %finding the median by submatrices
   k=size1-1;
   for x=1:n
     for y=1:m
       sub_a=img_input(x:x+k,y:y+k);
       img_result(x,y)=median_helper(sub_a);
     endfor
   endfor
   
end
