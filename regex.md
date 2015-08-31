# ken mcfadden 
## Regex notes
This md file contains useful notes on regexp, in general within a ruby context, but also could be outside that flavor.

## Character Classes
### Word
- Matches any word character (alphanumeric & underscore). 
- Only matches low-ascii characters (no accented or non-roman characters).
- Equivalent to [A-Za-z0-9_]

### Special # variables
 
- $` contains text before last match
- $& contains last matched string
- $' contains text after last match

