$var=3


Do
   MsgBox(0,"Hello","Hello!")
   $var=$var-1
Until $var=1

While $var<>1
   MsgBox(0,"Hello","Hello")
   $var=$var-1
WEnd

If $var=1 Then
   MsgBox(0,"Hello","Hello Sir!")
EndIf

For $var=5 to 1 Step -1
   MsgBox(0,"Count Down!",$var)

Next

MsgBox(0,"","BlastLoop")