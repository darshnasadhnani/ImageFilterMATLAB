function noisy_image = add_gaussian_noise(img_input, g_mean, g_std)
  [x,y]=size(img_input);
  array_gaussian_noise=double(g_mean+randn(x,y)*g_std);
  array_gaussian_noise=array_gaussian_noise*255;
  noisy_image=array_gaussian_noise+img_input;
  noisy_image=cast(noisy_image,'uint8');
end

