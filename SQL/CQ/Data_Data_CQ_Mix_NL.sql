/*======================= table data: MES_CQ_DLLReflect ========================*/
print 'dbo.MES_CQ_DLLReflect data...' 
----������־
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='logBLL')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'SynergismLog','logBLL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.BLL')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='logsBLL')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'SynergisnLogDT','logsBLL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.BLL')
END

IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='logDAL')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'SynergismLog','logDAL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.DAL')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='logsDAL')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'SynergisnLogDT','logsDAL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.DAL')
END

----��־��ѯ
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='showBLL')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'ShowLog','showBLL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.BLL')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='showsBLL')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'ShowLogDt','showsBLL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.BLL')
END

IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='showDAL')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'ShowLog','showDAL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.DAL')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND ClassType='showsDAL')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'ShowLogDt','showsDAL','','U8.Interface.Bus.ApiService.Voucher.Factory.XT','U8.Interface.Bus.ApiService.Voucher.Factory.XT.DAL')
END


----����Ʒ��ⵥ  
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND cvouchertype = '0411' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'RdRecord10','op','0411','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0411' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0411','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
----����Ʒ��ⵥ(����)
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0411_Ret' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'RdRecordRet10','op','0411_Ret','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0411_Ret' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0411_Ret','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
----���۷�����
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '01' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'Consignment','op','01','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '01' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','01','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
----�����˻���   
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '03' AND ClassType='op' AND TaskType =0)  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'DispatchList','op','03','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END    
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '03' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','03','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
----�ɹ�������  /�ɹ��˻���
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '26' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'PU_ArrivalVouch','op','26','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '26' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','26','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END 
----�ɹ���ⵥ
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '24' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'PuStoreIn','op','24','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '24' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','24','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END 
----�ɹ���ⵥ(����)
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '24_Ret' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'Rdrecord01Ret','op','24_Ret','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '24_Ret' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','24_Ret','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END 
----������ⵥ
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0301' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'RdRecord08','op','0301','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0301' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0301','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
----���ϳ��ⵥ
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0412' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'RdRecord11','op','0412','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0412' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0412','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
----�������ⵥ
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0302' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'RdRecord09','op','0302','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0302' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect (TaskType, ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0302','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
 
----������
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0304' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'TransVouch','op','0304','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0304' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0304','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END
 
----�̵㵥
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0307' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'CheckVouch','op','0307','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = '0307' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','0307','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END

----��������
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = 'MO21' AND ClassType='op')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'Mom_order','op','MO21','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ','U8.Interface.Bus.ApiService.Voucher.OP.Factory.CQ')
END
IF NOT EXISTS (SELECT 1 FROM MES_Comm_DLLReflect WHERE TaskType =0 AND  cvouchertype = 'MO21' AND ClassType='data')  
BEGIN
insert into MES_Comm_DLLReflect ( TaskType,ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
  (0,'APIData','data','MO21','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
END


----��װ��
--IF NOT EXISTS (SELECT 1 FROM MES_CQ_DLLReflect WHERE cvouchertype = '0308' AND ClassType='op')  
--BEGIN
--insert into MES_CQ_DLLReflect ( ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
--  ('AssemVouch','op','0308','U8.Interface.Bus.ApiService.Voucher','U8.Interface.Bus.ApiService.Voucher.CQ')
--END
--IF NOT EXISTS (SELECT 1 FROM MES_CQ_DLLReflect WHERE cvouchertype = '0308' AND ClassType='data')  
--BEGIN
--insert into MES_CQ_DLLReflect ( ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
--  ('APIData','data','0308','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
--END

------��ж��
--IF NOT EXISTS (SELECT 1 FROM MES_CQ_DLLReflect WHERE cvouchertype = '0309' AND ClassType='op')  
--BEGIN
--insert into MES_CQ_DLLReflect ( ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
--  ('AssemVouch','op','0309','U8.Interface.Bus.ApiService.Voucher','U8.Interface.Bus.ApiService.Voucher.CQ')
--END
--IF NOT EXISTS (SELECT 1 FROM MES_CQ_DLLReflect WHERE cvouchertype = '0309' AND ClassType='data')  
--BEGIN
--insert into MES_CQ_DLLReflect ( ClassName,ClassType,cvouchertype,Dllpath,Namespace ) values 
--  ('APIData','data','0309','U8.Interface.Bus.ApiService','U8.Interface.Bus.ApiService.Model')
--END

GO


 
----  ������  ��ʼ  ----

/*======================= table data: MES_CQ_FUNCTION ========================*/
print 'dbo.MES_CQ_FUNCTION data...' 

if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '010') 
begin
insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
  (null,null,'���ݴ����ȡ������λ��Ϣ','010','GetComUnitCodeByInvCode',null,'select iChangRate,iGroupType ,i.cGroupCode ,i.cComUnitCode ,cAssComUnitCode ,cSAComUnitCode ,cPUComUnitCode ,cSTComUnitCode ,cCAComUnitCode 
 from inventory i left join  ComputationUnit c on i.cComUnitCode=c.cComunitCode  where i.cinvcode=''{0}''','1',null,'D')
end
--DELETE FROM MES_CQ_FUNCTIONS WHERE cfunid = '010'
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '010') 
begin
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','igrouptype','������λ�����',2,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','ccomunitcode','��������λ����',3,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','casscomunitcode','��������λ����',4,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','csacomunitcode','����Ĭ�ϼ�����λ����',5,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','cpucomunitcode','�ɹ�Ĭ�ϼ�����λ����',6,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','cstcomunitcode','���Ĭ�ϼ�����λ����',7,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','ccacomunitcode','�ɱ�Ĭ�ϼ�����λ����',8,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','cinvcode','�������',1,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('010','cgroupcode','������λ�����',9,'1','String')
end 
go

if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '016') 
begin
	insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
	  (null,'U8.Interface.Bus.Function.Acount','��������\����\˰�� ��ȡ�۸���ϵ','016','GetAccountByITaxRate','U8.Interface.Bus.Function',null,'2',null,null)
end  
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '016') 
begin
	--����  
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','iquantity','����',1,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','itaxunitprice','��˰����',2,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','itaxrate','˰��',3,'0','String')
	--����
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','itaxunitprice','��˰����',1,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','isum','ԭ�Ҽ�˰�ϼ�',2,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','imoney','ԭ����˰���',3,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','itax','ԭ��˰��',4,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('016','iprice','��˰����',5,'1','String')

end
go
if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '017') 
begin
	insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
	  (null,'U8.Interface.Bus.Function.Acount','����˰�ʻ�ȡ���ҽ��','017','GetNatAccountByITaxRate','U8.Interface.Bus.Function',null,'2',null,null)
end
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '017') 
begin
	--����  
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','iquantity','����',1,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','itaxunitprice','��˰����',2,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','iexchrate','����',3,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','itaxrate','˰��',4,'0','String')
	--����
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','inatsum','���Ҽ�˰�ϼ�',1,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','inatmoney','������˰���',2,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','inattax','����˰��',3,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('017','inatunitprice','������˰����',4,'1','String')
end
go  

if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '019') 
begin
insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
  (null,'U8.Interface.Bus.Function.Compelete','��¼����������Ϣ','019','GetDidTraceInfo','U8.Interface.Bus.Function',null,'2',null,null)
end 
--DELETE FROM MES_CQ_FUNCTIONS WHERE cfunid = '019'
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '019') 
begin
	--����
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','s_accid','��Դ��������ID',1,'1','string')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','d_accid','Ŀ�굥������ID',2,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','s_vouchertype','��Դ��������',3,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','d_vouchertype','Ŀ�굥������',4,'1','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','s_did','��Դ���ݱ���ID',5,'1','String')
	--����  
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','s_accid','��Դ��������ID',1,'0','string')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','d_accid','Ŀ�굥������ID',2,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','s_vouchertype','��Դ��������',3,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','d_vouchertype','Ŀ����Դ��������',4,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('019','s_did','��Դ���ݱ���ID',5,'0','String')
end 
GO


if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '020') 
begin
insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
  (null,'U8.Interface.Bus.Function.Compelete','��ȡ���ε��ݵ��ֶ�ֵ','020','GetValueByAccVouchnoItemname','U8.Interface.Bus.Function',null,'2',null,null)
end 
--delete MES_CQ_FUNCTIONS WHERE cfunid = '020'
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '020') 
begin
	--����
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('020','b_res','�ֶ�ֵ',1,'1','string')
	--����  
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('020','c_routeid','��ǰ·�ߺ�',1,'0','string')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('020','b_accid','���ε�������ID',2,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('020','b_vouchertype','���ε�������',3,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('020','b_fieldname','�ֶ�����',4,'0','String') 
end 
GO

--��ȡ���������Ϣ
if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '021') 
begin
insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
  (null,'U8.Interface.Bus.Function.Compelete','��ȡ���������Ϣ','021','GetSRPolicy','U8.Interface.Bus.Function',null,'2',null,null)
end 
--delete MES_CQ_FUNCTIONS WHERE cfunid = '021'
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '021') 
begin
	--����
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('021','ipesotype','pe������ٷ�ʽ',1,'1','string')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('021','cpesocode','pe������ٺ�',2,'1','string')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('021','ipesoseq','pe��������к�',3,'1','string') 
	--����   
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('021','d_accid','Ŀ�굥������ID',1,'0','String')
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('021','cinvcode','�������',2,'0','String') 
end 

GO 

--�˻�ר�ú���,������Դ���ײɹ������ӱ�ID��ȡĿ���������۶�����Ϣ
if not exists (SELECT 1 FROM MES_CQ_FUNCTION WHERE cfunid = '030') 
begin
insert into MES_CQ_FUNCTION ( accid,cfunclass,cfunesc,cfunid,cfunname,cfunobject,cfunsql,cfuntype,cfunvba,excdatabase ) values 
  (null,'U8.Interface.Bus.Function.Compelete','������Դ���ײɹ������ӱ�ID��ȡĿ���������۶�����Ϣ','030','GetSoInfoForReturnOrder','U8.Interface.Bus.Function',null,'2',null,null)
end 
--delete MES_CQ_FUNCTIONS WHERE cfunid = '030'
if not exists (SELECT 1 FROM MES_CQ_FUNCTIONS WHERE cfunid = '030') 
begin
	--����
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('030','b_res','�ֶ�ֵ',1,'1','string')
	--����  
	insert into MES_CQ_FUNCTIONS ( cfunid,cfunparareturn,cfunparareturndesc,cno,ctype,cvaluetype ) values 
	  ('030','so_fieldname','���۶����ֶ�����',5,'0','String') 
end 

GO



----  ������  ����  ----


--����ȡֵ��
