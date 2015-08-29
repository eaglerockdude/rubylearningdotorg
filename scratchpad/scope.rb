# Rules of ruby scope:

# The top level (outside of all definition blocks) has its own local scope.

# Every class or module definition block (class, module) has its own local scope,
# even nested class/module definition blocks.

#  Every method definition (def) has its own local scope; more precisely, every call
#  to a method generates a new local scope, with all local variables reset to an
#  undefined state.