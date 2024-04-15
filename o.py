!pip install mayavi

from mayavi import mlab

# Define sample points (adjust coordinates)
points = mlab.points3d(1, 2, 3, 4, 5, 6, 7, 8, 9)

# Create a 3D scene
mlab.figure(bgcolor=(0.8, 0.8, 0.8))

# Plot the points as spheres
mlab.points(points, colormap="viridis", scale_factor=0.2)

mlab.show()