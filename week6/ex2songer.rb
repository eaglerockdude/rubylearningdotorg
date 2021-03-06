#ken mcfadden rubylearningdotnet

#  This program analyzes an .mp3 file.  It looks for the ID3 tag which begins the last 128 bytes of an .mp3 if it follows formatting standards.

# ID3 standard breaks down many fields, however for this assignment we are just looking for the initial 30 bytes which will have song name.

bf = open('song.mp3', 'r')

bf.seek(-125, File::SEEK_END)  #skip the TAG literal.

# display some information based on the ID3 standard:
mp3_name   = bf.read(30)
puts  "#{mp3_name}"

mp3_artist   = bf.read(30)
puts  "#{mp3_artist}"

mp3_album   = bf.read(30)
puts  "#{mp3_album}"

bf.close




