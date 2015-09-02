# ken mcfadden 
## Regex notes
This md file contains useful notes on regexp, in general within a ruby context, but also could be outside that flavor.

## Character Classes
Character classes are created by the metacharacters [ ].  This defines the class.  It is simlar to an 'IN" statement in SQL.
Example [0 1 2 3 4 5 6 7 8 9] or [0-9] will match any numbers 0 thru 9.  '-' within a character class has special "range" meaning.
### Word
- Matches any word character (alphanumeric & underscore). 
- Only matches low-ascii characters (no accented or non-roman characters).
- Equivalent to [A-Za-z0-9_]

### Special # variables
 
- $` contains text before last match
- $& contains last matched string
- $' contains text after last match

