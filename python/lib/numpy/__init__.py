""" Basic stub for numpy code """

print("This is my custom numpy library code!")

def array(arg):
    """Construct an array"""
    return arg

def sum(array):
    """Do a summation of all elements of `array`"""
    sum = 0.
    for v in array:
        sum += v
    return sum
