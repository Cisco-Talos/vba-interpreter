Attribute VB_Name = "Module1"
Sub Main()
    On Error GoTo ErrHandler
    
    Dim i As Integer
    Dim B As Byte
    Dim yn As Boolean
    Dim s As String
    Dim l As Long
    Dim sng As Single
    Dim D As Double
    Dim dt As Date
    dt = Now
    Dim C As Currency
    Dim v As Variant
    Dim e As Variant  ' empty
    
    Debug.Print "-------------- not ----------------"
    i = 2
    Debug.Print Not i
    
    i = 0
    Debug.Print Not i
    
    i = &HFF00
    Debug.Print Not i
    
    B = 0
    Debug.Print Not B
    
    B = 222
    Debug.Print Not B
    
    sng = 2.5
    Debug.Print Not sng
    
    D = 3.5
    Debug.Print Not D
    
    Debug.Print Not dt
    
    C = 22.333
    Debug.Print Not C
    
    v = B
    Debug.Print Not v
    
    Debug.Print Not e
    
    yn = True
    Debug.Print Not yn
    
    yn = False
    Debug.Print Not yn
   
    Debug.Print "-------------- and ----------------"
    Debug.Print True And True
    Debug.Print True And False
    Debug.Print False And True
    Debug.Print False And False
    
    Debug.Print B And &HF
    
    Debug.Print C And &HF0
    
    D = 22.5
    Debug.Print D And &HF0
    
    Debug.Print "125.5" And &HF0
    
    Debug.Print "------------- or ----------------"
    Debug.Print True Or True
    Debug.Print True Or False
    Debug.Print False Or True
    Debug.Print False Or False
    
    Debug.Print B Or &HF
    
    Debug.Print C Or &HF0
    
    D = 22.5
    Debug.Print D Or &HF0
    
    Debug.Print "125.5" Or &HF0
    
    Debug.Print "------------- xor ----------------"
    Debug.Print True Xor True
    Debug.Print True Xor False
    Debug.Print False Xor True
    Debug.Print False Xor False
    
    Debug.Print B Xor &HF
    
    Debug.Print C Xor &HF0
    
    D = 22.5
    Debug.Print D Xor &HF0
    
    Debug.Print "125.5" Xor &HF0
    
    Debug.Print "------------- imp ----------------"
    Debug.Print True Imp True
    Debug.Print True Imp False
    Debug.Print False Imp True
    Debug.Print False Imp False
    
    Debug.Print B Imp &HF
    
    Debug.Print C Imp &HF0
    
    D = 22.5
    Debug.Print D Imp &HF0
    
    Debug.Print "125.5" Imp &HF0
        
    Debug.Print "------------- eqv ----------------"
    Debug.Print True Eqv True
    Debug.Print True Eqv False
    Debug.Print False Eqv True
    Debug.Print False Eqv False
    
    Debug.Print B Eqv &HF
    
    Debug.Print C Eqv &HF0
    
    D = 22.5
    Debug.Print D Eqv &HF0
    
    Debug.Print "125.5" Eqv &HF0
    
    Debug.Print "----------- MSDN Or -------------"
    MsdnOr
    
    
    Debug.Print "----------- MSDN And -------------"
    MsdnAnd
    
    Debug.Print "----------- MSDN Xor -------------"
    MsdnAnd
    
    Debug.Print "----------- MSDN Imp -------------"
    MsdnImp
    
    Debug.Print "----------- MSDN Eqv -------------"
    MsdnEqv
    
    
    Debug.Print "--------------- null and --------- "
    Debug.Print Null And True
    Debug.Print Null And False
    Debug.Print False And Null
    Debug.Print True And Null
    
    Debug.Print "--------------- null or --------- "
    Debug.Print Null Or True
    Debug.Print Null Or False
    Debug.Print False Or Null
    Debug.Print True Or Null
    
    Debug.Print "--------------- null imp --------- "
    Debug.Print Null Imp True
    Debug.Print Null Imp False
    Debug.Print False Imp Null
    Debug.Print True Imp Null
    
    Exit Sub
ErrHandler:
    Debug.Print Err.Source & ":" & Err.Description
    Resume Next
End Sub

Sub MsdnOr()
    Dim A, B, C, D, MyCheck
    A = 10: B = 8: C = 6: D = Null   ' ���ñ�����ֵ��
    MyCheck = A > B Or B > C   ' ���� True��
    Debug.Print MyCheck
    MyCheck = B > A Or B > C   ' ���� True��
    Debug.Print MyCheck
    MyCheck = A > B Or B > D   ' ���� True��
    Debug.Print MyCheck
    MyCheck = B > D Or B > A   ' ���� Null��
    Debug.Print MyCheck
    MyCheck = A Or B   ' ���� 10��λ�ȽϵĽ������
    Debug.Print MyCheck
End Sub

Sub MsdnAnd()
    Dim A, B, C, D, MyCheck
    A = 10: B = 8: C = 6: D = Null   ' ���ñ�����ֵ��
    MyCheck = A > B And B > C   ' ���� True��
    Debug.Print MyCheck
    MyCheck = B > A And B > C   ' ���� False��
    Debug.Print MyCheck
    MyCheck = A > B And B > D   ' ���� Null��
    Debug.Print MyCheck
    MyCheck = A And B   ' ���� 8��λ�ȽϵĽ������
    Debug.Print MyCheck
End Sub

Sub MsdnXor()
    Dim A, B, C, D, MyCheck
    A = 10: B = 8: C = 6: D = Null   ' ���ñ�����ֵ��
    MyCheck = A > B Xor B > C   ' ���� False��
    Debug.Print MyCheck
    MyCheck = B > A Xor B > C   ' ���� True��
    Debug.Print MyCheck
    MyCheck = B > A Xor C > B   ' ���� False��
    Debug.Print MyCheck
    MyCheck = B > D Xor A > B   ' ���� Null��
    Debug.Print MyCheck
    MyCheck = A Xor B   ' ���� 2��λ�ȽϵĽ������
    Debug.Print MyCheck
End Sub

Sub MsdnImp()
    Dim A, B, C, D, MyCheck
    A = 10: B = 8: C = 6: D = Null   ' ���ñ�����ֵ��
    MyCheck = A > B Imp B > C   ' ���� True��
    Debug.Print MyCheck
    MyCheck = A > B Imp C > B   ' ���� False��
    Debug.Print MyCheck
    MyCheck = B > A Imp C > B   ' ���� True��
    Debug.Print MyCheck
    MyCheck = B > A Imp C > D   ' ���� True��
    Debug.Print MyCheck
    MyCheck = C > D Imp B > A   ' ���� Null��
    Debug.Print MyCheck
    MyCheck = B Imp A   ' ���� -1��λ�ȽϵĽ������
    Debug.Print MyCheck
End Sub

Sub MsdnEqv()
    Dim A, B, C, D, MyCheck
    A = 10: B = 8: C = 6: D = Null   ' ���ñ�����ֵ��
    MyCheck = A > B Eqv B > C   ' ���� True��
    Debug.Print MyCheck
    MyCheck = B > A Eqv B > C   ' ���� False��
    Debug.Print MyCheck
    MyCheck = A > B Eqv B > D   ' ���� Null��
    Debug.Print MyCheck
    MyCheck = A Eqv B   ' ���� -3��λ�ȽϵĽ������
    Debug.Print MyCheck
End Sub
