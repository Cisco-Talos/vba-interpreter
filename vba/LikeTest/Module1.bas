Attribute VB_Name = "Module1"
Sub Main()
    On Error GoTo ErrHandler
    
    Dim MyCheck
	MyCheck = "aBBBa" Like "a*a"   ' ���� True��
	Debug.Print MyCheck
	MyCheck = "F" Like "[A-Z]"   ' ���� True��
	Debug.Print MyCheck
	MyCheck = "F" Like "[!A-Z]"   ' ���� False��
	Debug.Print MyCheck
	MyCheck = "a2a" Like "a#a"   ' ���� True��
	Debug.Print MyCheck
	MyCheck = "aM5b" Like "a[L-P]#[!c-e]"   ' ���� True��
	Debug.Print MyCheck
	MyCheck = "BAT123khg" Like "B?T*"   ' ���� True��
	Debug.Print MyCheck
	MyCheck = "CAT123khg" Like "B?T*"   ' ���� False��
    Debug.Print MyCheck
    Exit Sub
ErrHandler:
    Debug.Print Err.Source & ":" & Err.Description
    Resume Next
End Sub
