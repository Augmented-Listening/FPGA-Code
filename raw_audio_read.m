function s = raw_audio_read(filename,channels,num_bits)
% Read raw binary audio file recorded with a 24 bit ADC stored in 32 bit samples
% Output is (num_samp x num_channels)

if nargin < 2, channels = 1; end
if nargin < 3, num_bits = 24; end

% Read raw audio stored as 32 bit integers in a binary file
f = fopen(filename);
data = uint32(fread(f,Inf,'uint32'));
fclose(f);

% Check that the number of samples is a multiple of the number of channels
if mod(length(data),channels) ~= 0
    error('Wrong number of channels\n');
end

% Convert from 32-bit unsigned to num_bit signed
s = reinterpretcast(bitshift(data,32-num_bits),numerictype(1,32,31));

% Deinterleave channels into matrix
s = reshape(s,[channels,length(s)/channels]).';

% Convert to double
s = double(s);