# Rubik's Cube Simulator

This is a simple Rubik's Cube Simulator that allows you to play with a Rubik's Cube in a 2D environment. You can rotate the cube in any direction and you can also rotate the faces of the cube. The cube is solved by default, but you can scramble it and try to solve it yourself.

## Methodology:

- The cube is represented as a 6x3x3 matrix, where each face of the cube is represented by a 3x3 matrix. The rotations are done by rotating the faces of the cube and then rotating the entire cube in the desired direction.

- This representation, also known as facelet-based representation, is very useful for visualizing and solving the cube. But it is not the best option for modelling the cube.

## Running program:

<img src="https://github.com/N-Razzouk/rubix_flutter/blob/master/assets/screen_recording.gif?raw=true" alt="Screen Recording" width="300"/>

## Next Steps:

- 3D visualization of the cube.
- Implementing a solver for the cube.
- Support for different cube sizes.
- (Optional) Implementing a timer for solving the cube.
