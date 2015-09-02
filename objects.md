# ken mcfadden 
## Object and Metaprogramming notes

### Classes
- Classes are objects
- all methods are not stored in the object, they are store in the class of the object.   
- class names are simply constants that point to a class object.
- class definitions are live code, in they will run without having been instantiated.
- classes don't have to have a name, and don't have a name till we assign them to a Constant


### Self
in ruby self is a special variable that references the current object.

- the current object is the "default receiver" on method calls when no object is specified to receive the message.
- the current object is where @instance variables  are stored/found.
- there are only TWO ways to change self
    1. call a method with an explicit receiver
    2. a class definition changes the value of self.

### Ruby lookup mechanism
Ruby only has ONE lookup mechanism to find a method.   Each object knows, or has a POINTER to its class.

1.  Look at the object, and finds it class.
2.  Look in that class for the method.  If found use it.
3.  If not found, go up the chain(the parent of that class) one by one to search.
4.  If the top of the chain(BasicObject) is reached, and method not found, then error.
5.  Class methods work the same way.  If we define a class method, a singleton method is created on a class object
     that is then called, the same lookup path as instance methods.

