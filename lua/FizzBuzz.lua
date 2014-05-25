for i=1,100 do
    local print_me = ""

    if i%3 == 0 then
        print_me = "Fizz"
    end
    if i%5 == 0 then
        print_me = print_me .. "Buzz"
    end

    if print_me == "" then
	    print_me = i
    end

    print(print_me)

end
