unlockApp("ssh")
unlockApp("cd")
unlockApp("cat")
unlockApp("exit")
autoConnect("hunter")
unlockToolbarApp("OpenWebBrowser", 0)
unlockToolbarApp("OpenExplorer", 0)
unlockToolbarApp("OpenManual", 0)
unlockToolbarApp("OpenSkilltree", 0)
unlockToolbarApp("OpenNotes", 0)

//global Variables
browser_set_fake_cookie_value("mapClicks",0)//this variable purpose is to map user clicking on the location grid on http://5g.io/shadow/map which maps to separate locatation webpages http://5g.io/shadow/location/1155 etc


//Mission Opening Dialog

wait(nitroApp("Rascal", "{PlayerName} in order to find Shadow. We first need to hone our wireless communications and radio frequency basics. I will go ahead and open our browser to begin our learning.") + 1.2)
nitroCaption(1)

Odialog = new Sequence
Odialog.steps = []

OpenSequence = new SequenceStep
OpenSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
OpenSequence.action = function()
    nitroApp("Rascal", "Alright!. This is our main page.<b><color=#66DDFB>http://5g.io</color></b>. We will focus on these topics.", "_", 1)
    wait(0.7)    
    browser("http://5g.io/home")
    run("clear")
    nitroCaption(1)
    

end function
Odialog.steps.push(OpenSequence)

OpenSequence = new SequenceStep
OpenSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
OpenSequence.action = function()
    nitroApp("Rascal", "We will be briefly learning about Electromagnetic Waves, EM Spectrum, Radio Frequency Allocation Spectrum, and the FCC.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
Odialog.steps.push(OpenSequence)

//While Loop for Opening Dialog Sequence
//The loop continues while the dialog progresses. The loop stops upon conclusion of dialog sequence when .isperformed() results in 1.
while true
 openingdialog = Odialog.isPerformed()
  
 if openingdialog == 1 then
  break
 end if
 
 wait(0.1)
end while

////////////////////////////
//This is the EM code block
/////////////////////////////
emDialog = new Sequence
emDialog.steps = []

emdialogStep1 = new SequenceStep
emdialogStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
emdialogStep1.action = function()
    
    nitroApp("Rascal", "{PlayerName} Go ahead and start our lesson of Electromagnetic Waves.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
end function
emDialog.steps.push(emdialogStep1)

emSequenceStep2 = new SequenceStep
emSequenceStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
emSequenceStep2.action = function()
    browser("http://5g.io/em/1")
    run("clear")
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep2)

////////////////////////////////////////////////////////////////////////////////////////////////////////
//ADD COMMENTS for visited pages http://5g.io/em/1-9
/////////////////////////////////////////////////////////////////////////////////////////////////////////

emSequenceStep3 = new SequenceStep
emSequenceStep3.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/1" ])
emSequenceStep3.action = function()
    nitroApp("Rascal", "This is an Electromagnetic Wave. It has an Electrical and Magnetic property to it.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep3)

emSequenceStep4 = new SequenceStep
emSequenceStep4.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/2" ])
emSequenceStep4.action = function()
    nitroApp("Rascal", "The EM wave has various parts that make up the wave. These include Frequency and Amplitude.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep4)

emSequenceStep5 = new SequenceStep
emSequenceStep5.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/3" ])
emSequenceStep5.action = function()
    nitroApp("Rascal", "The EM wave has also Wavelength and Period, which are measurements based upon the Frequency and Amplitude of the wave.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep5)

emSequenceStep6 = new SequenceStep
emSequenceStep6.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/4" ])
emSequenceStep6.action = function()
    nitroApp("Rascal", "The EM wave can be easily understood with it's relationship to energy and comparing to the speed of light. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep6)

emSequenceStep7 = new SequenceStep
emSequenceStep7.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/5" ])
emSequenceStep7.action = function()
    nitroApp("Rascal", "The phase of an EM wave is slightly complicated. The phase of the wave is a way to measure where the wave is it is oscillation cycle compared to either time or another wave. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep7)

emSequenceStep8 = new SequenceStep
emSequenceStep8.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/6" ])
emSequenceStep8.action = function()
    nitroApp("Rascal", "This is what a phase shift would look like on a graph comparing the two waves on the same axis. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep8)

emSequenceStep9 = new SequenceStep
emSequenceStep9.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/7" ])
emSequenceStep9.action = function()
    nitroApp("Rascal", "As EM waves propagate or travel through a medium, whether air, wood, metal, etc, the wave will change based upon the material's properties. Most often materials will just attenuate or make the wave less Powerful. Affecting the Amplitude. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep9)

emSequenceStep10 = new SequenceStep
emSequenceStep10.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/8" ])
emSequenceStep10.action = function()
    nitroApp("Rascal", "The EM Spectrum is a way to graph and illustrate the waves frequency and wavelength in an easily readible format. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep10)

emSequenceStep11 = new SequenceStep
emSequenceStep11.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/em/9" ])
emSequenceStep11.action = function()
    nitroApp("Rascal", "Here is a table to illustrate some uses of the EM waves and their frequency ranges. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
emDialog.steps.push(emSequenceStep11)

//While Loop for EM Sequence
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
 emSeq = emDialog.isPerformed()
  
 if emSeq == 1 then
  break
 end if
 
 wait(0.1)
end while

shadowMessage = new Sequence
shadowMessage.steps = []

shadowMessageStep1 = new SequenceStep 
shadowMessageStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
shadowMessageStep1.action = function()
    nitroApp("Rascal", "{PlayerName} It would appear Mr. Shadow has left a message for us on our hunter workstation.", "_", 1)
    downloadFile("TOP%20SECRET%0AEYES%20ONLY%0A%0ATo%20the%20Only%20One%20Who%20Can%20Be%20Trusted%2C%0A%0AI%20am%20being%20hunted.%20Shadows%20move%20in%20ways%20they%20should%20not%2C%20and%20whispers%20follow%20me%20where%20silence%20should%20reign.%20They%20know%20I%20know%20too%20much.%20The%20encryption%20I%20cracked%2C%20the%20transmissions%20I%20intercepted%E2%80%94each%20one%20a%20step%20closer%20to%20a%20truth%20they%20never%20intended%20me%20to%20see.%20Now%2C%20they%20erase%20every%20trace%20of%20me.%20My%20safe%20houses%20have%20been%20burned%2C%20my%20contacts%20compromised.%20The%20net%20tightens.%0A%0ABut%20I%20am%20not%20lost.%20Not%20yet.%0A%0AThey%20may%20track%20my%20movements%2C%20but%20they%20will%20never%20track%20my%20mind.%20That%20is%20where%20my%20escape%20begins.%20The%20key%20is%20misdirection%2C%20the%20weapon%20is%20obscurity%2C%20and%20the%20battlefield%20is%20perception%20itself.%20I%20will%20speak%20in%20puzzles%2C%20hide%20my%20truths%20in%20the%20cracks%20between%20words.%20You%20will%20know%20where%20to%20look.%0A%0AWatch%20for%20the%20patterns.%20The%20answers%20will%20not%20always%20be%20clear%2C%20but%20they%20will%20be%20there.%20Each%20a%20breadcrumb%2C%20each%20a%20cipher%2C%20each%20a%20step%20forward.%20I%20left%20clues%E2%80%94breadcrumbs%20across%20the%20network.%20You%20have%20to%20find%20me%20before%20they%20do.%20Decode%20the%20signals.%20When%20the%20time%20comes%2C%20you%20will%20understand.%20But%20until%20then%2C%20be%20cautious.%20Trust%20nothing%20but%20the%20data.%20%0A%0AStay%20in%20the%20shadows.%20Trust%20no%20one.%0A%0AS.%0A%0AF.FFA.AA%0AI%20have%20provided%20the%20wave%20you%20must%20surf.%20Make%20sure%20you%20match%20my%20groove%2C%20that%20way%20we%20will%20be%20in%20synch.%0ARemove%20all%20the%200s%2C%20and%20what%20remains%20will%20help%20you%20MAP%20out%20the%20path%20to%20the%201.%20","hunter","/home/desktop/shadowfile.txt")
    wait(0.7)
    nitroCaption(1)
end function
shadowMessage.steps.push(shadowMessageStep1)

shadowMessageStep2 = new SequenceStep
shadowMessageStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
shadowMessageStep2.action = function()
    wait(0.7)
    nitroCaption(1)
    run("kill 'web browser'")
    run("editor /home/desktop/shadowfile.txt")
    run("clear")

end function
shadowMessage.steps.push(shadowMessageStep2)

shadowMessageStep3 = new SequenceStep
shadowMessageStep3.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
shadowMessageStep3.action = function()
    nitroApp("Rascal", "{PlayerName} This seems to be written by Mr. Shadow. There appears to be a clue there at the bottom of the message. We should make note of that.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    updateNotepad("Stay%20in%20the%20shadows.%20Trust%20no%20one.%0A%0AS.%0A%0AF.FFA.AA%0AI%20have%20provided%20the%20wave%20you%20must%20surf.%20Make%20sure%20you%20match%20my%20groove%2C%20that%20way%20we%20will%20be%20in%20synch.%0ARemove%20all%20the%200s%2C%20and%20what%20remains%20will%20help%20you%20MAP%20out%20the%20path%20to%20the%201.%20")
end function
shadowMessage.steps.push(shadowMessageStep3)

shadowMessageStep4 = new SequenceStep
shadowMessageStep4.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
shadowMessageStep4.action = function()
    nitroApp("Rascal", "We can find the note within the notepad on the toolbar if we need it in the future.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    run("notes")
    
end function
shadowMessage.steps.push(shadowMessageStep4)

shadowMessageStep5 = new SequenceStep
shadowMessageStep5.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
shadowMessageStep5.action = function()
    nitroApp("Rascal", "I am going to go ahead and close the Notepad.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    run("kill 'notes'")
    run("kill 'file editor'")
    run("clear")
    
end function
shadowMessage.steps.push(shadowMessageStep5)

//While Loop for Shadow Message Sequence
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
 shadow = shadowMessage.isPerformed()
  
 if shadow == 1 then
  break
 end if
 
 wait(0.1)
end while

////////////////////////////////////////////////////
//http://5g.io/shadow/SurftheWave
/////////////////////////////////////////////////////
surfWave1 = new Sequence
surfWave1.steps = []

surfWaveStep1 = new SequenceStep
surfWaveStep1.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
surfWaveStep1.action = function()
    nitroApp("Rascal", "It appears there is an embedded wave file called SurftheWave within the txt document. When we opened the document it appears to have downloaded some files within our webserver.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
surfWave1.steps.push(surfWaveStep1)

surfWaveStep2 = new SequenceStep
surfWaveStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
surfWaveStep2.action = function()
    nitroApp("Rascal", "I'll go ahead and open it.", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
surfWave1.steps.push(surfWaveStep2)

surfWaveStep3 = new SequenceStep
surfWaveStep3.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
surfWaveStep3.action = function()
    browser("http://5g.io/shadow/SurftheWave")
    run("clear")
    wait(0.7)
    nitroCaption(0)
end function
surfWave1.steps.push(surfWaveStep3)

surfWaveStep4 = new SequenceStep
surfWaveStep4.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/shadow/SurftheWave" ])
surfWaveStep4.action = function()
    nitroApp("Rascal", "{PlayerName} it seems we need to MATCH the waveforms. Based upon the message Mr. Shadow left. Let's give it a shot.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
surfWave1.steps.push(surfWaveStep4)

///////////////////////////////////////////////////////////
//
//surfWaveAmp Sequence for SurftheWave 
//
////////////////////////////////////////////////////////

surfWaveAMP = new Sequence
surfWaveAMP.steps = []

surfWaveAMPStep1 = new SequenceStep
surfWaveAMPStep1.commandWaiting = getCommandWaiting("sine_amplitude_cm", "", [ "0.55" ])
surfWaveAMPStep1.action = function()
    nitroApp("Rascal", "Great. We matched the amplitude of the given Sine Wave.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    updateNotepad("A.AA%0A0.55")
end function
surfWaveAMP.steps.push(surfWaveAMPStep1)

///////////////////////////////////////////////////////////
//
//surfWaveFreq Sequence for SurftheWave 
//
////////////////////////////////////////////////////////

surfWaveFreq = new Sequence
surfWaveFreq.steps = []

surfWaveFreqStep1 = new SequenceStep
surfWaveFreqStep1.commandWaiting = getCommandWaiting("sine_frequency_hz", "", [ "1.10" ])
surfWaveFreqStep1.action = function()
    nitroApp("Rascal", "Great!. We matched the frequency of the given Sine Wave.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    updateNotepad("F.FF%0A1.10")
end function
surfWaveFreq.steps.push(surfWaveFreqStep1)


//While Loop for surfWave Sequence
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
 surfWave = surfWave1.isPerformed()
 surfAmp = surfWaveAMP.isPerformed()
 surfFreq = surfWaveFreq.isPerformed()


 if surfWave == 1 and surfAmp == 1 and surfFreq == 1 then
  break
 end if
 
 wait(0.1)
end while

///////////////////////////////////////////////////
//This is the EM Quiz Dialog code block
//ends with returning back to http://5g.io/home
///////////////////////////////////////////////////

emQuizDialog = new Sequence
emQuizDialog.steps = []

emQuizDialogStep1 = new SequenceStep
emQuizDialogStep1.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
emQuizDialogStep1.action = function()
    nitroApp("Rascal", "Great Job {PlayerName}. Let's go ahead and test what we have learned.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    browser("http://5g.io/quiz/q1")
    run("clear")
end function
emQuizDialog.steps.push(emQuizDialogStep1)


//While Loop for emQuiz
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    Dialog = emQuizDialog.isPerformed()
 if Dialog == 1 then
  break
 end if
 
 wait(0.1)
end while

///////////////////////////////////////////////////
//This is the EM Quiz code block
//Answers A,C,D,B
//ends with returning back to http://5g.io/home
///////////////////////////////////////////////////

emQuiz = new Sequence
emQuiz.steps = []

emQuizStep1 = new SequenceStep
emQuizStep1.commandWaiting = getCommandWaiting("q1", "", [ "A" ])
emQuizStep1.action = function()
    nitroApp("Rascal", "Great Job.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    browser("http://5g.io/quiz/q2")
    run("clear")
end function
emQuiz.steps.push(emQuizStep1)

emQuizStep2 = new SequenceStep
emQuizStep2.commandWaiting = getCommandWaiting("q2", "", [ "C" ])
emQuizStep2.action = function()
    nitroApp("Rascal", "Very Good.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    browser("http://5g.io/quiz/q3")
    run("clear")
end function
emQuiz.steps.push(emQuizStep2)

emQuizStep3 = new SequenceStep
emQuizStep3.commandWaiting = getCommandWaiting("q3", "", [ "D" ])
emQuizStep3.action = function()
    nitroApp("Rascal", "Awesome.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    browser("http://5g.io/quiz/q4")
    run("clear")
end function
emQuiz.steps.push(emQuizStep3)

emQuizStep4 = new SequenceStep
emQuizStep4.commandWaiting = getCommandWaiting("q4", "", [ "B" ])
emQuizStep4.action = function()
    nitroApp("Rascal", "Excellent Job ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("http://5g.io/home")
    run("clear")
    
end function
emQuiz.steps.push(emQuizStep4)

emQuizStep5 = new SequenceStep
emQuizStep5.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
emQuizStep5.action = function()
    nitroApp("Rascal", "Great Job on the PopQuiz. Let's keep going. ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
    
end function
emQuiz.steps.push(emQuizStep5)

emQuizStep6 = new SequenceStep
emQuizStep6.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
emQuizStep6.action = function()
    browser("http://5g.io/home")
    run("clear")
    wait(0.7)
    nitroCaption(0)
    
    
end function
emQuiz.steps.push(emQuizStep6)

//While Loop for emQuiz
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    quiz = emQuiz.isPerformed()
 if quiz == 1 then
  break
 end if
 
 wait(0.1)
end while

//////////////////////////////////////////////////////////////////////////
// This is the Modulation section http://5g.io/mod/1 - 5
//ends with returning back to http://5g.io/home
//////////////////////////////////////////////////////////////////////////
modDialog = new Sequence
modDialog.steps = []

moddialogStep1 = new SequenceStep
moddialogStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
moddialogStep1.action = function()
    
    nitroApp("Rascal", "{PlayerName} Go ahead and start our lesson of wave modulations.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
end function
modDialog.steps.push(moddialogStep1)

moddialogStep2 = new SequenceStep
moddialogStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
moddialogStep2.action = function()
    browser("http://5g.io/mod/1")
    run("clear")
    wait(0.7)
    nitroCaption(0)
end function
modDialog.steps.push(moddialogStep2)

moddialogStep3 = new SequenceStep
moddialogStep3.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/mod/1" ])
moddialogStep3.action = function()
    nitroApp("Rascal", "{PlayerName} This is a general overview of the types of modulations and shift keying we will focus on today. There are many more.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
modDialog.steps.push(moddialogStep3)

moddialogStep4 = new SequenceStep
moddialogStep4.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/mod/2" ])
moddialogStep4.action = function()
    nitroApp("Rascal", "This type of modulation is called Amplitude Modulation. It alters the carrier wave amplitude based upon the message signal wave. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
modDialog.steps.push(moddialogStep4)

moddialogStep5 = new SequenceStep
moddialogStep5.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/mod/3" ])
moddialogStep5.action = function()
    nitroApp("Rascal", "This type of modulation is called Frequency Modulation. It alters the carrier wave frequency based upon the message signal wave. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
modDialog.steps.push(moddialogStep5)

moddialogStep6 = new SequenceStep
moddialogStep6.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/mod/4" ])
moddialogStep6.action = function()
    nitroApp("Rascal", "This type of modulation is called Phase Modulation. It alters the carrier wave phase based upon the message signal wave. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
modDialog.steps.push(moddialogStep6)

moddialogStep7 = new SequenceStep
moddialogStep7.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/mod/5" ])
moddialogStep7.action = function()
    nitroApp("Rascal", "This type of modulation is where data communications at high speeds and high frequencies come from. ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
modDialog.steps.push(moddialogStep7)




//While Loop for Modulation Sequence
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
 modSeq = modDialog.isPerformed()
  
 if modSeq == 1 then
  break
 end if
 
 wait(0.1)
end while

//////////////////////////////////////////////////////////////////////////
// This is the Modulation quiz http://5g.io/quiz/q5
//Answer A
//ends with returning back to http://5g.io/home
//////////////////////////////////////////////////////////////////////////
modQuizDialog = new Sequence
modQuizDialog.steps = []

modQuizDialogStep1 = new SequenceStep
modQuizDialogStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
modQuizDialogStep1.action = function()
    nitroApp("Rascal", "Great Job {PlayerName}. Let's go ahead and test what we have learned.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    browser("http://5g.io/quiz/q5")
    run("clear")
end function
    modQuizDialog.steps.push(modQuizDialogStep1)


//While Loop for modQuiz
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    Dialog = modQuizDialog.isPerformed()
 if Dialog == 1 then
  break
 end if
 
 wait(0.1)
end while



modQuiz = new Sequence
modQuiz.steps = []

modQuizStep1 = new SequenceStep
modQuizStep1.commandWaiting = getCommandWaiting("q5", "", [ "A" ])
modQuizStep1.action = function()
    nitroApp("Rascal", "Excellent Job ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
    
end function
modQuiz.steps.push(modQuizStep1)

modQuizStep2 = new SequenceStep
modQuizStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
modQuizStep2.action = function()
    nitroApp("Rascal", "Great Job on the PopQuiz. Let's keep going. ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("http://5g.io/home")
    run("clear")
    
end function
modQuiz.steps.push(modQuizStep2)


//While Loop for modQuiz
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    quiz = modQuiz.isPerformed()
 if quiz == 1 then
  break
 end if
 
 wait(0.1)
end while

//////////////////////////////////////////////////////////////////////////
// This is the Radio frequency section http://5g.io/fcc/1 - 2
//
//////////////////////////////////////////////////////////////////////////
radDialog = new Sequence
radDialog.steps = []

radDialogStep1 = new SequenceStep
radDialogStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
radDialogStep1.action = function()
    
    nitroApp("Rascal", "{PlayerName} Go ahead and start our lesson of radio US Radio Frequency Allocations.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
end function
radDialog.steps.push(radDialogStep1)

radDialogStep2 = new SequenceStep
radDialogStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
radDialogStep2.action = function()
    browser("http://5g.io/fcc/1")
    run("clear")
    wait(0.7)
    nitroCaption(0)
end function
radDialog.steps.push(radDialogStep2)

raddialogStep3 = new SequenceStep
raddialogStep3.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/fcc/1" ])
raddialogStep3.action = function()
    nitroApp("Rascal", "This is a general break down of U.S Radio Frequency Allocations. This breaks down the EM Spectrum Radio Frequency Wave section and allocates to various uses.", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
radDialog.steps.push(raddialogStep3)

raddialogStep4 = new SequenceStep
raddialogStep4.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/fcc/2" ])
raddialogStep4.action = function()
    nitroApp("Rascal", "Here is a zoomed in portion of the spectrum from 4Ghz to 7Ghz.  ", "_", 1)
    wait(0.7)
    nitroCaption(0)
end function
radDialog.steps.push(raddialogStep4)


//While Loop for fcc Sequence
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
 radSeq = radDialog.isPerformed()
  
 if radSeq == 1 then
  break
 end if
 
 wait(0.1)
end while








//////////////////////////////////////////////////////////////////////////
// This is the Radio Frequency quiz http://5g.io/quiz/q6
//Answer D
//ends with returning back to http://5g.io/home
//////////////////////////////////////////////////////////////////////////
fccQuizDialog = new Sequence
fccQuizDialog.steps = []

fccQuizDialogStep1 = new SequenceStep
fccQuizDialogStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
fccQuizDialogStep1.action = function()
    nitroApp("Rascal", "Great Job {PlayerName}. Let's go ahead and test what we have learned.", "_", 1)
    wait(0.7)
    nitroCaption(0)
    browser("http://5g.io/quiz/q6")
    run("clear")
end function
fccQuizDialog.steps.push(fccQuizDialogStep1)


//While Loop for fccQuiz
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    Dialog = fccQuizDialog.isPerformed()
 if Dialog == 1 then
  break
 end if
 
 wait(0.1)
end while

fccQuiz = new Sequence
fccQuiz.steps = []

fccQuizStep1 = new SequenceStep
fccQuizStep1.commandWaiting = getCommandWaiting("q6", "", [ "D" ])
fccQuizStep1.action = function()
    nitroApp("Rascal", "Excellent Job ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
    
end function
fccQuiz.steps.push(fccQuizStep1)

fccQuizStep2 = new SequenceStep
fccQuizStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
fccQuizStep2.action = function()
    nitroApp("Rascal", "Great Job on the PopQuiz. Let's see what else Mr. Shadow has for us. ", "_", 1)
    wait(0.7)
    browser("http://5g.io/home")
    run("clear")
    nitroCaption(1)
        
end function
fccQuiz.steps.push(fccQuizStep2)


//While Loop for fccQuiz
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    quiz = fccQuiz.isPerformed()
 if quiz == 1 then
  break
 end if
 
 wait(0.1)
end while



//////////////////////////////////////////////////////////////////////////
//This is the Map search section. http://5g.io/shadow/map
//////////////////////////////////////////////////////////////////////////

shadowMap = new Sequence
shadowMap.steps = []

shadowMapStep1 = new SequenceStep
shadowMapStep1.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/home" ])
shadowMapStep1.action = function()
    nitroApp("Rascal", "Hmm, this is odd. It appears that shadow provided a map for us. Maybe, it will help lead us to them.", "_", 1)
    wait(0.7)
    nitroCaption(1)
    run("kill 'web browser'")
    run("clear")
    
end function
shadowMap.steps.push(shadowMapStep1)

shadowMapStep2 = new SequenceStep
shadowMapStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
shadowMapStep2.action = function()
    nitroApp("Rascal", "I'll go ahead and pull it up. ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    browser("http://5g.io/shadow/map")
    run("clear")
    
end function
shadowMap.steps.push(shadowMapStep2)

shadowMapStep3 = new SequenceStep
shadowMapStep3.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/shadow/map" ])
shadowMapStep3.action = function()
    nitroApp("Rascal", "Look at those grid labels. I wonder if there was something in his message. ", "_", 1)
    wait(0.7)
    nitroCaption(1)
    
end function
shadowMap.steps.push(shadowMapStep3)

shadowMapStep4 = new SequenceStep
shadowMapStep4.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
shadowMapStep4.action = function()
    run("notes")
    nitroApp("Rascal", "There has to be something in our notes about the Frequency and Amplitudes that we had matched.  ", "_", 1)
    nitroCaption(0)
        
end function
shadowMap.steps.push(shadowMapStep4)

//--Moving this to it's own step
//shadowMapStepfail = new SequenceStep
//shadowMapStepfail.commandWaiting = getCommandWaiting("fail", "", [ "yes" ])
//shadowMapStepfail.action = function()
//    fail_mission()
        
//end function
//shadowMap.steps.push(shadowMapStepfail)

shadowMapStep5 = new SequenceStep
shadowMapStep5.commandWaiting = getCommandWaiting("webbrowser_page", "", [ "/www/shadow/location/1155" ])
shadowMapStep5.action = function()
    
    nitroApp("Rascal", "Oh no. We found his location. But it would seem they left in a hurry. I'm sure they we pop up again. They know how to reach us.  ", "_", 1)
    wait(0.7)
    nitroCaption(1)
        
end function
shadowMap.steps.push(shadowMapStep5)


shadowMapFail = new Sequence
shadowMapFail.steps = []

//--Let's see if making this it's own sequence step will help trigger the fail_mission function
shadowMapStepfail = new SequenceStep
shadowMapStepfail.commandWaiting = getCommandWaiting("fail", "", [ "yes" ])
shadowMapStepfail.action = function()
    fail_mission()
        
end function
shadowMapFail.steps.push(shadowMapStepfail)


//While Loop for ShadowMap
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
    mapTime = shadowMap.isPerformed()
    mapFail = shadowMapFail.isPerformed()
    
 if mapTime == 1 then
  break
 end if
 
 wait(0.1)
end while










































































//This is the nextSequence code block
nextSequence = new Sequence
nextSequence.steps = []

nextSequenceStep1 = new SequenceStep
nextSequenceStep1.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
nextSequenceStep1.action = function()
    nitroApp("Rascal", "TEST3", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
nextSequence.steps.push(nextSequenceStep1)

nextSequenceStep2 = new SequenceStep
nextSequenceStep2.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
nextSequenceStep2.action = function()
    nitroApp("Rascal", "TEST4", "_", 1)
    wait(0.7)
    nitroCaption(1)
end function
nextSequence.steps.push(nextSequenceStep2)



//While Loop for Sequence
//The loop continues while the sequence progresses. The loop stops upon conclusion of sequence when .isperformed() results in 1.
while true
 sequence = nextSequence.isPerformed()
  
 if sequence == 1 then
  break
 end if
 
 wait(0.1)
end while


//
//
//iterating script called from the webpage
//numberClicks = browser_get_fake_cookie_value("mapClicks")
//
//numberClicks = numberClicks + 1
//
//browser_set_fake_cookie_value("mapClicks",numberClicks)
//
//if numberClicks >= 3 then
//
//browser_dispatch_successful_command("fail","", yes")
// 
//
//In main miniscript have the wait command: as a separate sequence to fire within the while loop.
//commandwaiting("fail", "", "yes") // sequence failPending 
//Inside the while loop 
//while true
//
//if failPending.isPerformed() == 1 then
//		fail_mission()
//		break
//end if
//
//end while