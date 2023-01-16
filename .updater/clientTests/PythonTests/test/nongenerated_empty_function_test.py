def is_empty_function(f):
    """Returns true if f is an empty function."""

    def empty_func():
        pass

    def empty_func_with_docstring():
        """Empty function with docstring."""
        pass

    empty_lambda = lambda: None

    empty_lambda_with_docstring = lambda: None
    empty_lambda_with_docstring.__doc__ = """Empty function with docstring."""

    def constants(f):
        """Return a tuple containing all the constants of a function without:
            * docstring
        """
        return tuple(
            x
            for x in f.__code__.co_consts
            if x != f.__doc__
        )

    return (
            f.__code__.co_code == empty_func.__code__.co_code and
            constants(f) == constants(empty_func)
        ) or (
            f.__code__.co_code == empty_func_with_docstring.__code__.co_code and
            constants(f) == constants(empty_func_with_docstring)
        ) or (
            f.__code__.co_code == empty_lambda.__code__.co_code and
            constants(f) == constants(empty_lambda)
        ) or (
            f.__code__.co_code == empty_lambda_with_docstring.__code__.co_code and
            constants(f) == constants(empty_lambda_with_docstring)
        )
        