if arguments.len == 2 then

    if arguments[1] == "c32da2634bc76e1d1220e5a11fbae1c6" then
        println("You've captured the first flag!")
        dispatch_successful_command("FirstFlag", get_current_device(), "1")
    else if arguments[1] == "-h" then
        println("This is the command to use to submit your first flag.")
        println("flagOne <answer>")
    else
        println("Incorrect Flag")
    end if
else
    println("Incorrect number of arguments")
end if