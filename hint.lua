if arguments.len == 2 then

    if arguments[1] == "-l" then
        println("Here is a listing of some the hints available")
        println("cat")
        println("cd") 
        println("curl")
        println("dirb")
        println("flagOne")
        println("flagTwo")
        println("flagThree")
        println("logs")
        println("ls") 
        println("nmap")
        println("ssh")
        dispatch_successful_command("hint_list", get_current_device(), "1")
    else if arguments[1] == "-h" then
        println("If you are stuck and need a hint for running a command")
        println("run 'hint <command>'")
        println("Warning: contains spoilers!")
        println("Run 'hint -l' to see a listing of available hints")
    else if arguments[1] == "cd" then
        println("This is the help for the <color=#66DDFB>cd</color> command")
        println("To change directories, type cd <DirectoryName>")
        println("Try: <color=#66DDFB>cd home</color>")
    else if arguments[1] == "ls" then
        println("This is the help for the <color=#66DDFB>ls</color> command")
        println("To list the contents of a directory, type <color=#66DDFB>ls</color>")
    else if arguments[1] == "cat" then 
        println("This is the hint for <color=#66DDFB>cat</color> command")
        println("To read the contents of the file <color=#D0F83E>flagOne.txt</color>,")
        println("you would type the following into your terminal:")
        println("<color=#66DDFB>cat flagOne.txt</color>")
        dispatch_successful_command("hint_cat", get_current_device(), "1")
    else if arguments[1] == "dirb" then 
        println("This is the hint for <color=#66DDFB>dirb</color> command")
        println("To use this command effectively,")
        println("you need a good wordlist.")
        println("<color=#D0F83E>/home/wordlists/directories</color> is what you want to use.")
        println("You add a wordlist after the URL in the dirb command.")
        println("dirb <u>URL</u> <color=#D0F83E>WORDLIST</color>")
        println("Run <color=#66DDFB>hint dirbExtra</color> for the exact syntax")
    else if arguments[1] == "dirbExtra" then 
        println("This is the hint for <color=#66DDFB>dirb</color> syntax")
        println("dirb https://neondripz.com /home/wordlists/directories")
    else if arguments[1] == "curl" then 
        println("This is the hint for <color=#66DDFB>curl</color> command")
        println("curl https://neondripz.com")
    else if arguments[1] == "nmap" then 
        println("This is the hint for <color=#66DDFB>nmap</color> command")
        println("nmap <Found IP ADDR>")
    else if arguments[1] == "logs" then 
        println("This is the hint for fetching the log files.")
        println("Use <color=#66DDFB>curl</color> to fetch the <color=#D0F83E>messages.log</color> file.")
        println("Run <color=#66DDFB>hint curlMessages</color> for the syntax.")
    else if arguments[1] == "curlMessages" then 
        println("This is the hint for the curl syntax.")
        println("run  <color=#66DDFB>curl https://neondripz.com/logs/messages.log</color>")    
    else if arguments[1] == "ssh" then //--Check to see if this can pull the deviceIP
        println("This is the hint for <color=#66DDFB>ssh</color> command")
        //--deviceIP = {DeviceIP:HF_CofSD_Beginner_neuronetmedia}
        println("ssh neuronetmedia.com")
        println("Enter the credentials you found")
        println("when prompted.")
        //--println("Enter: quickTempPass")
        //--println("when prompted for a password")
    else if arguments[1] == "flagOne" then 
        println("This is the hint for <color=#66DDFB>flagOne</color> command")
        println("Use the <color=#66DDFB>cat</color> command to display")
        println("the contents of <color=#D0F83E>flagOne.txt</color>, then run")
        println("<color=#66DDFB>flagOne {FLAG}</color>")
        println("where {FLAG} is the number found in <color=#D0F83E>flagOne.txt</color>")
    else if arguments[1] == "flagTwo" then
        println("This is the hint for flagTwo")
        println("Check out <u>https://neondripz.com</u> in your web browser.")
        dispatch_successful_command("hint_flagTwo", get_current_device(), "1")
    else if arguments[1] == "flagTwoSubmit" then
        println("This is the hint for submitting flagTwo")
        println("<color=#66DDFB>flagTwo {FLAG}</color>")
        println("where {FLAG} is the number found in <color=#D0F83E>flagTwo.txt</color>")
    else if arguments[1] == "flagThree" then 
        println("This is the hint for flagThree")
        println("Look around the new web server")
        println("using the Linux commands you know.")
        println("")
        println("Check out your Notes App for a listing")
        println("of the commands we reviewed.")
        println("")
        println("<color=#66DDFB>flagThree {FLAG}</color>")
        println("where {FLAG} is the number found in <color=#D0F83E>flagThree.txt</color>")
    else
        println("Unrecognized option. Try 'hint -h' for help.")
    end if
else
    println("Expected two arguments. Use 'hint -h' for usage help.")
end if