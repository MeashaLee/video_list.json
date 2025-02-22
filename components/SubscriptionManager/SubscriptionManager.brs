function init()
    m.titleLabel = m.top.findNode("titleLabel")
    m.freeTierButton = m.top.findNode("freeTierButton")
    m.subscribedTierButton = m.top.findNode("subscribedTierButton")
    m.exclusiveTierButton = m.top.findNode("exclusiveTierButton")
    m.payPerViewButton = m.top.findNode("payPerViewButton")

    m.freeTierButton.observeField("buttonSelected", "onFreeTierButtonSelected")
    m.subscribedTierButton.observeField("buttonSelected", "onSubscribedTierButtonSelected")
    m.exclusiveTierButton.observeField("buttonSelected", "onExclusiveTierButtonSelected")
    m.payPerViewButton.observeField("buttonSelected", "onPayPerViewButtonSelected")
end function

function onFreeTierButtonSelected()
    ' Logic for free tier
end function

function onSubscribedTierButtonSelected()
    ' Logic for subscribed tier
    paymentIntent = createPaymentIntent(999, "usd") ' Example amount and currency
    ' Handle payment intent client secret (e.g., save it, display a confirmation)
    ' Example: Print the client secret to the console
    print paymentIntent.clientSecret
end function

function onExclusiveTierButtonSelected()
    ' Logic for exclusive tier
    paymentIntent = createPaymentIntent(1999, "usd") ' Example amount and currency
    ' Handle payment intent client secret (e.g., save it, display a confirmation)
    ' Example: Print the client secret to the console
    print paymentIntent.clientSecret
end function

function onPayPerViewButtonSelected()
    ' Logic for pay-per-view
    paymentIntent = createPaymentIntent(499, "usd") ' Example amount and currency
    ' Handle payment intent client secret (e.g., save it, display a confirmation)
    ' Example: Print the client secret to the console
    print paymentIntent.clientSecret
end function
