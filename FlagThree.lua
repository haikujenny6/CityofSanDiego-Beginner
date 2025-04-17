if arguments.len == 2 then

    if arguments[1] == "cyberBrew" then
        println("Congrats you found the secret easter egg!")
        println("Enjoy your cup of Cyber Brew!")


        println("         )  (")
        println("        (   ) )")
        println("         ) ( (")
        println("    mrf_______)_")
        println("    .-'---------|  ")
        println("   ( C|/\/\/\/\/|")
        println("    '-./\/\/\/\/|")
        println("      '_________'")
        println("       '-------'")


    else if arguments[1] == "446fcae7d8a1e95d919f5818b431d5bc" then
        println("You've captured the third flag!")
        dispatch_successful_command("ThirdFlag", get_current_device(), "1")
    else if arguments[1] == "-h" then
        println("This is the command to use to submit your third flag.")
        println("FlagThree <answer>")
    else
        println("Incorrect Flag")
    end if
else
    println("Incorrect number of arguments")
end if