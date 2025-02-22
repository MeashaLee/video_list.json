sub Main()
    ' Ensure necessary files are included
    RunUserInterface()
end sub

function RunUserInterface()
    m.global = CreateObject("roAssociativeArray")
    m.global.mainScene = CreateObject("roSGScreen")
    m.global.mainScene.Show()

    scene = m.global.mainScene.CreateScene("MainScene")
    m.global.mainScene.SetContentCallback("pkg:/source/content.brs")

    port = CreateObject("roMessagePort")
    m.global.mainScene.SetMessagePort(port)
end function
