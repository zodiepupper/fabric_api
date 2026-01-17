# fabric_api

this is a tool to make easier, the use of various API in godot.

the concept is that any API can be interfaced with using a generic
interface. we want to define that generic interface and setup
some protocols here for free use. 

we are defining classes for each piece, this is to apply a schema and 
acts, essentially, as a method of having structs in gdscript. 

in the future, an interface with the same classnames will be made into a 
library in a lower level language and a gdextension that will shadow the
gdscript version and will be a drop-in-replacement.

we are starting with Matrix as it is currently needed for the barkvr project.

