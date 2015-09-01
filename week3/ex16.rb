# ken mcfadden rubylearning.net wk 3

# Select all correct ways to do an ascending sort by string length.

a = ["Magazine", "Sunday", "Jump"]
# Answers:
# 1. a.sort      INCORRECT   not by string length
# 2. a.sort { |s| s }    INCORRECT syntax invalid.
# 3. a.sort { |l, r| l <=> r }       INCORRECT      not by string length
# 4. a.sort { |l, r| l.length <=> r.length }    CORRECT
# 5. a.sort_by { |s| s }     INCORRECT not by string length
# 6. a.sort_by { |s| s.length }     CORRECT

# sorts but not by length
puts a.sort
 #  sorts but not by string length
puts a.sort { |l, r| l <=> r }
# yes sorts by length
puts a.sort { |l, r| l.length <=> r.length }
 # does not sort by string length
puts a.sort_by { |s| s }
 # sorts by string length
puts a.sort_by { |s| s.length }


