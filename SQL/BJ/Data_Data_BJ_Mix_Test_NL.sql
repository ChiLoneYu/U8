INSERT INTO mes_comm_mainacc (connstr,accid,caddress,cdbpwd,cdatabase) 
VALUES ('Provider=SQLOLEDB.1;Password=12345679a;Persist Security Info=True;User ID=sa;Initial Catalog=UFDATA_999_2014;Data Source=u8v13;Current Language=Simplified Chinese;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=U8V13;Use Encryption for Data=False;Tag with column collation when possible=False',
 '1000000001','U8V13','12345679a','UFDATA_999_2014')


----����Ʒ��ⵥ
--��������  ����
INSERT INTO MES_CQ_rdrecord10 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,1,'000001','put005','1','05')

INSERT INTO MES_CQ_rdrecords10 (id,opertype,MoCode,cInvCode,iquantity)
VALUES (1,1,'000001','cp001',100)
 

 
--��������  ɾ�� 
INSERT INTO MES_CQ_rdrecord10 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000013','put005','1','05')

INSERT INTO MES_CQ_rdrecords10 (id,opertype,MoCode,cInvCode,iquantity)
VALUES ( @@IDENTITY,1,'0000000014','cp001',100)
GO

INSERT INTO MES_CQ_rdrecord10 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000014','put005','1','05')

INSERT INTO MES_CQ_rdrecords10 (id,opertype,MoCode,cInvCode,iquantity)
VALUES ( @@IDENTITY,1,'0000000014','cp001',100)
GO
 
----����Ʒ��ⵥ(����)
--��������  ����
DECLARE @ID AS NVARCHAR(36)   
DECLARE @DID AS NVARCHAR(36)  
SET @ID = NEWID()
INSERT INTO MES_CQ_rdrecord10Ret (id,operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (@ID,0,0,'000001','put005','1','05')
SET @DID = NEWID()
INSERT INTO MES_CQ_rdrecords10Ret (id,did,opertype,MoCode,cInvCode,iquantity)
VALUES (@ID,@DID,0,'0000000010','cp001',-100)
 
GO
 
--��������  ɾ�� 
DECLARE @ID AS NVARCHAR(36)   
DECLARE @DID AS NVARCHAR(36)  
SET @ID = NEWID()
INSERT INTO MES_CQ_rdrecord10Ret (id,operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (@ID,0,2,'0000000006','put005','1','05')

INSERT INTO MES_CQ_rdrecords10Ret (id,opertype,MoCode,cInvCode,iquantity)
VALUES ( @@IDENTITY,1,'0000000014','cp001',100)
GO

INSERT INTO MES_CQ_rdrecord10Ret (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000014','put005','1','05')

INSERT INTO MES_CQ_rdrecords10Ret (id,opertype,MoCode,cInvCode,iquantity)
VALUES ( @@IDENTITY,1,'0000000014','cp001',100)
GO
 


----���۷�����
 
--��������  ����
DECLARE @ID AS INT
INSERT INTO MES_CQ_DispatchList (operflag,opertype,cRdCode,cSoCode)
VALUES (0,1,'01','00000003')

SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_DispatchLists (id,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,1,'1000000003','put005','cp001',100)
INSERT INTO MES_CQ_DispatchLists (id,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,1,'1000000004','put005','cp001',40)
 
GO

--����  
update MES_CQ_DispatchList set operflag = 0,opertype=0, finishTime = null,cerrordesc = null
update MES_CQ_DispatchLists  set opertype=0 
 
--��������  ɾ�� 
INSERT INTO MES_CQ_rdrecord10 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000013','put005','1','05')

INSERT INTO MES_CQ_rdrecords10 (id,opertype,MoCode,cInvCode,iquantity)
VALUES ( @@IDENTITY,1,'0000000014','cp001',100)
GO

INSERT INTO MES_CQ_rdrecord10 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000014','put005','1','05')

INSERT INTO MES_CQ_rdrecords10 (id,opertype,MoCode,cInvCode,iquantity)
VALUES ( @@IDENTITY,1,'0000000014','cp001',100)
GO
  
--ɾ��
update MES_CQ_DispatchList set operflag = 0,opertype=2, finishTime = null,cerrordesc = null
update MES_CQ_DispatchLists  set opertype=0 
  


 --��������  �޸�
DECLARE @ID AS INT
INSERT INTO MES_CQ_DispatchList (operflag,opertype,cRdCode,cdlcode,cSoCode)
VALUES (0,1,'01','0000000004','00000003')

SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_DispatchLists (id,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,1,'1000000003','put005','cp001',100)
INSERT INTO MES_CQ_DispatchLists (id,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,1,'1000000004','put005','cp001',20)
 
GO

update MES_CQ_DispatchList set operflag = 0,opertype=1, finishTime = null,cerrordesc = null
update MES_CQ_DispatchLists  set opertype=0 



----�����˻���
 
--��������  ���� 
DECLARE @ID AS NVARCHAR(36)   
DECLARE @DID AS NVARCHAR(36)  
SET @ID = NEWID()
INSERT INTO MES_CQ_DispatchListRet (id,operflag,opertype,cRdCode,cSoCode)
VALUES (@ID,0,1,'01','00000003')

SET @DID = NEWID()
INSERT INTO MES_CQ_DispatchListRets (id,did,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,@DID,1,'1000000003','put005','cp001',100)
SET @DID = NEWID()
INSERT INTO MES_CQ_DispatchListRets (id,did,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,@DID,1,'1000000004','put005','cp001',40)
GO

--����  
update MES_CQ_DispatchListRet set operflag = 0,opertype=0, finishTime = null,cerrordesc = null
update MES_CQ_DispatchListRets  set opertype=0 
 
--��������  ɾ��  
--ɾ��
update MES_CQ_DispatchListRet set operflag = 0,opertype=2, finishTime = null,cerrordesc = null
update MES_CQ_DispatchLists  set opertype=0 
  


 --��������  �޸�
DECLARE @ID AS INT
INSERT INTO MES_CQ_DispatchList (operflag,opertype,cRdCode,cdlcode,cSoCode)
VALUES (0,1,'01','0000000004','00000003')

SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_DispatchLists (id,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,1,'1000000003','put005','cp001',100)
INSERT INTO MES_CQ_DispatchLists (id,opertype,isosid,cWhCode,cInvCode,iquantity)
VALUES (@ID,1,'1000000004','put005','cp001',20)
 
GO

update MES_CQ_DispatchListRet set operflag = 0,opertype=1, finishTime = null,cerrordesc = null
update MES_CQ_DispatchListRets  set opertype=0 
   


----�ɹ���ⵥ
--��������  ����  

DECLARE @ID AS nvarchar(36)
DECLARE @DID AS nvarchar(36)
SET @ID = NEWID()
INSERT INTO MES_CQ_rdrecord01 (ID,operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode,cVenCode,cPersonCode)
VALUES (@ID,0,0,'000001','05','1','0401','01002','00043')
 
SET @DID = NEWID()
INSERT INTO MES_CQ_rdrecords01 (id,DID,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,@DID,0,'0000000005','1000000009','09004',100) 
SET @DID = NEWID()
INSERT INTO MES_CQ_rdrecords01 (id,DID,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,@DID,0,'0000000005','1000000010','1001',10)
 
GO
 
 
 

----�ɹ��˻���   �ɹ���ⵥ(����)
--��������  ����   
DECLARE @ID AS nvarchar(36) 
DECLARE @DID AS nvarchar(36)
set @ID = NEWID()
INSERT INTO MES_CQ_rdrecord01Ret (id,operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode,cVenCode,cPersonCode)
VALUES (@ID,0,0,'00000001','put005','1','501','XYCG09120001','ZZM')

SELECT @DID = NEWID()
INSERT INTO MES_CQ_rdrecords01Ret (id,did,opertype,cPoCode,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,@DID,0,null,'00000001','1000000005','CL001',-10)
SELECT @DID = NEWID()
INSERT INTO MES_CQ_rdrecords01Ret (id,did,opertype,cPoCode,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,@DID,0,null,'00000001','1000000006','CL002',-10)
 
GO
 
 
 
--��������  ɾ�� 
DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord01 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode,cVenCode,cPersonCode)
VALUES (0,2,'0000000004','put005','1','501','XYCG09120001','ZZM')

SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords01 (id,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,0,'0000000001','1000000001','CP001',100)
INSERT INTO MES_CQ_rdrecords01 (id,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,0,'0000000001','1000000002','CP001',10)

GO



----�ɹ���ⵥ(����)   / �ɹ��˻���
--��������  ����  

DECLARE @ID AS nvarchar(36) 
DECLARE @DID AS nvarchar(36)
SET @ID = NEWID()
INSERT INTO MES_CQ_rdrecord01Ret (id,operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode,cVenCode,cPersonCode)
VALUES (@ID,0,0,'000001','put005','1','501','XYCG09120001','ZZM')
 
SET @DID = NEWID()
INSERT INTO MES_CQ_rdrecords01Ret (id,did,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,@DID,0,'0000000001','1000000001','CP001',100)
INSERT INTO MES_CQ_rdrecords01Ret (id,did,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,@DID,0,'0000000001','1000000002','CP001',10)
 
GO
 
--��������  ɾ�� 
DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord01 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode,cVenCode,cPersonCode)
VALUES (0,2,'0000000004','put005','1','501','XYCG09120001','ZZM')

SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords01 (id,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,0,'0000000001','1000000001','CP001',100)
INSERT INTO MES_CQ_rdrecords01 (id,opertype,dhcode,dhid,cInvCode,iquantity)
VALUES (@ID,0,'0000000001','1000000002','CP001',10)

GO



----������ⵥ
--��������  ����  
 
DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord08 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,0,'000001','put005','1','501')
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords08 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001')
INSERT INTO MES_CQ_rdrecords08 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',10,'XYCG09120001')
 
GO
 
--��������  ɾ��  


DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord08 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000002','put005','1','501')
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords08 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001')
INSERT INTO MES_CQ_rdrecords08 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',10,'XYCG09120001')

GO




----���ϳ��ⵥ
--��������  ����   
DECLARE @ID AS NVARCHAR(36)
SELECT @ID = NEWID()
INSERT INTO MES_CQ_rdrecord11 (id,operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (@ID,0,0,'000001','PT001','1','501') 

DECLARE @DID AS NVARCHAR(36)
SELECT @DID = NEWID()
INSERT INTO MES_CQ_rdrecords11 (id,did,opertype,MoCode,cPInvCode,cInvCode,iquantity,cVenCode)
VALUES (@ID,@DID,0,'0000000002','CP001','BCP001',100,'XYCG09120001') 
GO

--��������  ɾ��    
DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord11 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000004','PT001','1','501') 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords11 (id,opertype,MoCode,cPInvCode,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'0000000002','CP001','BCP001',100,'XYCG09120001') 
GO



----�������ⵥ
--��������  ����  
 
DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord09 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,0,'000001','put005','1','501')
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords09 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001')
INSERT INTO MES_CQ_rdrecords09 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',10,'XYCG09120001')
 
GO
 
--��������  ɾ��  


DECLARE @ID AS INT
INSERT INTO MES_CQ_rdrecord09 (operflag,opertype,crdcode,cWhCode,cRdStyleCode,cDepCode)
VALUES (0,2,'0000000001','put005','1','501')
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_rdrecords09 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001')
INSERT INTO MES_CQ_rdrecords09 (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',10,'XYCG09120001')

GO

----������
--��������  ����  
DECLARE @ID AS INT 
DECLARE @DID AS INT 
INSERT INTO MES_CQ_TransVouch (operflag,opertype,cTVCode,dTVDate,cOWhCode,cIWhCode,cIRdCode,cORdCode,
cODepCode,cIDepCode,cPersonCode
)
VALUES (0,0,'0000000001','2015-07-01 00:00:00.000','PT001','PT004','','','501','502','zzm')
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_TransVouchs (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001') 
 
GO
 
--��������  ɾ��  
DECLARE @ID AS INT
INSERT INTO MES_CQ_TransVouch (operflag,opertype,cTVCode,dTVDate,cOWhCode,cIWhCode,cIRdCode,cORdCode
)
VALUES (0,2,'0000000002','2015-07-01 00:00:00.000','PT001','PT004',null,null)
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_TransVouchs (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001') 
 
GO


----�̵㵥 delete from MES_CQ_CheckVouchs
--��������  ����  
DECLARE @ID AS nvarchar(36)
DECLARE @DID AS NVARCHAR(36)
SET @ID = NEWID()

INSERT INTO MES_CQ_CheckVouch (id,operflag,opertype,cCVCode,dCVDate,dACDate,
cDepCode,cPersonCode,cWhCode
)
VALUES (@ID,0,0,'0000000001','2015-07-01 00:00:00.000','2015-07-01 00:00:00.000',
'501','zzm','put005') 
SET @DID = NEWID()
INSERT INTO MES_CQ_CheckVouchs (id,did,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,@DID,0,'NoFree1',100,'XYCG09120001') 
 
GO
 
--��������  ɾ��  
DECLARE @ID AS INT
INSERT INTO MES_CQ_CheckVouch (operflag,opertype,cCVCode,dCVDate,dACDate,
cDepCode,cPersonCode,cWhCode
)
VALUES (0,2,'0000000001','2015-07-01 00:00:00.000','2015-07-01 00:00:00.000',
'501','zzm','put005')
 
SELECT @ID = @@IDENTITY
INSERT INTO MES_CQ_CheckVouchs (id,opertype,cInvCode,iquantity,cVenCode)
VALUES (@ID,0,'NoFree1',100,'XYCG09120001') 
 
GO
 