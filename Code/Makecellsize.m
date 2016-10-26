function options  = Makecellsize(options )
ImageName=imread(options.ImageName);
NumGridPixel_cell2=(size(ImageName,2)+1)/options.Yinput;
NumGridPixel_cell1=(size(ImageName,1)+1)/options.Xinput;
options.NumGridPixel=round((NumGridPixel_cell2+NumGridPixel_cell1)/2);
options.NumGridPixel_x=ceil(NumGridPixel_cell1);
options.NumGridPixel_y=ceil(NumGridPixel_cell2);


