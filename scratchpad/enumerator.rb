# ENUMERATORs  and enumerable module
# enumerators are objects than encapsulate knowledge of how to iterate thru a particular collection.
# the object is separate from the collection itself(by the way, the collections objects are arrays, hashes, ranges and sets.)
# A class which allows both internal and external iteration.
#
# An Enumerator can be created by the following methods.
#  Kernel#to_enum
#   Kernel#enum_for
#   ::new
#   Most methods have two forms:
#   a block form where the contents are evaluated for each item in the enumeration,
#   a non-block form which returns a new Enumerator wrapping the iteration.
#
#  There is also an enumerable module (a MIXIN)that provides collection classes that in turn
# provide traversal and search methods to collections.

# In order to use the methods available in the enumerable module, you must define an each method.
# the job of that each method is to yield items to a supplied code block one at a time.

#

