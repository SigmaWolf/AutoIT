TCPStartup()

$TCPConnect=TCPConnect(@IPAddress1,403)

if $TCPConnect = -1 Then Exit

TCPSend($TCPConnect,"Hello")