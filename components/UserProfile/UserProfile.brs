function init()
    m.titleLabel = m.top.findNode("titleLabel")
    m.profileNameField = m.top.findNode("profileNameField")
    m.saveProfileButton = m.top.findNode("saveProfileButton")

    m.saveProfileButton.observeField("buttonSelected", "onSaveProfileButtonSelected")
end function

function onSaveProfileButtonSelected()
    ' Logic for saving user profile
    profileName = m.profileNameField.text
    ' Save the profile name or other profile information
end function
