Attribute VB_Name = "Module1"
Sub Main()
    On Error GoTo ErrHandler
    
   	Dim MyResult, Var1, Var2
	MyResult = (45 < 35)   ' ���� False��
	Debug.Trace MyResult
	MyResult = (45 = 45)   ' ���� True��
	Debug.Trace MyResult
	MyResult = (4 <> 3)   ' ���� True��
	Debug.Trace MyResult
	MyResult = ("5" > "4")   ' ���� True��
	Debug.Trace MyResult
	
	Var1 = "5": Var2 = 4   ' ���ñ�����ֵ��
	MyResult = (Var1 > Var2)   ' ���� True��
	Debug.Trace MyResult
	
	Var1 = 5: Var2 = Empty
	MyResult = (Var1 > Var2)   ' ���� True��
	Debug.Trace MyResult
	
	Var1 = 0: Var2 = Empty
	MyResult = (Var1 = Var2)   ' ���� True��
	Debug.Trace MyResult
   
    Exit Sub
ErrHandler:
    Debug.Print Err.Source & ":" & Err.Description
    Resume Next
End Sub
