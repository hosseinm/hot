function linear_index = seq2bin(options,mags,ors)

options.small = options.max_magnitude_all^(1/options.numbin);
range_m = options.small.^(1:options.numbin);
range_o=linspace(-pi,pi/4,8);

[~,id_mag] = min( abs( bsxfun( @minus, range_m',mags') ) );
[~,id_or] = min( abs( bsxfun( @minus, range_o',ors') ) );

linear_index = sub2ind( [options.numbin, 8 ],id_mag,id_or);


