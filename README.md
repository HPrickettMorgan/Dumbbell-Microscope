# Dumbbell-Microscope
Software for controlling the Team Dumbbell microscopy widget. The Dummbell microscopy widget is a set of mechanical actuators which attach to a light microscope and repeatedly image portions of an inserted slide.
The widget automatically moves the slide to image various portions of the sample and automatically focuses each slide exposure.

## Software Structure
![Software Architecture Diagram](https://drive.google.com/uc?export=view&id=1vWPpIpUUFqZDfkjHd6_QA2P0bTIv61rZ)

- `code.py` and `boot.py` are CircuitPython programs for the Raspberry Pi Pico which control the widget's three stepper motors according to commands sent over serial from the api layer.
- `image_processing.py` is a Python module which identifies the most in-focus image in a series of multiple images of the same microscope field.
- `api.py` is an interop layer which handles communication with the Matlab Engine camera controller, stepper controller, and image processing module.
- `planner.py` is the main entrypoint for the software. It interacts with other components through the `api.py` layer to produce the final in-focus images.

## About Us
Team Dummbell is a student design team as part of the Praxis III course at the University of Toronto.

## Setup
1. Install the Lumenera MATLAB Plug-in and the MATLAB Engine API as instructed in the below resources. A requirement for the Lumenera MATLAB Plug-in is the Image Acquisition Toolbox.
2. Install the packages listed in the `requirements.txt` file.
3. Connect and flash the microcontroller with the `code.py` and `boot.py` programs.
4. Run `planner.py` and follow the prompts.

## Further Resources
- [Lumenera MATLAB Plug-in](https://www.lumenera.com/matlab-image-acquisition.html) and [MATLAB Engine API](mathworks.com/help/matlab/matlab_external/install-the-matlab-engine-for-python.html) 
- [Autofocusing Metrics](https://onlinelibrary.wiley.com/doi/full/10.1111/jmi.13064)
- [More Autofocusing Metrics](https://ieeexplore.ieee.org/abstract/document/1545017?casa_token=qrYe0ZHe4dwAAAAA:OtZUMRlPJtLn3xefLA-0QkEZlBXvot3dFesRmVs86TVNshtphdMnTmJcCTsEyw2GigXJTSM)
- [Reference Z Stacks](https://rdr.ucl.ac.uk/articles/dataset/High_Magnification_Z-Stacks_from_Blood_Films/13402301)

## License
    Copyright (C) 2022 Jazim Akbar, Nidal Danial, Saeed Jan, Henry Prickett-Morgan, and Iliya Shofman

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
