Attribute VB_Name = "Module1"
Sub Main()
    On Error GoTo ErrHandler
    
    Dim a As Variant
    Dim col As New Collection
    Set a = col
    col.Add "Tom", "no1"
    col.Add "Jack", "no1"   '�ùؼ����Ѿ���ü��ϵ�һ��Ԫ�������
    col.Add "Jack", "no2"
    col.Add "Tim", , "no1"
    col.Add "Mary", "22"
    
    Debug.Print col.Item(3)
    Debug.Print col("no1")
    Debug.Print a("no1")
    Debug.Print col!no2
    Debug.Print a!no2
    Debug.Print col(3)
    Debug.Print a(3)

    Debug.Print col!notExist    '��Ч�Ĺ��̵��û����
    Debug.Print col(22)         '�±�Խ��
    Debug.Print col("22")
    Debug.Print col("1")        '��Ч�Ĺ��̵��û����

    col.Remove 22               '�±�Խ��
    col.Remove -1               '�±�Խ��
    col.Remove "Jack"           '��Ч�Ĺ��̵��û����
 
    For Each p In col
        Debug.Print p
    Next
    
    For Each p In a
        Debug.Print p
    Next
    Exit Sub
    
ErrHandler:
    Debug.Print Err.Source & " " & Err.Number & " " & Err.Description
    Resume Next
End Sub
