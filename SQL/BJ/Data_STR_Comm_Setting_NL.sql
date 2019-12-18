
---- 预置数据表 开始 ----

--/*==============================MES_CQ_DLLReflect structure =============================*/
--print 'dbo.MES_CQ_DLLReflect...'
--if not exists (select * from sysobjects where id = object_id('dbo.MES_CQ_DLLReflect') and sysstat & 0xf = 3)
--BEGIN
--CREATE TABLE dbo.MES_CQ_DLLReflect
--(
--  id int IDENTITY(1,1) not null ,
--  cvouchertype varchar(50) null ,
--  Dllpath varchar(200) null ,
--  Namespace varchar(200) null ,
--  ClassName varchar(200) null ,
--  ClassType varchar(10) null ,
--  CONSTRAINT PK_MES_CQ_DLLReflect PRIMARY KEY  CLUSTERED
--  (
--    id
--  )
--)
--END

--GO



/*==============================MES_Comm_DLLReflect structure =============================*/
print 'dbo.MES_Comm_DLLReflect...' 
if not exists (select * from sysobjects where id = object_id('dbo.MES_Comm_DLLReflect') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.MES_Comm_DLLReflect
(
  id int IDENTITY(1,1) not null ,
  TaskType int not null,  --任务工厂  0 CQ 1 XT 2 DS 3 BJ
  cvouchertype varchar(50) null ,
  Dllpath varchar(200) null ,
  Namespace varchar(200) null ,
  ClassName varchar(200) null ,
  ClassType varchar(10) null ,
  CONSTRAINT PK_MES_Comm_DLLReflect PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

--事件字段转换 
print 'dbo.MES_FIELDCMP'   
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'[dbo].[MES_FIELDCMP]'))
BEGIN
	CREATE TABLE [MES_FIELDCMP]
	( 
	  autoid int IDENTITY(1,1) not null ,
	  itype nvarchar(30) null ,
	  cname nvarchar(30) null ,
	  ctable nvarchar(30) not null ,
	  cfield nvarchar(30) not null ,
	  cdefult nvarchar(30) null ,
	  bfixed nvarchar(30) null ,
	  ctabledesc nvarchar(60) null ,
	  cfielddesc nvarchar(60) null ,
	  cfieldtype nvarchar(30) null ,
	  cfieldlength int  null ,
	  bvisible int  null ,
	  cversion nvarchar(30) null ,
	  [igetvaluetype] [int] NOT NULL default 1,  --取值方式 :0 取自dom,1取自dataset,2固定值,3函数 
	  [igetvalue] [nvarchar](100)      --取值表达式
	  CONSTRAINT PK_AAA_MES_FIELDCMP PRIMARY KEY  CLUSTERED
	  (
		ctable,cfield
	  )  
	)
END 
GO
 



--单据字段转换
print 'dbo.MES_Comm_FIELDCMP' 
if not exists (select * from sysobjects where id = object_id(N'[dbo].[MES_Comm_FIELDCMP]'))
begin
CREATE TABLE [dbo].[MES_Comm_FIELDCMP](
	[TaskType] INT NOT NULL, --任务类型    0 CQ 1 XT 2 DS 3 BJ
	[id] [nvarchar](30) NOT NULL,
	[ccode] [nvarchar](30) NOT NULL,
	[cname] [nvarchar](60) NOT NULL,
	[cfrombillcardnum] [nvarchar](60) NOT NULL,
	[ctobillcardnum] [nvarchar](60) NOT NULL,
	[vt_id] [nvarchar](40) NOT NULL,
	[cmodifer] [nvarchar](30) NULL,
	[dmodifydate] [datetime] NULL,
	[ufts] [timestamp] NOT NULL,
	[iprintcount] [int] NULL,
 CONSTRAINT [PK_MES_Comm_FIELDCMP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
end
GO


print 'dbo.MES_Comm_FIELDCMPS' 
if not exists (select * from sysobjects where id = object_id(N'[dbo].[MES_Comm_FIELDCMPS]'))
begin
CREATE TABLE [dbo].[MES_Comm_FIELDCMPS](
    [TaskType] INT NOT NULL, --任务类型   0CQ 1协同,后续可继续加
	[autoid] [nvarchar](30) NOT NULL,
	[id] [nvarchar](30) NOT NULL,
	[ccode] [nvarchar](30) NULL,
	[ctype] [int] NULL,
	[cvalue] [nvarchar](2000) NULL,
	[cfunid] [nvarchar](100) NULL,
	[cardsection] [nvarchar](4) NOT NULL,
	[fieldname] [nvarchar](80) NOT NULL,
	[carditemname] [nvarchar](200) NULL,
	[isnull] [bit] NOT NULL,
	[cremark] [nvarchar](200) NULL,
	[isvisable] [bit] NULL,
	[guid] [nvarchar](60) NULL,
	[seq] float NULL,  --排序
 CONSTRAINT [PK_MES_Comm_FIELDCMPS] PRIMARY KEY CLUSTERED 
(
	[TaskType],[ID],[cardsection],[fieldname]  
)
) ON [PRIMARY]
end 
GO


/****** Object:  Table [dbo].[MES_CQ_FIXVALUE]    Script Date: 09/24/2013 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

print 'dbo.MES_CQ_FIXVALUE' 
if not exists (select * from sysobjects where id = object_id(N'[dbo].[MES_CQ_FIXVALUE]'))
begin
CREATE TABLE [dbo].[MES_CQ_FIXVALUE](
	[did] [nvarchar](30) NOT NULL,
	[autoid] [nvarchar](30) NOT NULL,
	[cfunid] [nvarchar](60) NULL,
	[ctype] [nvarchar](60) NULL,
	[accid] [nvarchar](30) NULL,
	[cvalue] [nvarchar](60) NULL,
	[cno] [int] NULL,
	[cfunparareturn] [nvarchar](60) NULL,
	[cardsection] [nvarchar](4) NULL,
	[cfromortobill] [nvarchar](4) NULL,
	[guid] [nvarchar](60) NULL,
 CONSTRAINT [PK_XY_MES_CQ_FIXVALUE] PRIMARY KEY CLUSTERED 
(
	[autoid] ASC
)
) ON [PRIMARY]
end
GO


/****** Object:  Table [dbo].[MES_CQ_FUNCTION]    Script Date: 09/24/2013 11:01:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

print 'dbo.MES_CQ_FUNCTION' 
if not exists (select * from sysobjects where id = object_id(N'[dbo].[MES_CQ_FUNCTION]'))
begin
CREATE TABLE [dbo].[MES_CQ_FUNCTION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cfunid] [nvarchar](60) NOT NULL,
	[cfunesc] [nvarchar](60) NULL,
	[cfuntype] [nvarchar](30) NULL,
	[cfunobject] [nvarchar](60) NULL,
	[cfunclass] [nvarchar](60) NULL,
	[cfunname] [nvarchar](60) NULL,
	[cfunsql] [nvarchar](4000) NULL,
	[cfunvba] [nvarchar](30) NULL,
	[accid] [nvarchar](30) NULL,
	[excdatabase] [nvarchar](30) NULL,
 CONSTRAINT [PK_XY_MES_CQ_FUNCTION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
end
GO

 
/****** Object:  Table [dbo].[MES_CQ_FUNCTIONS]    Script Date: 09/24/2013 11:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
print 'dbo.MES_CQ_FUNCTIONS' 
if not exists (select * from sysobjects where id = object_id(N'[dbo].[MES_CQ_FUNCTIONS]'))
begin
--drop table MES_CQ_FUNCTIONS
CREATE TABLE [dbo].[MES_CQ_FUNCTIONS](
	[autoid] [int] IDENTITY(1,1) NOT NULL,
	[cfunid] [nvarchar](60) NOT NULL,
	[ctype] [nvarchar](60) NULL,
	[cfunparareturn] [nvarchar](60) NULL,
	[cvaluetype] [nvarchar](60) NULL,
	[cno] [int] NULL,
	[cfunparareturndesc] [nvarchar](120) NULL,
 CONSTRAINT [PK_XY_MES_CQ_FUNCTIONS] PRIMARY KEY CLUSTERED 
(
	[autoid] ASC
)
) ON [PRIMARY]
end
GO






/*==============================================================*/
/* Table: Mes_Comm_Regist                                       */
/*==============================================================*/

Print 'dbo.Mes_Comm_Regist ...'
if not exists (select 1 from  sysobjects where  id = object_id('Mes_Comm_Regist') and   type = 'U')
create table Mes_Comm_Regist (
   accid                nvarchar(30)         not null,
   acccode              nvarchar(30)         null,
   caddress             nvarchar(30)         null,
   cdbpwd               nvarchar(120)        null,
   datasource           nvarchar(30)         null,
   cacc_id              nvarchar(30)         null,
   caccname             nvarchar(30)         null,
   ibeginyear           smallint             null,
   cuser_id             nvarchar(30)         null,
   cpassword            nvarchar(30)         null,
   benable              nvarchar(30)         null,
   cmaker               nvarchar(30)         null,
   ddate                datetime             null,
   cmaketime            datetime             null,
   cmodifer             nvarchar(30)         null,
   dmodifydate          datetime             null,
   cmodifytime          datetime             null,
   iprintcount          int                  null,
   ivtid                nvarchar(30)         null,
   ufts                 timestamp            null,
   cremark              nvarchar(200)        null,
   constraint PK_Mes_Comm_Regist primary key (accid)
)
go

--if exists (select 1 from sys.extended_properties 
--where major_id = object_id('Mes_Comm_Regist') 
--and minor_id = 0 and name = 'MS_Description') 
--begin 
--declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist' 
 
--end 

--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description', 
--'帐套注册表', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist'
--go

--if exists (select 1
--from sysproperties where TableID = object_id('Mes_Comm_Regist') and ColName = 'accid' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'accid'
--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'帐套ID',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'accid'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'acccode' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'acccode'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'帐套代码',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'acccode'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'caddress' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'caddress'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'数据服务器',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'caddress'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cdbpwd' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cdbpwd'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'服务器密码',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cdbpwd'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'datasource' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'datasource'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'数据源',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'datasource'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cacc_id' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cacc_id'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'帐套号',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cacc_id'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'caccname' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'caccname'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'帐套名称',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'caccname'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'ibeginyear' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ibeginyear'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'建账年度',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ibeginyear'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cuser_id' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cuser_id'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'默认操作员',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cuser_id'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cpassword' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cpassword'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'操作员密码',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cpassword'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'benable' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'benable'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'启用状态
----0:不启用;1:启用;',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'benable'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cmaker' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmaker'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'制单人',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmaker'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'ddate' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ddate'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'制单日期',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ddate'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cmaketime' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmaketime'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'制单时间',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmaketime'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cmodifer' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmodifer'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'修改人',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmodifer'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'dmodifydate' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'dmodifydate'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'修改日期',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'dmodifydate'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'cmodifytime' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmodifytime'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'修改时间',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cmodifytime'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'iprintcount' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'iprintcount'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'打印次数',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'iprintcount'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'ivtid' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ivtid'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'模版号',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ivtid'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_Regist')
--and ColName = 'ufts' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ufts'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'时间戳',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'ufts'
--go

--if exists (select 1 from sysproperties where TableID = object_id('Mes_Comm_Regist') and ColName = 'cremark' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cremark'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'备注',
--'user', @CurrentUser, 'table', 'Mes_Comm_Regist', 'column', 'cremark'
--go

 
Print 'dbo.Mes_Comm_ROUTESET ...'
if not exists  (select 1 from  sysobjects where  id = object_id('Mes_Comm_ROUTESET') and   type = 'U')

CREATE TABLE [dbo].[Mes_Comm_ROUTESET](
	[id] [nvarchar](30) NOT NULL,
	[ccode] [nvarchar](30) NULL,
	[chno] [nvarchar](30) NULL,
	[tnode] [int] NULL,
	[chbillnum] [nvarchar](30) NULL,
	[cflowname] [nvarchar](60) NULL,
	[caccfrom] [nvarchar](60) NULL,
	[cstatus] [nvarchar](30) NULL,
	[vt_id] [nvarchar](40) NULL,
	[cmarker] [nvarchar](30) NULL,
	[ddate] [datetime] NULL,
	[cmodifer] [nvarchar](30) NULL,
	[dmodifydate] [datetime] NULL,
	[cbillstatus] [nvarchar](30) NULL,
	[ufts] [timestamp] NULL,
	[cDefine1] [nvarchar](20) NULL,
	[cDefine2] [nvarchar](20) NULL,
	[cDefine3] [nvarchar](30) NULL,
	[cDefine4] [datetime] NULL,
	[cDefine5] [int] NULL,
	[cDefine6] [datetime] NULL,
	[cDefine7] [float] NULL,
	[cDefine8] [nvarchar](4) NULL,
	[cDefine9] [nvarchar](9) NULL,
	[cDefine10] [nvarchar](60) NULL,
	[cDefine11] [nvarchar](120) NULL,
	[cDefine12] [nvarchar](120) NULL,
	[cDefine13] [nvarchar](120) NULL,
	[cDefine14] [nvarchar](120) NULL,
	[cDefine15] [int] NULL,
	[cDefine16] [float] NULL,
 CONSTRAINT [PK_Mes_Comm_ROUTESET] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 

/****** Object:  Table [dbo].[Mes_Comm_RouteSets]    Script Date: 09/24/2013 15:31:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Print 'dbo.Mes_Comm_RouteSets ...'
if not exists (select 1 from  sysobjects where  id = object_id('Mes_Comm_RouteSets') and   type = 'U')

CREATE TABLE [dbo].[Mes_Comm_RouteSets](
	[autoid] [nvarchar](30) NOT NULL,
	[id] [nvarchar](30) NULL,
	[chno] [nvarchar](30) NULL,
	[cbbillcardnum] [nvarchar](60) NULL,
	[caccreceive] [int] NULL,
	[cremark] [nvarchar](200) NULL,
	[cDefine22] [nvarchar](60) NULL,
	[cDefine23] [nvarchar](60) NULL,
	[cDefine24] [nvarchar](60) NULL,
	[cDefine25] [nvarchar](60) NULL,
	[cDefine26] [float] NULL,
	[cDefine27] [float] NULL,
	[cDefine28] [nvarchar](120) NULL,
	[cDefine29] [nvarchar](120) NULL,
	[cDefine30] [nvarchar](120) NULL,
	[cDefine31] [nvarchar](120) NULL,
	[cDefine32] [nvarchar](120) NULL,
	[cDefine33] [nvarchar](120) NULL,
	[cDefine34] [int] NULL,
	[cDefine35] [int] NULL,
	[cDefine36] [datetime] NULL,
	[cDefine37] [datetime] NULL,
 CONSTRAINT [PK_Mes_Comm_RouteSets] PRIMARY KEY CLUSTERED 
(
	[autoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




Print 'dbo.Mes_Comm_BillScope ...'
if not exists  (select 1 from  sysobjects where  id = object_id('Mes_Comm_BillScope') and   type = 'U')
CREATE TABLE [dbo].[Mes_Comm_BillScope](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cardnum] [nvarchar](30) NULL,
	[cbillname] [nvarchar](60) NULL,
	[clocation] [int] NULL,
 CONSTRAINT [PK_Mes_Comm_BillScope] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO






/*==============================================================*/
/* Table: Mes_Comm_TYPE                                         */
/*==============================================================*/


Print 'dbo.Mes_Comm_TYPE ...'
if not exists  (select 1 from  sysobjects where  id = object_id('Mes_Comm_TYPE') and   type = 'U')
create table Mes_Comm_TYPE (
   autoid               int                  identity,
   itype                nvarchar(30)         null,
   cname                nvarchar(30)         null,
   cfield               nvarchar(120)        null,
   constraint PK_Mes_Comm_TYPE primary key (autoid)
)
go

--if exists (select 1 from sys.extended_properties where major_id = object_id('Mes_Comm_TYPE') 
--and minor_id = 0 and name = 'MS_Description') 
--begin 
--declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE' 
 
--end 

--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description', 
--'预置协同档案类型', 
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE'
--go

--if exists (select 1 from sysproperties where TableID = object_id('Mes_Comm_TYPE')
--and ColName = 'autoid' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'autoid'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'类型ID',
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'autoid'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_TYPE')
--and ColName = 'itype' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'itype'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'档案类型',
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'itype'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_TYPE')
--and ColName = 'cname' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'cname'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'档案名称',
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'cname'
--go

--if exists (select 1
--from sysproperties
--where TableID = object_id('Mes_Comm_TYPE')
--and ColName = 'cfield' AND PropName='MS_Description')
--begin
--declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'cfield'


--end

--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--'分类字段',
--'user', @CurrentUser, 'table', 'Mes_Comm_TYPE', 'column', 'cfield'
--go

