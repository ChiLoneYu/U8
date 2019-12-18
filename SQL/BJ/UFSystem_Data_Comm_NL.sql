print 'dbo.Mes_Comm_MAINACC' 
if not exists (select * from sysobjects where id = object_id(N'[dbo].[Mes_Comm_MAINACC]'))
begin 
	CREATE TABLE [dbo].[Mes_Comm_MAINACC](
		[autoid] [bigint] IDENTITY(1,1) NOT NULL,
		[connstr] [nvarchar](1000) NULL,
		[accid] [nvarchar](30) NULL,
		[caddress] [nvarchar](60) NULL,
		[cdbpwd] [nvarchar](60) NULL,
		[cdatabase] [nvarchar](60) NULL,
		CONSTRAINT [PK_Mes_Comm_MAINACC] PRIMARY KEY CLUSTERED 
		(
			[autoid] ASC
		) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

end 

GO


