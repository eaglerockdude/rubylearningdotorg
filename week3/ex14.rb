# ken mcfadden rubylearning.net wk 3

h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

# Answers:
#  1. h.member?("Matz")       FALSE      Member checks for KEY not value
# 2. h.member?("Python")     TRUE          Member checks for KEY
# 3. h.include?("Guido")         FALSE     returns true if KEY in hash
# 4. h.include?("Ruby")          TRUE       include checks for key
# 5. h.has_value?("Larry")     TRUE  Larry is a value for the key Perl
# 6. h.exists?("Perl")              FALSE    No such method for hash