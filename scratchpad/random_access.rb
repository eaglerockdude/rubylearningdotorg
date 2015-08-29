
f = File.new("txtfile.txt")
# SEEK_CUR - Seeks to first integer number parameter plus current position
# SEEK_END - Seeks to first integer number parameter plus end of stream
#   (you probably want a negative value for first integer number parameter)
# SEEK_SET - Seeks to the absolute location given by first integer number parameter
# :: is the scope operator - more on this later

# seek_set basically moves the cursor that many bytes from the beg of the file.
f.seek(27, IO::SEEK_SET)
print f.readline
f.close