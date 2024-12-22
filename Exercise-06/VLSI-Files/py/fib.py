def fib(n):
    if n < 2:
        return 1
    return fib(n-1) + fib(n-2)


def fib(n):
    a = 1
    b = 1
    for i in range(n-1):
        c = a+b
        b = a
        a = c
    return a


if __name__ == "__main__":
    for i in range(50):
        print(i, fib(i))
