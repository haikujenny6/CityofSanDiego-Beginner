if arguments.len == 2 then

    if arguments[1] == "81e59901c80e9499bf3edc169f685539" then
        println("You've captured the second flag!")
        dispatch_successful_command("SecondFlag", get_current_device(), "1")
    else if arguments[1] == "-h" then
        println("This is the command to use to submit your second flag.")
        println("flagTwo <answer>")
    else
        println("Incorrect Flag")
    end if
else
    println("Incorrect number of arguments")
end if