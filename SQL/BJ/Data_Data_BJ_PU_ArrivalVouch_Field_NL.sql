 
IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMP WHERE TaskType = '3' AND cfrombillcardnum='' AND ctobillcardnum='26' )  
BEGIN
 insert into MES_Comm_FIELDCMP (TaskType, ccode,cfrombillcardnum,cname,ctobillcardnum,id,iprintcount,vt_id ) values 
  ('3','0000000112','','mes���ɲɹ�������','26','1000000112',null,'17')
END

GO

 
-- mes���ɲɹ�������
-- DELETE FROM MES_CQ_FIXVALUE WHERE DID IN (SELECT AUTOID FROM  MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000112')
-- DELETE FROM MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000112'
-- ��ͷ
IF (1=1)  
BEGIN
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iVTid')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','����ģ���','T','0000000112',null,null,0,'��ͷ|����ģ���,T|iVTid','iVTid',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cchanger')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����','T','0000000112',null,null,0,'��ͷ|�����,T|cchanger','cchanger',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iflowid')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','����ID','T','0000000112',null,null,0,'��ͷ|����ID,T|iflowid','iflowid',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cReviser')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�޸���','T','0000000112',null,null,0,'��ͷ|�޸���,T|cReviser','cReviser',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cverifier')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����','T','0000000112',null,null,0,'��ͷ|�����,T|cverifier','cverifier',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iverifystateex')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���״̬','T','0000000112',null,null,0,'��ͷ|���״̬,T|iverifystateex','iverifystateex',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='ireturncount')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ش���','T','0000000112',null,null,0,'��ͷ|��ش���,T|ireturncount','ireturncount',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='IsWfControlled')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','�Ƿ����ù�����','T','0000000112',null,null,1,'false','IsWfControlled',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='caudittime')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���ʱ��','T','0000000112',null,null,0,'��ͷ|���ʱ��,T|caudittime','caudittime',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cAuditDate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�������','T','0000000112',null,null,0,'��ͷ|�������,T|cAuditDate','cAuditDate',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cVenPUOMProtocol')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�ո���Э�����','T','0000000112',null,null,0,'��ͷ|�ո���Э�����,T|cVenPUOMProtocol','cVenPUOMProtocol',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine15')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����15','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����15,T|cDefine15','cDefine15',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine12')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����12','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����12,T|cDefine12','cDefine12',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine13')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����13','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����13,T|cDefine13','cDefine13',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine10')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����10','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����10,T|cDefine10','cDefine10',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine11')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����11','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����11,T|cDefine11','cDefine11',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine8')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����8','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����8,T|cDefine8','cDefine8',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine9')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����9','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����9,T|cDefine9','cDefine9',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine7')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����7','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����7,T|cDefine7','cDefine7',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cPersonCode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','ְԱ���','T','0000000112',null,null,0,'��ͷ|ְԱ���,T|cPersonCode','cPersonCode',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cPayCode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������������','T','0000000112',null,null,0,'��ͷ|������������,T|cPayCode','cPayCode',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine4')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����4','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����4,T|cDefine4','cDefine4',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine5')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����5','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����5,T|cDefine5','cDefine5',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cPTCode')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','�ɹ����ͱ���','T','0000000112',null,null,0,'��ͷ|�ɹ����ͱ���,T|cPTCode','cPTCode',null,'1000000112',1,1)  
	END
 
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine2')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����2','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����2,T|cDefine2','cDefine2',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cVenCode')
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values ('3','1','������λ���','T','0000000112',null,null,0,'��ͷ|������λ���,T|MES_cVenCode','cVenCode',null,'1000000112',1,1)  
	END
	
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cvenabbname')
	--BEGIN  
	--	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--	values ('3','1','������λ���','T','0000000112',null,null,0,'��ͷ|������λ���,T|MES_cVenCode','cvenabbname',null,'1000000112',1,1)  
	--END
	 
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDepCode')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','���ű��','T','0000000112',null,null,0,'��ͷ|���ű��,T|MES_cDepCode','cDepCode',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cdepname')   
	--BEGIN  
	--	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--	values   ('3','1','���ű��','T','0000000112',null,null,0,'��ͷ|���ű��,T|MES_cDepCode','cdepname',null,'1000000112',1,1)  
	--END
	
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine1')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����1','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����1,T|cDefine1','cDefine1',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cMemo')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ע','T','0000000112',null,null,0,'��ͷ|��ע,T|cMemo','cMemo',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iExchRate')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','����','T','0000000112',null,null,0,'��ͷ|����,T|iExchRate','iExchRate',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine16')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����16','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����16,T|cDefine16','cDefine16',null,'1000000112',1,1)  END
	
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='ID')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','����id','T','0000000112',null,null,1,'','ID',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cexch_name')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','����','T','0000000112',null,null,0,'��ͷ|����,T|cexch_name','cexch_name',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='bNegative')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','����Ʊ��־','T','0000000112',null,null,1,'0','bNegative',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iTaxRate')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','˰��','T','0000000112',null,null,0,'��ͷ|˰��,T|iTaxRate','iTaxRate',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cSCCode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���䷽ʽ����','T','0000000112',null,null,0,'��ͷ|���䷽ʽ����,T|cSCCode','cSCCode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='dDate')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','����','T','0000000112',null,null,0,'��ͷ|����,T|mes_dDate','dDate',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cBusType')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','ҵ������','T','0000000112',null,null,0,'��ͷ|ҵ������,T|cBusType','cBusType',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cMaker')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','�Ƶ���','T','0000000112',null,null,0,'��ͷ|�Ƶ���,T|cMaker','cMaker',null,'1000000112',1,1) 
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='ccloser')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�ر���','T','0000000112',null,null,0,'��ͷ|�ر���,T|ccloser','ccloser',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iBillType')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','��������','T','0000000112',null,null,1,'0','iBillType',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cMakeTime')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�Ƶ�ʱ��','T','0000000112',null,null,0,'��ͷ|�Ƶ�ʱ��,T|cMakeTime','cMakeTime',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cModifyTime')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�޸�ʱ��','T','0000000112',null,null,0,'��ͷ|�޸�ʱ��,T|cModifyTime','cModifyTime',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cModifyDate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�޸�����','T','0000000112',null,null,0,'��ͷ|�޸�����,T|cModifyDate','cModifyDate',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cpocode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������','T','0000000112',null,null,0,'��ͷ|������,T|cpocode','cpocode',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='csysbarcode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������','T','0000000112',null,null,0,'��ͷ|��������,T|csysbarcode','csysbarcode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='iDiscountTaxType')   
	BEGIN  insert 
	into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','��˰���','T','0000000112',null,null,0,'��ͷ|��˰���,T|iDiscountTaxType','iDiscountTaxType',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cCode')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','���ݺ�','T','0000000112',null,null,1,'0000000001','cCode',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine3')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͷ�Զ�����3','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����3,T|cDefine3','cDefine3',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine6')   
	--BEGIN  
	--	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--	values   ('3','1','��ͷ�Զ�����6','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����6,T|cDefine6','cDefine6',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'T' AND fieldname='cDefine14')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','��ͷ�Զ�����14','T','0000000112',null,null,0,'��ͷ|��ͷ�Զ�����14,T|cDefine14','cDefine14',null,'1000000112',1,1)  
	--END

END
GO
 
-- ����
IF (1=1)   
BEGIN
  
  --  IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' 
		--AND fieldname='iorderid')   
  --  BEGIN  
		--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		--values   
		--('0','1','����ID','B','0000000112',null,null,0,'����|����ID,B|iorderid','iorderid',null,'1000000112',1,1)  
  --  END 
    IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' 
		AND fieldname='iorderdid')   
    BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   
		('0','1','��������ID','B','0000000112',null,null,0,'����|��������ID,B|iorderdid','iorderdid',null,'1000000112',1,1)  
    END
    IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' 
		AND fieldname='cordercode')   
    BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   
		('0','1','�������','B','0000000112',null,null,0,'����|�������,B|cordercode','cordercode',null,'1000000112',1,1)  
    END
    IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' 
		AND fieldname='iPOsID')   
    BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   
		('0','1','�ɹ���������ID','B','0000000112',null,null,0,'����|�ɹ���������ID,B|iPOsID','iPOsID',null,'1000000112',1,1)  
    END 
  --  IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' 
		--AND fieldname='carrivalcode')   
  --  BEGIN  
		--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		--values   
		--('0','1','�ɹ�����������','B','0000000112',null,null,0,'����|�ɹ�����������,B|cCode','carrivalcode',null,'1000000112',1,1)  
  --  END 
    IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' 
		AND fieldname='iCorId')   
    BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   
		('0','1','����������ID','B','0000000112',null,null,0,'����|����������ID,B|AUTOID','iCorId',null,'1000000112',1,1)  
    END  
    IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iTaxRate')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','˰��','B','0000000112',null,null,0,'����|˰��,B|iTaxRate','iTaxRate',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iinvexchrate')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','������','B','0000000112',null,null,0,'����|������,B|iinvexchrate','iinvexchrate',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iOriCost')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','ԭ�ҵ���','B','0000000112',null,null,0,'����|ԭ�ҵ���,B|iOriCost','iOriCost',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iOriTaxCost')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','��˰����','B','0000000112',null,null,0,'����|��˰����,B|iOriTaxCost','iOriTaxCost',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iOriMoney')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','ԭ�ҽ��','B','0000000112',null,null,0,'����|ԭ�ҽ��,B|pro_iOriMoney','iOriMoney',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iOriTaxPrice')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','ԭ��˰��','B','0000000112',null,null,0,'����|ԭ��˰��,B|pro_iOriTaxPrice','iOriTaxPrice',null,'1000000112',1,1)  
	--END
 --   IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iOriSum')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','ԭ�Ҽ�˰�ϼ�','B','0000000112',null,null,0,'����|ԭ�Ҽ�˰�ϼ�,B|pro_iOriSum','iOriSum',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iCost')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','���ҵ���','B','0000000112',null,null,0,'����|���ҵ���,B|iCost','iCost',null,'1000000112',1,1)  
	--END 
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iMoney')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','���ҽ��','B','0000000112',null,null,0,'����|���ҽ��,B|pro_iMoney','iMoney',null,'1000000112',1,1)  
	--END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iTaxPrice')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','����˰��','B','0000000112',null,null,0,'����|����˰��,B|pro_iTaxPrice','iTaxPrice',null,'1000000112',1,1)  
	--END  
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iSum')   
	--BEGIN  
	--insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	--values   ('3','1','���Ҽ�˰�ϼ�','B','0000000112',null,null,0,'����|���Ҽ�˰�ϼ�,B|pro_iSum','iSum',null,'1000000112',1,1)  
	--END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cInvCode')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','�������','B','0000000112',null,null,0,'����|�������,B|MES_cInvCode','cInvCode',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iQuantity')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','����������','B','0000000112',null,null,0,'����|����������,B|MES_iQuantity','iQuantity',null,'1000000112',1,1)  
	END
	
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree1')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������1','B','0000000112',null,null,0,'����|������1,B|cFree1','cFree1',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine31')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����10','B','0000000112',null,null,0,'����|�����Զ�����10,B|cDefine31','cDefine31',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine32')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����11','B','0000000112',null,null,0,'����|�����Զ�����11,B|cDefine32','cDefine32',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine33')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����12','B','0000000112',null,null,0,'����|�����Զ�����12,B|cDefine33','cDefine33',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine34')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����13','B','0000000112',null,null,0,'����|�����Զ�����13,B|cDefine34','cDefine34',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine35')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����14','B','0000000112',null,null,0,'����|�����Զ�����14,B|cDefine35','cDefine35',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine36')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����15','B','0000000112',null,null,0,'����|�����Զ�����15,B|cDefine36','cDefine36',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine37')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����16','B','0000000112',null,null,0,'����|�����Զ�����16,B|cDefine37','cDefine37',null,'1000000112',1,1)  END
	
	
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iCorId')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�������ӱ�id','B','0000000112',null,null,0,'����|�������ӱ�id,B|iCorId','iCorId',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatch')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','����','B','0000000112',null,null,0,'����|����,B|cBatch','cBatch',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='dPDate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������','B','0000000112',null,null,0,'����|��������,B|dPDate','dPDate',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='dVDate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','ʧЧ����','B','0000000112',null,null,0,'����|ʧЧ����,B|dVDate','dVDate',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='imassdate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������','B','0000000112',null,null,0,'����|������,B|imassdate','imassdate',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='bGsp')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','�Ƿ����','B','0000000112',null,null,0,'����|�Ƿ����,B|bGsp','bGsp',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='Autoid')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','�ӱ�id','B','0000000112',null,null,1,'','Autoid',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='ID')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','����id','B','0000000112',null,null,0,'����|����id,B|ID','ID',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cWhCode')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','�ֿ����','B','0000000112',null,null,0,'����|�ֿ����,B|MES_cWhCode','cWhCode',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='ivouchrowno')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�к�','B','0000000112',null,null,0,'����|�к�,B|ivouchrowno','ivouchrowno',null,'1000000112',1,1)  END
	
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cItemCode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��Ŀ����','B','0000000112',null,null,0,'����|��Ŀ����,B|cItemCode','cItemCode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cItem_class')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��Ŀ�������','B','0000000112',null,null,0,'����|��Ŀ�������,B|cItem_class','cItem_class',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iPOsID')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','�����ӱ�ID','B','0000000112',null,null,0,'����|�����ӱ�ID,B|iPOsID','iPOsID',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cItemName')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��Ŀ����','B','0000000112',null,null,0,'����|��Ŀ����,B|cItemName','cItemName',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree3')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������3','B','0000000112',null,null,0,'����|������3,B|cFree3','cFree3',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree4')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������4','B','0000000112',null,null,0,'����|������4,B|cFree4','cFree4',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree5')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������5','B','0000000112',null,null,0,'����|������5,B|cFree5','cFree5',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree6')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������6','B','0000000112',null,null,0,'����|������6,B|cFree6','cFree6',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree7')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������7','B','0000000112',null,null,0,'����|������7,B|cFree7','cFree7',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree8')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������8','B','0000000112',null,null,0,'����|������8,B|cFree8','cFree8',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree9')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������9','B','0000000112',null,null,0,'����|������9,B|cFree9','cFree9',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine29')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����8','B','0000000112',null,null,0,'����|�����Զ�����8,B|cDefine29','cDefine29',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine30')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����9','B','0000000112',null,null,0,'����|�����Զ�����9,B|cDefine30','cDefine30',null,'1000000112',1,1)  END
	
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iNum')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','����','B','0000000112',null,null,1,'-1','iNum',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cupsocode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','����Ʒ������','B','0000000112',null,null,0,'����|����Ʒ������,B|cupsocode','cupsocode',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty1')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������1','B','0000000112',null,null,0,'����|��������1,B|cBatchProperty1','cBatchProperty1',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty2')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������2','B','0000000112',null,null,0,'����|��������2,B|cBatchProperty2','cBatchProperty2',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty3')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������3','B','0000000112',null,null,0,'����|��������3,B|cBatchProperty3','cBatchProperty3',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty4')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������4','B','0000000112',null,null,0,'����|��������4,B|cBatchProperty4','cBatchProperty4',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty5')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������5','B','0000000112',null,null,0,'����|��������5,B|cBatchProperty5','cBatchProperty5',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty6')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������6','B','0000000112',null,null,0,'����|��������6,B|cBatchProperty6','cBatchProperty6',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty7')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������7','B','0000000112',null,null,0,'����|��������7,B|cBatchProperty7','cBatchProperty7',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty8')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������8','B','0000000112',null,null,0,'����|��������8,B|cBatchProperty8','cBatchProperty8',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty9')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������9','B','0000000112',null,null,0,'����|��������9,B|cBatchProperty9','cBatchProperty9',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cBatchProperty10')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������10','B','0000000112',null,null,0,'����|��������10,B|cBatchProperty10','cBatchProperty10',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iorderdid')   
	BEGIN  
		insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
		values   ('3','1','���۶����ӱ�id ','B','0000000112',null,null,0,'����|���۶����ӱ�id ,B|iorderdid','iorderdid',null,'1000000112',1,1)
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iordertype')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���۶������� ','B','0000000112',null,null,0,'����|���۶������� ,B|iordertype','iordertype',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='csoordercode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���۶����� ','B','0000000112',null,null,0,'����|���۶����� ,B|csoordercode','csoordercode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iorderseq')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���۶����к� ','B','0000000112',null,null,0,'����|���۶����к� ,B|iorderseq','iorderseq',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='fRefuseQuantity')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������','B','0000000112',null,null,0,'����|��������,B|fRefuseQuantity','fRefuseQuantity',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='fRefuseNum')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���ռ���','B','0000000112',null,null,0,'����|���ռ���,B|fRefuseNum','fRefuseNum',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='bexigency')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�Ƿ���','B','0000000112',null,null,0,'����|�Ƿ���,B|bexigency','bexigency',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cmassunit')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����ڵ�λ','B','0000000112',null,null,0,'����|�����ڵ�λ,B|cmassunit','cmassunit',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iPPartId')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','ĸ��Id','B','0000000112',null,null,0,'����|ĸ��Id,B|iPPartId','iPPartId',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='bInspect')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','�Ƿ��ѱ���','B','0000000112',null,null,0,'����|�Ƿ��ѱ���,B|bInspect','bInspect',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='igrouptype')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','igrouptype','B','0000000112',null,null,1,'0','igrouptype',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='bTaxCost')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','���۱�׼','B','0000000112',null,null,0,'����|���۱�׼,B|bTaxCost','bTaxCost',null,'1000000112',1,1)  
	END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='carrivalcode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������','B','0000000112',null,null,0,'����|��������,B|carrivalcode','carrivalcode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cbcloser')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�йر���','B','0000000112',null,null,0,'����|�йر���,B|cbcloser','cbcloser',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cbMemo')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ע','B','0000000112',null,null,0,'����|��ע,B|cbMemo','cbMemo',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cbsysbarcode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','����������','B','0000000112',null,null,0,'����|����������,B|cbsysbarcode','cbsysbarcode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine22')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����1','B','0000000112',null,null,0,'����|�����Զ�����1,B|cDefine22','cDefine22',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine23')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����2','B','0000000112',null,null,0,'����|�����Զ�����2,B|cDefine23','cDefine23',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine24')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����3','B','0000000112',null,null,0,'����|�����Զ�����3,B|cDefine24','cDefine24',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine25')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����4','B','0000000112',null,null,0,'����|�����Զ�����4,B|cDefine25','cDefine25',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine26')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����5','B','0000000112',null,null,0,'����|�����Զ�����5,B|cDefine26','cDefine26',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine27')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����6','B','0000000112',null,null,0,'����|�����Զ�����6,B|cDefine27','cDefine27',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cDefine28')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�����Զ�����7','B','0000000112',null,null,0,'����|�����Զ�����7,B|cDefine28','cDefine28',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cExpirationdate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��Ч����','B','0000000112',null,null,0,'����|��Ч����,B|cExpirationdate','cExpirationdate',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree10')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������10','B','0000000112',null,null,0,'����|������10,B|cFree10','cFree10',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cFree2')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������2','B','0000000112',null,null,0,'����|������2,B|cFree2','cFree2',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='ContractCode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͬ��','B','0000000112',null,null,0,'����|��ͬ��,B|ContractCode','ContractCode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='ContractRowGUID')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͬ���GUID','B','0000000112',null,null,0,'����|��ͬ���GUID,B|ContractRowGUID','ContractRowGUID',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='ContractRowNo')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��ͬ��ı���','B','0000000112',null,null,0,'����|��ͬ��ı���,B|ContractRowNo','ContractRowNo',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cordercode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������','B','0000000112',null,null,0,'����|������,B|cordercode','cordercode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='csocode')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','������ٺ�','B','0000000112',null,null,0,'����|������ٺ�,B|csocode','csocode',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cUnitID')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','��λ����','B','0000000112',null,null,0,'����|��λ����,B|cUnitID','cUnitID',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='cinvm_unit')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','cinvm_unit','B','0000000112',null,null,0,'����|��λ����,B|cUnitID','cinvm_unit',null,'1000000112',1,1)  
	END
	
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='dExpirationdate')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��Ч�ڼ�����','B','0000000112',null,null,0,'����|��Ч�ڼ�����,B|dExpirationdate','dExpirationdate',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='finValidQuantity')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','���ϸ�����','B','0000000112',null,null,0,'����|���ϸ�����,B|finValidQuantity','finValidQuantity',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='fRealQuantity')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','ʵ������','B','0000000112',null,null,0,'����|ʵ������,B|fRealQuantity','fRealQuantity',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='FSumRefuseNum')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�Ѿ��ռ���','B','0000000112',null,null,0,'����|�Ѿ��ռ���,B|FSumRefuseNum','FSumRefuseNum',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='fSumRefuseQuantity')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','�Ѿ�������','B','0000000112',null,null,0,'����|�Ѿ�������,B|fSumRefuseQuantity','fSumRefuseQuantity',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='fValidQuantity')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','�ϸ�����','B','0000000112',null,null,0,'����|�ϸ�����,B|fValidQuantity','fValidQuantity',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iExpiratDateCalcu')   
	BEGIN  
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','��Ч�����㷽ʽ','B','0000000112',null,null,0,'����|��Ч�����㷽ʽ,B|iExpiratDateCalcu','iExpiratDateCalcu',null,'1000000112',1,1)  
	END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iInvMPCost')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��߽���','B','0000000112',null,null,0,'����|��߽���,B|iInvMPCost','iInvMPCost',null,'1000000112',1,1)  END

	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='iPTOSeq')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','ѡ�����','B','0000000112',null,null,0,'����|ѡ�����,B|iPTOSeq','iPTOSeq',null,'1000000112',1,1)  END
	--IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='irejectautoid')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','irejectautoid','B','0000000112',null,null,0,'����|irejectautoid,B|irejectautoid','irejectautoid',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='irowno')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������к�','B','0000000112',null,null,0,'����|��������к�,B|irowno','irowno',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='SoDId')   BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values   ('3','1','��������ӱ�ID','B','0000000112',null,null,0,'����|��������ӱ�ID,B|SoDId','SoDId',null,'1000000112',1,1)  END
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='SoType')   
	BEGIN  insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) 
	values   ('3','1','������ٷ�ʽ','B','0000000112',null,null,0,'����|������ٷ�ʽ,B|SoType','SoType',null,'1000000112',1,1)  
	END
	if not exists(select 1 from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000112' and cardsection= 'B' and fieldname= 'cFactoryCode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000115474',  '1000000112',  '0000000112',  0,  '����|��������,B|cFactoryCode',  '',  'B',  'cFactoryCode',  '��������',  '0', null,  '1',  'B2D5B722-F134-4DA7-924A-C6BCD36EE6D3', null)
	IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMPS WHERE TaskType = '3' AND id='1000000112' AND cardsection = 'B' AND fieldname='editprop') 
	BEGIN
	insert into MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
	('3','1','������ʶ','B','0000000112',null,null,0,'����|������ʶ,B|editprop','editprop',null,'1000000112',1,1)
	END

END 
GO
 
    