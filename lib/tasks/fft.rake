# TODO: fix dependencies on Heroku
# require 'lame'
# require 'fftw3'

SOUNDS_PATH = Rails.root.join( '..', 'dg-ng', 'app', 'sounds' )

# Decode a sound file into LPCM frames.
# 
# @param [Pathname] path
# @return [<LAME::DecodedFrame>]
def decode_sound_file(path)
  frames = []
  
  path.open do |file|
    decoder = LAME::Decoder.new(file)
    
    decoder.each_decoded_frame do |decoded_frame|
      frames << decoded_frame
    end
  end
  
  frames
end

# Generate the FFT of LPCM samples.
# 
# @param [Array] samples
# @return [Array]
def generate_fft(samples)
  narray = NArray.to_na(samples)
  
  FFTW3.fft(narray).real.to_a
end

# Generate the FFT of LPCM frames.
# 
# @param [Array] frames
# @return [Array]
def generate_fft_of_frames(frames)
  result = [ [], [] ]
  
  frames.each do |frame|
    result.first << generate_fft( frame.left )
    result.last << generate_fft( frame.right )
  end
  
  result
end

desc "Generate frequency image analyzations of all sounds, set the SOUNDS_PATH environment variable, if needed (Default: #{SOUNDS_PATH})"
task :fft do
  sound_paths = Pathname.glob( SOUNDS_PATH.join( '**', '*.mp3' ) )
  
  # TODO: just using the first sound file for now..
  # sound_paths.each do |path|
  #   puts path
  # end
  
  path = sound_paths.first
  
  frames = decode_sound_file(path)
  fft = generate_fft_of_frames(frames)
  
  puts ?! * 80
  require 'pp'
  pp path
  puts ?- * 50
  pp frames.count
  puts ?- * 50
  pp fft.count
  pp fft.first.count
  pp fft.first.first.count
  puts ?- * 50
  puts "FFT of a random frame of the left channel:"
  puts ?- * 50
  p fft.first.sample
  puts ?! * 80
end
