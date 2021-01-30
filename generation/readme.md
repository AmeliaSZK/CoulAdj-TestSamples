# Sample Generator
For posterity, this folder contains the shitty Jupyter notebook that I used
to generate the original PNG files.

# Requirements

* [Anaconda](https://www.anaconda.com/products/individual)
    * Development was done with the Individual Edition (Distribution)
    * _NB: Upon install, Anaconda will modify your command line prompt to prefix
        it with the active environment in parenthesis._

# How to run

## First time setup
1. On the command line, navigate to this folder
1. Verify that you are in the correct folder
    ```
    $ ls
    environment.yml  readme.md  Sandbox.ipynb
    ```
1. Run this command:
    ```
    $ conda env create -f environment.yml
    ```

## Launching the notebook
1. On the command line, navigate to this folder
1. Verify that you are in the correct folder
    ```
    $ ls
    environment.yml  readme.md  Sandbox.ipynb
    ```
1. Run these commands:
    ```
    $ conda activate CoulAdj-Py
    $ jupyter notebook
    ```
1. Use the Jupyter notebook in your favourite web browser.
    * If no browser pops-up, read the instructions in the terminal that were
    printed after you ran `jupyter notebook`