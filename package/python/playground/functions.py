

def play(*args):
    """The play function prints out its arguments

    The arguments are surrounded by some sugar text.
    """
    if args:
        print("You passed these arguments:")
        for arg in args:
            print(" -", arg)
        print("... nice!")
    else:
        print("You did not pass any arguments?")


def ground():
    """A sample function that returns a numpy array

    Note that we only use numpy in this method, hence it is
    *localized*.
    """
    import numpy as np
    return np.linspace(0, 1, 10)
