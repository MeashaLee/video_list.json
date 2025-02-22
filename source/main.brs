' ********** Copyright 2025 EbonyS Network. All Rights Reserved. **********

' Channel entry point
sub Main()
    ShowChannelRSGScreen()
end sub

sub ShowChannelRSGScreen()
    ' The roSGScreen object is a SceneGraph canvas that displays the contents of a Scene node instance
    screen = CreateObject("roSGScreen")
    
    ' Create a message port for events
    m.port = CreateObject("roMessagePort")
    screen.SetMessagePort(m.port)
    
    ' Create and display the "MainScene"
    scene = screen.CreateScene("MainScene")
    screen.Show()  ' Init method in MainScene.brs is invoked

    ' Event loop to listen for events from the screen
    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.IsScreenClosed() then return
        end if
    end while
end sub
