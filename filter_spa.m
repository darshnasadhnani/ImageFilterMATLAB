function img_result = filter_spa(img_input, filter)
  img_input=double(img_input);
  %Getting sizes of inputs
   [n,m]=size(img_input); 
   f=size(filter,1);
   f=(f-1)/2;

  %Adding Zero Padding Based on filter size 
   v = zeros(f,m);
   img_input= vertcat(v,img_input);
   img_input=vertcat(img_input,v);
   h=zeros(n+(f)*2,f);
   img_input=horzcat(h,img_input);
   img_input=horzcat(img_input,h);
   
   %applying 3x3 filter 
   k=size(filter,1)-1;
   for x=1:n
     for y=1:m
       sub_a=img_input(x:x+k,y:y+k);
       img_result(x,y)=cast(dot(sub_a(:),filter(:)),'double');
     endfor
   endfor
   img_result=cast(img_result,'uint8');
end