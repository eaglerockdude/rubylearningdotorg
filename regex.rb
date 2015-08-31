# regex stuff

# character classes:
# \w
# Matches any word character (alphanumeric & underscore).
# Only matches low-ascii characters (no accented or non-roman characters)
# Equivalent to [A-Za-z0-9_]

# Examples:
# Match of find any words that start with a capital letter and then have one or many word characters.
# meaning special characters, numbers, etc are not matched.
# underscore and 0-9 are matched
/([A-Z])\w+/