Attribute VB_Name = "Module1"
Sub Main()
    Dim op As MathOp
    Set op = New MathOp
    'op.add 1, 2
        
    'Call op.add(3, 4)
    
    'op.Self.add 2, 3
    
    Dim a
    Set a = op.Self
    'a.add 3, 3
    
'    Call a.Self.add(5, 6)
'    Call a.This(2).add(4, 6)
    
    ' vb �Ĵ��㣺����޲κ����������飬() �������������黹�����ڲ�����vb ���޷�����
    ' ����Ĳ����Ż���Ч�����Ը�ֵ�� ���������ܸ㶨 :D
    ' Call op.arr(1).add(2, 3)
    
    ' ���Ǽ�ʹ�вκ�����������Ҳ�޷� f(arg)()  �����﷨����
    'Call op.arr(2)(1).add(2, 3)   ' ���������ܸ㶨 :D
    
    'Dim j
    'j = op.arr(2)
    'Call op.arr(2)(1).add(2, 3)
    
    
    With op
        .add 20, 30
        With .Self
            Call .add(30, 50)
        End With
    End With
    
End Sub
