
---- �м��  ��ʼ ----

--���۷�����
/*==============================MES_CQ_DispatchList structure =============================*/
print 'dbo.MES_CQ_DispatchList...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_DispatchList') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_DispatchList
(

	id nvarchar(36), --Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	0/1/2/3/4 δ����/�������/������/����/���� ,(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2	 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ
	cRemark	Nvarchar(255), --��ע	
	 
	cdlcode	Nvarchar(30) , --��������	�����ɹ��󣬻������ɵ���ⵥ��
	ddate	datetime, --��������
	cRdCode	Nvarchar(5), --�շ����	���ֶ��Ǳ����ֶ�
	cBusTypeID	Nvarchar(15)	, -- ҵ������ID
	cBusType	Nvarchar(8)	, -- ҵ����������
	cSTCode	Nvarchar(2)	, -- ��������ID
	cSTName	Nvarchar(20), -- ������������	
	cSoCode	Nvarchar(30), -- ������	
	cCusCode	Nvarchar(20)	, -- �ͻ�����
	cDepCode	Nvarchar(12)	, -- ���۲��Ŵ���
	cPersonCode	Nvarchar(20)	, -- ҵ��Ա����
	cAddress	Nvarchar(255)	, -- ������ַ �ͻ�������ȡ�ã����޸�
	cSCCode	Nvarchar(2), -- ���˷�ʽ	�ͻ�������ȡ�ã����޸ġ����˷�ʽ˫��ϵͳ����ά������������һ�¼��ɡ�
 	
  CONSTRAINT PK_MES_CQ_DispatchList PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_DispatchLists structure =============================*/
print 'dbo.MES_CQ_DispatchLists...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_DispatchLists') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_DispatchLists
(
	did	nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��) 0/1/2	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ 	0/1/2/3 δ����/�������/������/���� ,	(�������ͱ��ں�����չ)	��/��

	isosid	Int	, -- ���۶����ӱ��к�ID
	mesid nvarchar(36), -- ��ϸ�к�ID			MES��ϸ�к�
	cWhCode	Nvarchar(10), --�ֿ�	�ֿ����
	cinvcode	Nvarchar(20)	, --�������
	iquantity	Decimal(32,12)	, -- ����
	cVenCode	Nvarchar(20), -- ��Ӧ�̱��	���ϳ���ʱȡ���ϵĹ�Ӧ�̣���Ʒ����ʱΪ�ա�
	 
  CONSTRAINT PK_MES_CQ_DispatchLists PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO



--�����˻���
/*==============================MES_CQ_DispatchListRet structure =============================*/
print 'dbo.MES_CQ_DispatchListRet...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_DispatchListRet') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_DispatchListRet
(

	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	0/1/2/3 δ����/�������/������/����  (�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ
	cRemark	Nvarchar(255), --��ע	
	 
	cdlcode	Nvarchar(30) , --��������	�����ɹ��󣬻������ɵ���ⵥ��
	ddate	datetime, --�˻�����
	cRdCode	Nvarchar(5), --�շ����	���ֶ��Ǳ����ֶ�
	cBusTypeID	Nvarchar(15)	, -- ҵ������ID
	cBusType	Nvarchar(8)	, -- ҵ����������
	cSTCode	Nvarchar(2)	, -- ��������ID
	cSTName	Nvarchar(20), -- ������������	
	cSoCode	Nvarchar(30), -- ������	
	cCusCode	Nvarchar(20)	, -- �ͻ�����
	cDepCode	Nvarchar(12)	, -- ���۲��Ŵ���
	cPersonCode	Nvarchar(20)	, -- ҵ��Ա����
	cAddress	Nvarchar(255)	, -- ������ַ �ͻ�������ȡ�ã����޸�
	cSCCode	Nvarchar(2), -- ���˷�ʽ	�ͻ�������ȡ�ã����޸ġ����˷�ʽ˫��ϵͳ����ά������������һ�¼��ɡ�
	tdlcode	Nvarchar(30)	, -- �˻�����   

 	
  CONSTRAINT PK_MES_CQ_DispatchListRet PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_DispatchListRets structure =============================*/
print 'dbo.MES_CQ_DispatchListRets...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_DispatchListRets') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_DispatchListRets
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��) 0/1/2	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ  0/1/2/3 δ����/�������/������/����	(�������ͱ��ں�����չ)	��/��

	isosid	Int	, -- ���۶����ӱ��к�ID
	mesid nvarchar(36), -- ��ϸ�к�ID			MES��ϸ�к�
	cWhCode	Nvarchar(10), --�ֿ�	�ֿ����
	cinvcode	Nvarchar(20)	, --�������
	iquantity	Decimal(32,12)	, -- ����
	cVenCode	Nvarchar(20), -- ��Ӧ�̱��	���ϳ���ʱȡ���ϵĹ�Ӧ�̣���Ʒ����ʱΪ�ա�
	  
  CONSTRAINT PK_MES_CQ_DispatchListRets PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO



--����Ʒ��ⵥ
/*==============================MES_CQ_rdrecord10 structure =============================*/
print 'dbo.MES_CQ_rdrecord10...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecord10') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecord10
(

	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cRdCode	Nvarchar(30),	--��ⵥ��
	ddate	datetime,       --�������	
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --�շ����	���ֶ��Ǳ����ֶ�
    cDepCode	Nvarchar(12), --����(��������)		
	cRemark	Nvarchar(255), --��ע	

  CONSTRAINT PK_MES_CQ_rdrecord10 PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_rdrecords10 structure =============================*/
print 'dbo.MES_CQ_rdrecord10...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecords10') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecords10
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��

  	MoCode	Nvarchar(30), -- ����������	
	cInvCode	Nvarchar(20), -- ��Ʒ����	
	iquantity	Decimal(32,12), -- ����	�������������źͲ�Ʒ�������

  CONSTRAINT PK_MES_CQ_rdrecords10 PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO
  
  
  

--����Ʒ��ⵥ(����)
/*==============================MES_CQ_rdrecord10Ret structure =============================*/
print 'dbo.MES_CQ_rdrecord10Ret...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecord10Ret') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecord10Ret
( 
	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cRdCode	Nvarchar(30),	--��ⵥ��
	ddate	datetime,       --�������	
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --�շ����	���ֶ��Ǳ����ֶ�
    cDepCode	Nvarchar(12), --����(��������)		
	cRemark	Nvarchar(255), --��ע	

  CONSTRAINT PK_MES_CQ_rdrecord10Ret PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_rdrecords10Ret structure =============================*/
print 'dbo.MES_CQ_rdrecords10Ret...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecords10Ret') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecords10Ret
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��

  	MoCode	Nvarchar(30), -- ����������	
	cInvCode	Nvarchar(20), -- ��Ʒ����	
	iquantity	Decimal(32,12), -- ����	�������������źͲ�Ʒ�������

  CONSTRAINT PK_MES_CQ_rdrecords10Ret PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO
  
  
--�ɹ���ⵥ
/*==============================MES_CQ_rdrecord01 structure =============================*/
print 'dbo.MES_CQ_rdrecord01...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecord01') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecord01
(

	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cRdCode	Nvarchar(30),	--��ⵥ��
	ddate	datetime,       --�������	
	bIsRedVouch bit default 0,     --1 ���ֵ��ݣ�����Ĭ��Ϊ����
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --�շ����	���ֶ��Ǳ����ֶ�
    cDepCode	Nvarchar(12), --����(��������)	
	cVenCode	Nvarchar(20), -- ��Ӧ��	 
	cPersonCode	Nvarchar(20), -- ҵ��Ա	 	
	cRemark	Nvarchar(255), --��ע	   

  CONSTRAINT PK_MES_CQ_rdrecord01 PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_rdrecords01 structure =============================*/
print 'dbo.MES_CQ_rdrecord10...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecords01') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecords01
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��

  	dhCode	Nvarchar(20), -- ��������	
	cPoCode	Nvarchar(20), -- ������
	dhid int , -- �������к�ID		 
	cInvCode	Nvarchar(20), -- ������� 
	iquantity	Decimal(32,12), -- ���� 
	  
  CONSTRAINT PK_MES_CQ_rdrecords01 PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO



--�ɹ��˻�  \ �ɹ���ⵥ(����)
/*==============================MES_CQ_rdrecord01Ret structure =============================*/
print 'dbo.MES_CQ_rdrecord01Ret...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecord01Ret') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecord01Ret
(

	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �ɹ��˻��� �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  --�ɹ��˻��� ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ
    cerrordesc_rd nvarchar(4000) null ,  -- ���� �ɹ���ⵥ(����) ������Ϣ

	operflag_rd Int default 0, -- �ɹ���ⵥ(����) �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	opertype_rd Int default 0, -- �ɹ���ⵥ(����) ������ʶ

    cCode	Nvarchar(30),	--���ɵ��˻�����
    cPuRdCode	Nvarchar(30), --���ɵĲɹ���ⵥ��(����)
	cRdCode	Nvarchar(30),	--MES����ĳ��ⵥ��(����)
	ddate	datetime,       --�������	
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --�շ����	���ֶ��Ǳ����ֶ�
    cDepCode	Nvarchar(12), --����(��������)	
	cVenCode	Nvarchar(20), -- ��Ӧ��	 
	cPersonCode	Nvarchar(20), -- ҵ��Ա	 	
	cRemark	Nvarchar(255), --��ע	   

  CONSTRAINT PK_MES_CQ_rdrecord01Ret PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_rdrecords01 structure =============================*/
print 'dbo.MES_CQ_rdrecord10...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecords01Ret') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecords01Ret
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	opertype_rd Int default 0, -- �ɹ���ⵥ(����) ������ʶ
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��

  	dhCode	Nvarchar(20), -- ��������	
	cPoCode	Nvarchar(20), -- ������
	dhid int , -- �������к�ID		 
	cInvCode	Nvarchar(20), -- ������� 
	iquantity	Decimal(32,12), -- ���� 
	  
  CONSTRAINT PK_MES_CQ_rdrecords01Ret PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO




--������ⵥ
/*==============================MES_CQ_rdrecord08 structure =============================*/
print 'dbo.MES_CQ_rdrecord08...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecord08') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecord08
(

	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cRdCode	Nvarchar(30),	--��ⵥ��
	ddate	datetime,       --�������	
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --�շ����	���ֶ��Ǳ����ֶ�
    cDepCode	Nvarchar(12), --����(��������)	
	cVenCode	Nvarchar(20), -- ��Ӧ��	 
	--cPersonCode	Nvarchar(20), -- ҵ��Ա	 	
	cRemark	Nvarchar(255), --��ע	   

  CONSTRAINT PK_MES_CQ_rdrecord08 PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END
 
GO

/*==============================MES_CQ_rdrecords08 structure =============================*/
print 'dbo.MES_CQ_rdrecords08...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_rdrecords08') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_rdrecords08
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��
	 
	cVenCode	Nvarchar(20), -- ��Ӧ��	  
	cInvCode	Nvarchar(20), -- ������� 
	iquantity	Decimal(32,12), -- ���� 
	  
  CONSTRAINT PK_MES_CQ_rdrecords08 PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO


--���ϳ��ⵥ  
print 'dbo.MES_CQ_RdRecord11...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_RdRecord11') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_RdRecord11
( 
	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cRdCode	Nvarchar(30),	--���ⵥ����
	ddate	datetime,       --��������	
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --�շ����	���ֶ��Ǳ����ֶ�
    cDepCode	Nvarchar(12), --����(��������)	
	cVenCode	Nvarchar(20), -- ��Ӧ��	  	
	cRemark	Nvarchar(255), --��ע	   
	 
  CONSTRAINT PK_MES_CQ_RdRecord11 PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END 

GO

/*==============================MES_CQ_rdrecords11 structure =============================*/
print 'dbo.MES_CQ_RdRecords11...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_RdRecords11') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_RdRecords11
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ 
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��

	MESDID	Nvarchar(20), --MES�к� 
	MoCode	Nvarchar(30)	, --����������
	cPInvCode	Nvarchar(20), --��Ʒ����	
	cInvCode	Nvarchar(20), --���ϱ���
	iquantity	Decimal(32,12), --����	
	cVenCode	Nvarchar(20),--��Ӧ�̱���	

	  
  CONSTRAINT PK_MES_CQ_RdRecords11 PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO



--�������ⵥ  
print 'dbo.MES_CQ_RdRecord09...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_RdRecord09') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_RdRecord09
(

	id nvarchar(36),--  Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cRdCode	Nvarchar(30),	--���ⵥ����
	ddate	datetime,       --��������	
	cWhCode	Nvarchar(10),   --�ֿ�	�ֿ����
	cRdStyleCode	Nvarchar(5),    --��������	ERP�ṩ,����
    cDepCode	Nvarchar(12), --����(��������)	
	cVenCode	Nvarchar(20), -- ��Ӧ��	 
	cCusCode NVARCHAR(40),  -- �ͻ�
	cDefine2 NVARCHAR(40), 	--
	cRemark	Nvarchar(255), --��ע	  

  CONSTRAINT PK_MES_CQ_RdRecord09 PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

IF not exists( select 1 from syscolumns where id = object_id('dbo.MES_CQ_RdRecord09') and name = 'cCusCode')
BEGIN
    alter table dbo.MES_CQ_RdRecord09 add cCusCode nvarchar(40) null     
END 
IF not exists( select 1 from syscolumns where id = object_id('dbo.MES_CQ_RdRecord09') and name = 'cDefine2')
BEGIN
    alter table dbo.MES_CQ_RdRecord09 add cDefine2 nvarchar(40) null     
END 
--ELSE	
--BEGIN	
--	alter table dbo.MES_CQ_RdRecord09
--	alter column cDefine2 nvarchar(40) null
--END 

GO

/*==============================MES_CQ_rdrecords08 structure =============================*/
print 'dbo.MES_CQ_RdRecords09...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_RdRecords09') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_RdRecords09
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��) 0/1/2	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��
	 
	cVenCode	Nvarchar(20), -- ��Ӧ��	  
	cInvCode	Nvarchar(20), -- ������� 
	iquantity	Decimal(32,12), -- ����  

  CONSTRAINT PK_MES_CQ_RdRecords09 PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO

--������  0304
print 'dbo.MES_CQ_TransVouch...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_TransVouch') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_TransVouch
(

	id  nvarchar(36),-- Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ  0/1/2 δ����/�Ѵ���/�������	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cTVCode	Nvarchar(30), --�ƿⵥ��	
	dTVDate	Datetime, --�ƿ�����	��������
	cOWhCode	Nvarchar(10), --��Դ�ֿ�	����
	cIWhCode	Nvarchar(10), --Ŀ��ֿ�	����
	cODepCode   nvarchar(12),--�������� ����
	cIDepCode   nvarchar(12),--���벿�� ����
	cIRdCode	Nvarchar(5), --������	����
	cORdCode	Nvarchar(5),-- �������	����
	cRemark	Nvarchar(255), --��ע	
	cPersonCode Nvarchar(20),  --������
  

  CONSTRAINT PK_MES_CQ_TransVouch PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_TransVouchs structure =============================*/
print 'dbo.MES_CQ_TransVouchs...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_TransVouchs') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_TransVouchs
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��) 0/1/2	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��
	 
	MESDid	Varchar(32)	, --MES�к�
	cInvCode	Nvarchar(20)	, --�������
	iquantity	Decimal(32,12)	, --����
	cVenCode	Nvarchar(20)	, --��Ӧ�� 
  CONSTRAINT PK_MES_CQ_TransVouchs PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO





--�̵㵥  0307
print 'dbo.MES_CQ_CheckVouch...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_CheckVouch') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_CheckVouch
(

	id nvarchar(36),--  Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

	cIRdCode	Nvarchar(5), --������	����
	cORdCode	Nvarchar(5),-- �������	����
	cCVCode	Nvarchar(30), --�̵����񵥺�	
	dCVDate	datetime, --�ƻ��̵�����	ȡ�ƻ��̵�����
	dACDate	datetime,--ʵ���̵�����	ȡ�̵�����ʵ���������
	cDepCode	Nvarchar(12), --�̵㲿��	ȡ�̵����������ڲ���
	cPersonCode	Nvarchar(20), --�̵���	ȡ�̵�������
	cWhCode	Nvarchar(10)	, --�ֿ�
	 
  CONSTRAINT PK_MES_CQ_CheckVouch PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_CQ_CheckVouchs structure =============================*/
print 'dbo.MES_CQ_CheckVouchs...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_CheckVouchs') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_CQ_CheckVouchs
(
	did	 nvarchar(36),-- Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	 nvarchar(36),-- Int, -- ��������ID	���������¼��ID
	createTime Datetime default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��) 0/1/2	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��
	 
	cInvCode	Nvarchar(20), --�������	
	iquantity	Decimal(32,12), --����	���մ�����롢��Ӧ�������ܣ�����������ֵ��
	cVenCode	Nvarchar(20), --��Ӧ��	

  CONSTRAINT PK_MES_CQ_CheckVouchs PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO





--��װ��     0308
print 'dbo.MES_Int_CQ_AssemVouch...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_Int_CQ_AssemVouch') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_Int_CQ_AssemVouch
(

	id nvarchar(36),--Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime  default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

    cAVCode	Nvarchar(30)	, --����
	dAVDate	Datetime	, --����
	cIRdCode	Nvarchar(5), --������	��װ��
	cDepCode	Nvarchar(12), --����	
	cORdCode	Nvarchar(5), --��������	�������ⵥ���
	cODepCode	Nvarchar(12), --����	����������ⲿ��

	 
  CONSTRAINT PK_MES_Int_CQ_AssemVouch PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

/*==============================MES_Int_CQ_AssemVouchs structure =============================*/
print 'dbo.MES_Int_CQ_AssemVouchs...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_Int_CQ_AssemVouchs') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_Int_CQ_AssemVouchs
(
	did	nvarchar(36),--Int IDENTITY(1,1) not null , --�ӱ�ID	���ӱ�����ΨһKEY
	id	nvarchar(36),--Int, -- ��������ID	���������¼��ID
	createTime Datetime  default getdate(), --����ʱ��	�����ݴ���ʱ��
	finishTime	Datetime,--���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��) 0/1/2	����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
	cerrordesc nvarchar(4000) null ,  --������Ϣ
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��

	cAVDID	int, --�ӱ��к�	ERP
	bAVType	Nvarchar(20), --����	ֵ��ɢ�����׼����׼���Ϊ���������ϸ��ɢ����Ϊ����������ϸ��
	cInvCode	Nvarchar(20)	, --�������
	cWhCode	Nvarchar(10), --�ֿ�	��Ϊ���������Ĳֿ�
	iquantity	Decimal(32,12)	, --����


  CONSTRAINT PK_MES_Int_CQ_AssemVouchs PRIMARY KEY  CLUSTERED
  (
    did
  )
)
END

GO

  

--��ж��     0309
print 'dbo.MES_Int_CQ_AssemVouchRet...'
if not exists (select * from sysobjects where id = object_id('dbo.MES_Int_CQ_AssemVouchRet') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_Int_CQ_AssemVouchRet
(

	id nvarchar(36),--Int  IDENTITY(1,1) not null ,-- ����ID ����ΨһKEY��
	operflag Int default 0, -- �����ʾ	(�������ͱ��ں�����չ)	��/��Ĭ��Ϊ�񣬱�ʾ�������Ƿ񱻶�ȡ������߱�ҵ����á�
	createTime Datetime  default getdate(),	--����ʱ�� �����ݴ���ʱ��
	finishTime	Datetime, --���ʱ��	���������ʱ�䣬��Щҵ����Ҫ��д������Ҫ��ҵ���д��
	opertype Int default 0,  -- ������ʾ	(ö��)	0/1/2 ����/�޸�/ɾ�������ڼ�¼������¼���������޸Ļ���ɾ����
    cerrordesc nvarchar(4000) null ,  --������Ϣ

    cAVCode	Nvarchar(30)	, --����
	dAVDate	Datetime	, --����
	cIRdCode	Nvarchar(5), --������	��װ��
	cDepCode	Nvarchar(12), --����	
	cORdCode	Nvarchar(5), --��������	�������ⵥ���
	cODepCode	Nvarchar(12), --����	����������ⲿ��
   
  CONSTRAINT PK_MES_Int_CQ_AssemVouchRet PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO


---- �м����� ----