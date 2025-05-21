//setTerminalSize(2)
unlockApp("cat")
unlockApp("cd")
unlockApp("ls")
unlockApp("dirb")
unlockApp("curl")
unlockApp("ssh")
unlockApp("nmap")

nitroApp("Rascal", "Before we get started, I want to get you familiar with the Haiku Forge interface.", "_", 1)
wait(1.2)
nitroCaption(1)

intro = new Sequence
intro.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "To the right, you’ll see a terminal that runs Linux commands —sometimes referred to as a <b><color=#66DDFB>C</color></b>ommand <b><color=#66DDFB>L</color></b>ine <b><color=#66DDFB>I</color></b>nterface (<color=#66DDFB><b>CLI</b></color>).", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "In the background, you’ll see a network map filled with 4 devices.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "{PlayerName}, do you see the spinning <b><color=#66DDFB>diamond</color></b> above the workstation icon?", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "That’s a visual cue to show you which device you’re currently logged into.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Spoiler alert: more devices may appear as we progress through this <b><color=#66DDFB>CTF</b></color>.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Oh!%0AI almost forgot...%0A—<b><color=#66DDFB>CTF</b></color> stands for <color=#66DDFB>C</color>apture <color=#66DDFB>t</color>he <color=#66DDFB>F</color>lag.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("https://learn.haikuinc.io/CTF")
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "There are three flags hidden within this network.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Your goal is to find all three and submit the numbers...", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "...and I’ll be right here by your side, giving you guidance along the way.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Speaking of guidance, let’s begin by reviewing some basic Linux commands.%0AThis will arm you with the tools you need to successfully navigate your way around in Linux for this lesson", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("https://learn.haikuinc.io/LinuxCommands")
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Let’s look at the <b><color=#66DDFB>ls</color></b> command first.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    run("clear")
    //setTerminalSize(0)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<b><color=#66DDFB>ls</color></b>%0A%0AStands for LIST... it lists the files and directories on a machine.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("https://learn.haikuinc.io")
    run("kill 'web browser'")
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "I want you to try running it now.%0ASimply type  <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>ls</mark></font>  in the terminal and hit the 'Enter’ key", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
intro.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("ls", "", [ "/" ])
setupSequence.action = function()
    nitroApp("Rascal", "SWISHHH! Nothin' but net!%0A%0A—I uhhhmmm, hope you don't mind.%0AI downloaded the best encouragement phrases from 1990-1999!%0AI've been on a bit of a 90's kick lately.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
intro.steps.push(setupSequence)

while true
  isIntroPerformed = intro.isPerformed()

  if isIntroPerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

cdDialogue = new Sequence
cdDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Now, you see a listing of the directories on this machine.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
cdDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Next is the <b><color=#66DDFB>cd</color></b> command.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
cdDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<b><color=#66DDFB>cd</color></b>%0A%0A<b><color=#66DDFB>C</b></color>hange <b><color=#66DDFB>D</b></color>irectories by picking a directory you want.%0AJust type: <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>cd <u>[directoryNameHere]</u></mark></font> into the <b><color=#66DDFB>CLI...</b></color>.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
cdDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Try that now, by entering the command:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>cd home</mark></font>%0A%0APrefer a shortcut?!%0AJust highlight the command with your mouse and press <b><color=#66DDFB>Ctrl%2Bc</color></b> to copy it.%0AThen go to your terminal and press <b><color=#66DDFB>Ctrl%2Bv</color></b> to paste it into the <b><color=#66DDFB>CLI</b></color>.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
cdDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("cd", "", [ "/home/" ])
setupSequence.action = function()
    nitroApp("Rascal", "Your Linux skills are fly!%0A%0ANow, let’s LIST the directories again.%0A%0ADo you remember how?%0A%0AIf not, just click on those “expanding arrows” to the left of the “X” here in the messenger box to see my previous text messages.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
cdDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("ls", "", [ "/home" ])
setupSequence.action = function()
    nitroApp("Rascal", "Yo... -did you notice there’s a .txt file in this directory?", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
cdDialogue.steps.push(setupSequence)

while true
  isCDDialoguePerformed = cdDialogue.isPerformed()

  if isCDDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

catDialogue = new Sequence
catDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "We can read the contents of this file by running the <b><color=#66DDFB>cat</color></b> command.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
catDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<b><color=#66DDFB>cat</color></b>%0A%0Acon<b><color=#66DDFB>cat</b></color>enate(to read) files and print them to standard output.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
catDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Here’s the command:%0A%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>cat flagOne.txt</mark></font>%0A%0APrefer another shortcut?!%0AType: <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>cat f</mark></font> and hit the %22tab%22 key.%0AThis is known as %22tab complete.%22", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
catDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("cat", "", [ "/home/flagOne.txt" ])
setupSequence.action = function()
    nitroApp("Rascal", "Dude, way to goooo!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
catDialogue.steps.push(setupSequence)

while true
  isCatDialoguePerformed = catDialogue.isPerformed()

  if isCatDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

flagOneDialogue = new Sequence
flagOneDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "If you ever forget these Linux commands, you can check the Manual: <sprite=%22AppIcons_Sprite_sheet%22 name=%22Manual%22>, or I’ve added an entry in the Notes app: <sprite=%22AppIcons_Sprite_sheet%22 name=%22Notes%22> listing the commands we just covered.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    updateNotepad("Linux%20Commnds:%0A%0Als%20-%20list%20contents%20of%20a%20directory%0Acd%20-%20changes%20directories%0Acat%20-%20prints%20contents%20of%20a%20file%20to%20the%20terminal")
end function
flagOneDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Now, it’s time to submit your first flag!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
flagOneDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Run:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>flagOne c32da2634bc76e1d1220e5a11fbae1c6</mark></font>%0A%0Ato capture it!%0A%0ABTW, -just a heads up, these commands are <i> case </i> sensitive.%0AWhen typing them into the CLI, make sure to get the correct case!(You'll notice that %22One%22 is capitalized in %22flagOne%22)", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
flagOneDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("FirstFlag", get_current_device(), [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Your computer skills are  <i>so</i>  fresh!", "_", 1)
    wait(0.7)
    nitroCaption(1)
    run("goals")
    setGoalAsCompleted("Submit Flag One")
end function
flagOneDialogue.steps.push(setupSequence)

while true
  isFlagOneDialoguePerformed = flagOneDialogue.isPerformed()

  if isFlagOneDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

hintListDialogue = new Sequence
hintListDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "I’ve also created a special  <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint</mark></font>  command for you to use, in case you get stuck along the way.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
hintListDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "You can list out which hints are available by running:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint -l</mark></font>", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
hintListDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("hint_list", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Whoo-hoo!%0A%0A{PlayerName}, notice there’s an entry listed for flagTwo.%0A%0ALet’s read the hint by typing:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint flagTwo</mark></font>", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
hintListDialogue.steps.push(setupSequence)

while true
  isHintListDialoguePerformed = hintListDialogue.isPerformed()

  if isHintListDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

flagTwoHintDialogue = new Sequence
flagTwoHintDialogue.steps = []

//setupSequence = new SequenceStep
//setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
//setupSequence.action = function()
//    nitroApp("Rascal", "Let’s read the hint by typing:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint flagTwo</mark></font>", "_", 1)
//    wait(0.7)
//    nitroCaption(0)
//end function
//hintListDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("hint_flagTwo", get_current_device(), [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "This hint has given us the name of a website to investigate.%0A%0AIn your in-game web browser <sprite=%22AppIcons_Sprite_sheet%22 name=%22Web Browser%22>, enter <u>https://neondripz.com</u> into the address bar.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    unlockToolbarApp("OpenWebBrowser", 1)
end function
flagTwoHintDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("webbrowser_page", "" , [ "/www/index" ])
setupSequence.action = function()
    nitroApp("Rascal", "{PlayerName}, take a moment to look around this website.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
flagTwoHintDialogue.steps.push(setupSequence)

while true
  isFlagTwoHintDialoguePerformed = flagTwoHintDialogue.isPerformed()

  if isFlagTwoHintDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

cyberBrew = new Sequence
cyberBrew.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("webbrowser_page", "HF_CofSD_Beginner_neondripz" , [ "/www/cyberBrew" ])
setupSequence.action = function()
    nitroApp("Rascal", "Purrrre energy, perfectly extracted...standard slew cyber brew.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
cyberBrew.steps.push(setupSequence)

glitchMocha = new Sequence
glitchMocha.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("webbrowser_page", "HF_CofSD_Beginner_neondripz" , [ "/www/glitchMocha" ])
setupSequence.action = function()
    nitroApp("Rascal", "Ahhh, yes. Sweet. Corrupted. Caffeinated....this one's my personal fav.%0ASomething about the sea salt and raspberry undertones. Sounds strange, -but it just hits different.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
glitchMocha.steps.push(setupSequence)

neonLatte = new Sequence
neonLatte.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("webbrowser_page", "HF_CofSD_Beginner_neondripz" , [ "/www/neonLatte" ])
setupSequence.action = function()
    nitroApp("Rascal", "Light it up, and gulp that guzzoline dowwwwn!%0AWait a minute...synth-milk?!%0ANASTYYYY!", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
neonLatte.steps.push(setupSequence)

while true
  isCyberBrewPerformed = cyberBrew.isPerformed()
  isGlitchMochaPerformed = glitchMocha.isPerformed()
  isNeonLattePerformed = neonLatte.isPerformed()

  if isCyberBrewPerformed == 1 and isGlitchMochaPerformed == 1 and isNeonLattePerformed == 1 then
    wait(2)
    dispatch_successful_command("website_exam", get_current_device(), "1")
    break
  end if
  
  wait(0.1)
end while

curlDialogue = new Sequence 
curlDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("website_exam", "HF_CofSD_Beginner_Kali", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "This looks like a pretty normal website for a coffee shop.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
curlDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "So, let’s take a look at the underbelly of this website by using the <b><color=#66DDFB>curl</color></b> command.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("https://learn.haikuinc.io")
    run("kill 'web browser'")
end function
curlDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<b><color=#66DDFB>curl</color></b>%0A%0Astands for <b><color=#66DDFB>C</b></color>lient <b><color=#66DDFB>URL</b></color>%0AIt's a utility for getting files from remote servers.%0AWe can use this to fetch the HTML files from the web server.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
curlDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "If you are already familiar with <b><color=#66DDFB>curl</color></b>, go ahead and run it on <u>https://neondripz.com</u>%0A%0ARemember, you can check the manual <sprite=%22AppIcons_Sprite_sheet%22 name=%22Manual%22> or type:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint curl</mark></font> for help.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
curlDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("curl", "", [ "/www/index" ])
setupSequence.action = function()
    nitroApp("Rascal", "My, my... what do my little eyes spy?", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
curlDialogue.steps.push(setupSequence)

while true
  isCurlDialoguePerformed = curlDialogue.isPerformed()

  if isCurlDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

flagTwoDialogue = new Sequence 
flagTwoDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "{PlayerName}, do you see it too?%0A%0AThat's right, it’s flagTwo!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
flagTwoDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Go ahead and submit the second flag using the command <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>flagTwo</mark></font>%0A%0AIf you need help, don’t forget you can run:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint flagTwoSubmit</mark></font>", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
flagTwoDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("SecondFlag", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "This is how we do it!", "_", 1)
    wait(0.7)
    nitroCaption(1)
    setGoalAsCompleted("Submit Flag Two")
end function
flagTwoDialogue.steps.push(setupSequence)

while true
  isFlagTwoDialoguePerformed = flagTwoDialogue.isPerformed()

  if isFlagTwoDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

dirbDialogue = new Sequence 
dirbDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Now, onward to our third and final flag!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Sometimes, websites have unlinked or hidden pages that can’t be accessed from anywhere on the site, —making them  <i>hard to find</i>  unless you know the exact URL.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "I’m willing to bet that there are some of these hidden pages on <u>neondripz.com</u>", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "We’re going to use a tool called <b><color=#66ddfb>dirb</b></color>.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<b><color=#66ddfb>dirb</b></color> stands for “<b><color=#66ddfb>Dir</b></color>ectory <b><color=#66ddfb>B</b></color>uster.”%0AIt’s a powerful web content scanner used to find hidden files and directories on a website by guessing their names!%0A%0AIt works by sending a list of common file and directory names to the website and checking responses.%0A%0AIf the server replies with a valid result (like a %22200 OK%22), that means the file or directory exists.%0APretty cool, right?", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "{PlayerName}, if you’re already familiar with <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>dirb</mark></font>, go ahead and run it on <u>https://neondripz.com</u>%0A%0ARemember, you can look through the manual <sprite=%22AppIcons_Sprite_sheet%22 name=%22Manual%22> or type:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint dirb</mark></font> for help.%0A%0AYou can use the File Explorer tool <sprite=%22AppIcons_Sprite_sheet%22 name=%22Explorer%22> to view <color=#00B7AC>/home/wordlists</color> just to see what a wordlist looks like!", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("dirb", "HF_CofSD_Beginner_neondripz", [ "/www/logs/" ])
setupSequence.action = function()
    nitroApp("Rascal", "Ah-ha! We’ve got a new page! See it? It's got a (CODE: 200) after it.%0A%0ALet’s go check it out!%0A%0ARemember how we fetched files from this website earlier?%0A%0AIt’s ok if you don’t remember, just run:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint logs</mark></font>%0Afor a nudge ;)", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
dirbDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("curl", "", [ "/www/logs/messages.log" ])
setupSequence.action = function()
    nitroApp("Rascal", "Hmm, it looks like the the website developers use this area to leave notes for each other.%0A%0AReading through their conversation, notice anything interesting?", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("https://neondripz.com/logs/messages")
end function
dirbDialogue.steps.push(setupSequence)

while true
  isDirbDialoguePerformed = dirbDialogue.isPerformed()

  if isDirbDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

nmapDialogue = new Sequence 
nmapDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "I spy with my little eye… an IP address for us to check out.%0A%0AI also see that someone was careless with where they keep their credentials — you’ll want to make a note of those!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
nmapDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "{PlayerName}, we’re going to run <b><color=#66DDFB>nmap</b></color> to see which ports might be open on this newly discovered IP address.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    run("kill 'web browser'")
end function
nmapDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<b><color=#66DDFB>nmap</b></color>%0A%0A%22<b><color=#66DDFB>N</b></color>etwork <b><color=#66DDFB>Map</b></color>per%22 is an open-source tool for network exploration and security auditing.%0AIt's an %22oldie-but-goodie%22", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
nmapDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Run <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>nmap</mark></font> on the <color=#E82629>IP Address</color> we are currently investigating.%0A%0ARemember, you can look through the manual <sprite=%22AppIcons_Sprite_sheet%22 name=%22Manual%22> or run:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint nmap</mark></font>%0Afor help.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
nmapDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nmap", "HF_CofSD_Beginner_neuronetmedia", [ "" ]) //--Check device name
setupSequence.action = function()
    nitroApp("Rascal", "Here we go, here we go, here we go!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
nmapDialogue.steps.push(setupSequence)

while true
  isNmapDialoguePerformed = nmapDialogue.isPerformed()

  if isNmapDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while

sshDialogue = new Sequence 
sshDialogue.steps = []

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Looking at these results, we see that this <color=#E82629>IP</color> belongs to another server.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "See it?%0AIt says <b><color=#66DDFB>neuronetmedia.com</color></b> — that must be the company the web developers work for.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "Also, if we examine the <b><color=#66DDFB>nmap</b></color> results, we can see that <b><color=#66DDFB>SSH</color></b> is open on Port 22.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "<color=#66DDFB><b>SSH</b></color></b>%0A%0A<color=#66DDFB><b>S</b></color>ecure <color=#66DDFB><b>Sh</b></color>ell is a secure network protocol used to remotely access and manage computers — especially servers.%0A%0AAll communication is encrypted, so it’s safe from hackers…  <i>unless</i>  you leave login credentials on a web page, yahh silly rabbit!", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
setupSequence.action = function()
    nitroApp("Rascal", "{PlayerName}, it’s time to use <font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>ssh</mark></font>.%0A%0ARemember, you can look through the manual <sprite=%22AppIcons_Sprite_sheet%22 name=%22Manual%22> or type:%0A<font=%22SpaceMono-Regular SDF%22><mark=#00b7acaa>hint ssh</mark></font>  for help.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("ssh", "HF_CofSD_Beginner_neuronetmedia", [ "" ]) //--Check device name
setupSequence.action = function()
    nitroApp("Rascal", "Alright, alright, alriiiiiight!%0A%0AWe have access to NeuroNet Media’s server!%0ANow it’s time to take a look around.%0A%0AIf you don’t remember the Linux commands, check out the note I left you earlier — <sprite=%22AppIcons_Sprite_sheet%22 name=%22Notes%22>", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("cat", "", [ "/flagThree.txt" ]) //--Check file name and location
setupSequence.action = function()
    nitroApp("Rascal", "Whoo-hoo! -Party Tiiiime, excellennnnt!%0A%0ANow it’s time to submit that final flag!", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
sshDialogue.steps.push(setupSequence)

setupSequence = new SequenceStep
setupSequence.commandWaiting = getCommandWaiting("ThirdFlag", "", [ "1" ]) //--Check file name and location
setupSequence.action = function()
    nitroApp("Rascal", "Ahh yeeeeeah, boyeeee!%0A—You found all the flags!%0A%0A{PlayerName}, you're sittin' on chrome!", "_", 1)
    wait(0.7)
    nitroCaption(0)
    setGoalAsCompleted("Submit Flag Three")
end function
sshDialogue.steps.push(setupSequence)

while true
  isSSHDialoguePerformed = sshDialogue.isPerformed()

  if isSSHDialoguePerformed == 1 then
    break
  end if
  
  wait(0.1)
end while