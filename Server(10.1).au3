TCPStartup()

$TCPListen=TCPListen(@IPAddress1,403)

Do
$TCPAccept=TCPAccept($TCPListen)
until $TCPAccept <> -1

Do
$TCPReceive = TCPRecv($TCPAccept,1000000)
Until $TCPReceive <> ""

MsgBox(0,"Data received",$TCPReceive)