
# raster_processing.py
# Example script to extract remote sensing indices

import numpy as np

def ndvi(nir, red):
    return (nir-red)/(nir+red+1e-6)

def ndwi(green, nir):
    return (green-nir)/(green+nir+1e-6)

print("Example remote sensing index calculator")
