Attribute VB_Name = "Module1"
Sub Main()
    On Error GoTo ErrHandler
    
    Dim MyArray() As Integer   '������̬���顣
	Redim MyArray(5)   '���� 5 ��Ԫ�ء�
	For I = 1 To 5   'ѭ�� 5 �Ρ�
	   MyArray(I) = I   '��ʼ�����顣
	Next I
	
	Debug.Trace MyArray
	
	Redim MyArray(10)   '��С�ض�Ϊ 10 ��Ԫ�ء�
	For I = 1 To 10   'ѭ�� 10 �Ρ�
	   MyArray(I) = I   '��ʼ�����顣
	Next I
	
	Debug.Trace MyArray
	
	Redim Preserve MyArray(15)   '��С�ض�Ϊ 15 ��Ԫ�ء�
	Debug.Trace MyArray    
   
    Exit Sub
ErrHandler:
    Debug.Print Err.Source & ":" & Err.Description
    Resume Next
End Sub
