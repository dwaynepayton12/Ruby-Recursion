def fib(n)
    array = []
    0.upto(n) do |n|
        if n == 0
            array << 0

        elsif n == 1
            array << 1

        else
           fib = array[n- 1] + array[n-2]
           array << fib
        end
    end
    array
end


def fib_rec(n)
    return [0] if n == 0
    return [0, 1] if n == 1

    array = fib_rec(n - 1)
    array << array[-1] + array [-2]
end

p fib(10)
p fib_rec(10)
