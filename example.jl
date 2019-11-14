function is_paired(input_string::String)

    cleaned = ""
    for ch ∈ input_string
        if ch ∈ "{[()]}";    cleaned *= ch;    end
    end

    if length(cleaned) % 2 == 1;    return false;    end


    stack = Char[] # In Julia, you can just use an array 

    balanced = true # default
    i = 1
    while i ≤ length(cleaned)  &&  balanced
        symbol = cleaned[i]
        if symbol in "([{"
            push!(stack, symbol)
        else
            if length(stack) == 0
                balanced = false
            else
                top = pop!(stack)
                if !matches(top, symbol)
                    balanced = false
                end
            end
        end

        i += 1
    end

    if balanced  &&  length(stack) == 0
        return true
    else
        return false
    end
end

 


function matches(left, right)
    openers = "([{"
    closers = ")]}"


    indexOf(openers, left) == indexOf(closers, right)
end


function indexOf(arr, item)
    i = 1
    while i ≤ length(arr)
        if arr[i] == item;    return i;    end

        i += 1
    end

    msg = "\"item\" could not be found in \"arr\" for indexOf(arr, item)."
    throw(Exception(msg))
end
