# ACADEMIC PROJECT IN GROUP OF TWO

## This project consists of creating a small "graphics engine" with OpenGL and scripting with LUA.

## The features that I developed are:

**Multi thread**: Using a [Task Scheduler](https://github.com/pplux/px) the logic and render functions are executed in different threads

**Geometry Management**: All geometry stored have a ID which is used to attach them to an object.

**Lights, shadows and Render**: Using shadow mapping and deferred rendering, the "engine" can support a variable number of lights and different types: Directional, spot and point.

**LUA scripting**: The implementation of LUA and the creation of the functions to be used within it.

**Archetypes**: the logic and implementation of an archetype model together with the ECS (Entity - Component - System) model to use in the "engine".

Programming language: C++

### The LUA functions that can be used for Scripting are in the README of the folder "script"

### For camera movement:

	move in axis X: A - D
	move in axis Y: W - S
	move in axis Z: X - Z

	rotate in axis Y: J - L
	rotate in axis X: I - K

**change camera mask**: N - M

**change post procesing** with the numbers 1 to 6 -- Not with the numeric key pad

	1 - bloom
	2 - inversion
	3 - gray scale
	4 - kernel
	5 - blur
	6 - edge
