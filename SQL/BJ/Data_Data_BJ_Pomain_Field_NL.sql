
IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMP WHERE TaskType = '3' AND cfrombillcardnum='' AND ctobillcardnum='88' )  
BEGIN
 insert into MES_Comm_FIELDCMP (TaskType, ccode,cfrombillcardnum,cname,ctobillcardnum,id,iprintcount,vt_id ) values 
  ('3','0000000110','','MES���ɲɹ�����','88','1000000110',null,'17')
END

GO
 
-- MES���ɲɹ�����
-- DELETE FROM MES_CQ_FIXVALUE WHERE DID IN (SELECT AUTOID FROM  MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000110')
-- DELETE FROM MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000110'
-- ��ͷ
IF (1=1)  
BEGIN
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cbustype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
		(3,  '1000010596',  '1000000110',  '0000000110',  1,  '��ͨ�ɹ�', null,  'T',  'cbustype',  'ҵ������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine1')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012136',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����1,T|cdefine1', null,  'T',  'cdefine1',  '��ͷ�Զ�����1',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine10')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012163',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����10,T|cdefine10', null,  'T',  'cdefine10',  '��ͷ�Զ�����10',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine11')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012166',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����11,T|cdefine11', null,  'T',  'cdefine11',  '��ͷ�Զ�����11',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine12')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012169',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����12,T|cdefine12', null,  'T',  'cdefine12',  '��ͷ�Զ�����12',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine13')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012172',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����13,T|cdefine13', null,  'T',  'cdefine13',  '��ͷ�Զ�����13',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine14')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012175',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����14,T|cdefine14', null,  'T',  'cdefine14',  '��ͷ�Զ�����14',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine15')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012178',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����15,T|cdefine15', null,  'T',  'cdefine15',  '��ͷ�Զ�����15',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine16')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012181',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����16,T|cdefine16', null,  'T',  'cdefine16',  '��ͷ�Զ�����16',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine2')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012139',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����2,T|cdefine2', null,  'T',  'cdefine2',  '��ͷ�Զ�����2',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine3')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012142',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����3,T|cdefine3', null,  'T',  'cdefine3',  '��ͷ�Զ�����3',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine4')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012145',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����4,T|cdefine4', null,  'T',  'cdefine4',  '��ͷ�Զ�����4',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine5')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012148',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����5,T|cdefine5', null,  'T',  'cdefine5',  '��ͷ�Զ�����5',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine6')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012151',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����6,T|cdefine6', null,  'T',  'cdefine6',  '��ͷ�Զ�����6',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine7')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012154',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����7,T|cdefine7', null,  'T',  'cdefine7',  '��ͷ�Զ�����7',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine8')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012157',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����8,T|cdefine8', null,  'T',  'cdefine8',  '��ͷ�Զ�����8',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine9')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012160',  '1000000110',  '0000000110',  0,  '��ͷ|��ͷ�Զ�����9,T|cdefine9', null,  'T',  'cdefine9',  '��ͷ�Զ�����9',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdepcode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012124',  '1000000110',  '0000000110',  0,  '��ͷ|���ű��,T|cdepcode', null,  'T',  'cdepcode',  '���ű��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cexch_name')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010599',  '1000000110',  '0000000110',  0,  '��ͷ|����,T|cexch_name', null,  'T',  'cexch_name',  '��������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cmaker')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010601',  '1000000110',  '0000000110',  0,  '��ͷ|�Ƶ���,T|cmaker', null,  'T',  'cmaker',  '�Ƶ���',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cmemo')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012125',  '1000000110',  '0000000110',  0,  '��ͷ|��ע,T|cmemo', null,  'T',  'cmemo',  '��ͷ��ע',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cpaycode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012121',  '1000000110',  '0000000110',  1, null, null,  'T',  'cpaycode',  '�����������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cpersoncode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012123',  '1000000110',  '0000000110',  0,  '��ͷ|ҵ��Ա���,T|cpersoncode', null,  'T',  'cpersoncode',  'ҵ��Ա���',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cpoid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010598',  '1000000110',  '0000000110',  1, null, null,  'T',  'cpoid',  '�ɹ�������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cptcode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012122',  '1000000110',  '0000000110',  0,  '��ͷ|�ɹ����ͱ��,T|cptcode', null,  'T',  'cptcode',  '�ɹ����ͱ��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cvencode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010602',  '1000000110',  '0000000110',  0,  '��ͷ|������λ���,T|cvencode', null,  'T',  'cvencode',  '��Ӧ�̱���',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'dpodate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010597',  '1000000110',  '0000000110',  0,  '��ͷ|����,T|dpodate', null,  'T',  'dpodate',  '��������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'idiscounttaxtype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010603',  '1000000110',  '0000000110',  1,  '0', null,  'T',  'idiscounttaxtype',  '��˰��� (0Ӧ˰���,1Ӧ˰�ں�)',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'ireturncount')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015426',  '1000000110',  '0000000110',  1, null, null,  'T',  'ireturncount',  '��ش���',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'iswfcontrolled')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015424',  '1000000110',  '0000000110',  1, null, null,  'T',  'iswfcontrolled',  '�Ƿ���������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'itaxrate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012529',  '1000000110',  '0000000110',  1,  '17', null,  'T',  'itaxrate',  '��ͷ˰��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'iverifystateex')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015425',  '1000000110',  '0000000110',  1, null, null,  'T',  'iverifystateex',  '״̬',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'ivtid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012565',  '1000000110',  '0000000110',  1, null, null,  'T',  'ivtid',  '����ģ���',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'nflat')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010600',  '1000000110',  '0000000110',  0,  '��ͷ|����,T|nflat', null,  'T',  'nflat',  '����',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'poid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010595',  '1000000110',  '0000000110',  1, null, null,  'T',  'poid',  '�ɹ����������ʶ',  '0', null,  '1', null, null)



END
GO
 
-- ����
IF (1=1)   
BEGIN 
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'bgsp')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010610',  '1000000110',  '0000000110',  1,  '0', null,  'B',  'bgsp',  '���ʼ�',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine22')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012220',  '1000000110',  '0000000110',  0,  '����|�����Զ�����1,B|cdefine22', null,  'B',  'cdefine22',  '�����Զ�����1',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine23')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012223',  '1000000110',  '0000000110',  0,  '����|�����Զ�����2,B|cdefine23', null,  'B',  'cdefine23',  '�����Զ�����2',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine24')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012226',  '1000000110',  '0000000110',  0,  '����|�����Զ�����3,B|cdefine24', null,  'B',  'cdefine24',  '�����Զ�����3',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine25')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012229',  '1000000110',  '0000000110',  0,  '����|�����Զ�����4,B|cdefine25', null,  'B',  'cdefine25',  '�����Զ�����4',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine26')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012232',  '1000000110',  '0000000110',  0,  '����|�����Զ�����5,B|cdefine26', null,  'B',  'cdefine26',  '�����Զ�����5',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine27')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012235',  '1000000110',  '0000000110',  0,  '����|�����Զ�����6,B|cdefine27', null,  'B',  'cdefine27',  '�����Զ�����6',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine28')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012238',  '1000000110',  '0000000110',  0,  '����|�����Զ�����7,B|cdefine28', null,  'B',  'cdefine28',  '�����Զ�����7',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine29')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012241',  '1000000110',  '0000000110',  0,  '����|�����Զ�����8,B|cdefine29', null,  'B',  'cdefine29',  '�����Զ�����8',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine30')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012244',  '1000000110',  '0000000110',  0,  '����|�����Զ�����9,B|cdefine30', null,  'B',  'cdefine30',  '�����Զ�����9',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine31')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012247',  '1000000110',  '0000000110',  0,  '����|�����Զ�����10,B|cdefine31', null,  'B',  'cdefine31',  '�����Զ�����10',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine32')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012250',  '1000000110',  '0000000110',  0,  '����|�����Զ�����11,B|cdefine32', null,  'B',  'cdefine32',  '�����Զ�����11',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine33')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012253',  '1000000110',  '0000000110',  0,  '����|�����Զ�����12,B|cdefine33', null,  'B',  'cdefine33',  '�����Զ�����12',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine34')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012256',  '1000000110',  '0000000110',  0,  '����|�����Զ�����13,B|cdefine34', null,  'B',  'cdefine34',  '�����Զ�����13',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine35')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012259',  '1000000110',  '0000000110',  0,  '����|�����Զ�����14,B|cdefine35', null,  'B',  'cdefine35',  '�����Զ�����14',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine36')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012262',  '1000000110',  '0000000110',  0,  '����|�����Զ�����15,B|cdefine36', null,  'B',  'cdefine36',  '�����Զ�����15',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine37')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012265',  '1000000110',  '0000000110',  0,  '����|�����Զ�����16,B|cdefine37', null,  'B',  'cdefine37',  '�����Զ�����16',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdemandmemo')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015419',  '1000000110',  '0000000110',  0,  '����|����������˵��,B|cdemandmemo', null,  'B',  'cdemandmemo',  '����������˵��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cFactoryCode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015474',  '1000000110',  '0000000110',  1,  '',  '',  'B',  'cFactoryCode',  '��������',  '0', null,  '1',  'B2D5B722-F134-4DA7-924A-C6BCD36EE6D3', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree1')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012190',  '1000000110',  '0000000110',  0,  '����|������1,B|cfree1', null,  'B',  'cfree1',  '������1',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree10')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012217',  '1000000110',  '0000000110',  0,  '����|������10,B|cfree10', null,  'B',  'cfree10',  '������10',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree2')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012193',  '1000000110',  '0000000110',  0,  '����|������2,B|cfree2', null,  'B',  'cfree2',  '������2',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree3')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012196',  '1000000110',  '0000000110',  0,  '����|������3,B|cfree3', null,  'B',  'cfree3',  '������3',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree4')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012199',  '1000000110',  '0000000110',  0,  '����|������4,B|cfree4', null,  'B',  'cfree4',  '������4',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree5')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012202',  '1000000110',  '0000000110',  0,  '����|������5,B|cfree5', null,  'B',  'cfree5',  '������5',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree6')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012205',  '1000000110',  '0000000110',  0,  '����|������6,B|cfree6', null,  'B',  'cfree6',  '������6',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree7')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012208',  '1000000110',  '0000000110',  0,  '����|������7,B|cfree7', null,  'B',  'cfree7',  '������7',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree8')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012211',  '1000000110',  '0000000110',  0,  '����|������8,B|cfree8', null,  'B',  'cfree8',  '������8',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree9')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012214',  '1000000110',  '0000000110',  0,  '����|������9,B|cfree9', null,  'B',  'cfree9',  '������9',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cinva_unit')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012184',  '1000000110',  '0000000110',  2,  '���ݴ����ȡ������λ��Ϣ(��Դ����.����.�������).�ɹ�Ĭ�ϼ�����λ����',  '010',  'B',  'cinva_unit',  '�ɹ���λ',  '0', null,  '1',  '3B81A59E-50A4-4BA3-93F0-694699D09B2F', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cinvcode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010605',  '1000000110',  '0000000110',  0,  '����|�������,B|cinvcode', null,  'B',  'cinvcode',  '�������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cinvm_unit')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012490',  '1000000110',  '0000000110',  2,  '���ݴ����ȡ������λ��Ϣ(Ŀ�굥��.����.�������).��������λ����',  '010',  'B',  'cinvm_unit',  '��������λ',  '0', null,  '1',  'AD14CABB-82E8-4F12-8742-29841BC3334E', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'csocode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015420',  '1000000110',  '0000000110',  0,  '����|������ٺ�,B|csocode', null,  'B',  'csocode',  '������ٺ�',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'csource')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012507',  '1000000110',  '0000000110',  1,  'app', null,  'B',  'csource',  '��Դ����',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cunitid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010612',  '1000000110',  '0000000110',  0,  '����|��λ����,B|cunitid', null,  'B',  'cunitid',  '��λ����',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cupsocode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012535',  '1000000110',  '0000000110',  2,  '��ȡ���ε�����Ϣ(������.��������.��ǰ·�ߺ�,������.��������.Ŀ�굥������ID,������.��������.�ɹ��빺��,������.��������.��ǰ�к�).���ݱ��',  '009',  'B',  'cupsocode',  '���ε��ݺ�',  '0', null,  '1',  '895FE823-D71B-426E-8FDA-4182FB4B0D46', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'darrivedate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010607',  '1000000110',  '0000000110',  0,  '����|�ƻ���������,B|darrivedate', null,  'B',  'darrivedate',  '�ƻ���������',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'editprop')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010611',  '1000000110',  '0000000110',  1,  'A', null,  'B',  'editprop',  '�༭���ԣ�A��������M���޸ģ�D��ɾ��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iappids')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012508',  '1000000110',  '0000000110',  2,  '��ȡ���ε�����Ϣ(������.��������.��ǰ·�ߺ�,������.��������.Ŀ�굥������ID,������.��������.�ɹ��빺��,������.��������.��ǰ�к�).�ӵ���ID',  '009',  'B',  'iappids',  '�빺���ӱ�ID',  '0', null,  '1',  '827F5D0C-A86D-4E59-B90D-8B84F7536230', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'id')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010604',  '1000000110',  '0000000110',  1, null, null,  'B',  'id',  '�ɹ������ӱ��ʶ',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iinvexchrate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012489',  '1000000110',  '0000000110',  0,  '����|������,B|iinvexchrate', null,  'B',  'iinvexchrate',  '������',  '0', null,  '1',  '4AE9CF70-933A-4306-921A-49CD1390B131', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'imoney')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010993',  '1000000110',  '0000000110',  0,  '����|ԭ�ҽ��,B|imoney', null,  'B',  'imoney',  'ԭ�ҽ��',  '0', null,  '1',  '1945587F-EC29-4787-8815-8B0012234D6E', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inatmoney')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012547',  '1000000110',  '0000000110',  0,  '����|���ҽ��,B|inatmoney', null,  'B',  'inatmoney',  '���ҽ��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inatsum')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012549',  '1000000110',  '0000000110',  0,  '����|���Ҽ�˰�ϼ�,B|inatsum', null,  'B',  'inatsum',  '���Ҽ�˰�ϼ�',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inattax')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012548',  '1000000110',  '0000000110',  0,  '����|����˰��,B|inattax', null,  'B',  'inattax',  '����˰��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inatunitprice')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012546',  '1000000110',  '0000000110',  0,  '����|���ҵ���,B|inatunitprice', null,  'B',  'inatunitprice',  '���ҵ���',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inum')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012506',  '1000000110',  '0000000110',  0,  '����|����,B|inum', null,  'B',  'inum',  '����',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'ipertaxrate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010608',  '1000000110',  '0000000110',  0,  '����|˰��,B|ipertaxrate', null,  'B',  'ipertaxrate',  '˰��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iquantity')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010606',  '1000000110',  '0000000110',  0,  '����|����,B|iquantity', null,  'B',  'iquantity',  '����',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'irequiretrackstyle')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015421',  '1000000110',  '0000000110',  0,  '����|���������ٷ�ʽ,B|irequiretrackstyle', null,  'B',  'irequiretrackstyle',  '���������ٷ�ʽ',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'irowno')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012581',  '1000000110',  '0000000110',  1, null, null,  'B',  'irowno',  '��������к�',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'isum')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012496',  '1000000110',  '0000000110',  0,  '����|ԭ�Ҽ�˰�ϼ�,B|isum', null,  'B',  'isum',  'ԭ�Ҽ�˰�ϼ�',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'itax')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010994',  '1000000110',  '0000000110',  0,  '����|ԭ��˰��,B|itax', null,  'B',  'itax',  'ԭ��˰��',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'itaxprice')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012504',  '1000000110',  '0000000110',  0,  '����|��˰����,B|itaxprice', null,  'B',  'itaxprice',  'ԭ�Һ�˰����',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iunitprice')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010992',  '1000000110',  '0000000110',  0,  '����|ԭ�ҵ���,B|iunitprice', null,  'B',  'iunitprice',  'ԭ�ҵ���',  '0', null,  '1',  '3F8D314E-F6AE-4E8E-987B-324C8BAF0510', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'poid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010609',  '1000000110',  '0000000110',  1, null, null,  'B',  'poid',  '�ɹ����������ʶ',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'sodid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015422',  '1000000110',  '0000000110',  0,  '����|��������ӱ�ID,B|sodid', null,  'B',  'sodid',  '��������ӱ�ID',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'sotype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015423',  '1000000110',  '0000000110',  0,  '����|������ٷ�ʽ,B|sotype', null,  'B',  'sotype',  '������ٷ�ʽ',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'xtTrace_PreAccid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015349',  '1000000110',  '0000000110',  2,  '��ȡ����������Ϣ(������.��������.��Դ��������ID,������.��������.Ŀ�굥������ID,������.��������.�ɹ�����,������.��������.�ɹ�����,��Դ����.����.�ɹ������ӱ�ID).��Դ��������ID',  '019',  'B',  'xtTrace_PreAccid',  '�������׺�',  '0', null,  '0',  'B2C1B8F8-FE14-4F65-8C3D-6C3CFC63BAE9', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'xtTrace_PreCvouchertype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015350',  '1000000110',  '0000000110',  2,  '��ȡ����������Ϣ(������.��������.��Դ��������ID,������.��������.Ŀ�굥������ID,������.��������.�ɹ�����,������.��������.�ɹ�����,��Դ����.����.�ɹ������ӱ�ID).��Դ��������',  '019',  'B',  'xtTrace_PreCvouchertype',  '���ε�������',  '0', null,  '0',  'DE546543-7025-4C8C-93B0-E0F1038D8A36', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'xtTrace_Predid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015351',  '1000000110',  '0000000110',  2,  '��ȡ����������Ϣ(������.��������.��Դ��������ID,������.��������.Ŀ�굥������ID,������.��������.�ɹ�����,������.��������.�ɹ�����,��Դ����.����.�ɹ������ӱ�ID).��Դ���ݱ���ID',  '019',  'B',  'xtTrace_Predid',  '���α���ID',  '0', null,  '0',  '17ED129E-EEFE-42B4-9AF8-E9C417AB8377', null)


 
END

GO
 


---- DELETE FROM MES_CQ_FIXVALUE WHERE DID IN (SELECT AUTOID FROM  MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000110') 
---- DELETE FROM MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000110'   
--IF (1=1)  
--BEGIN 
	
--declare @fieldcmpId nvarchar(20)
--declare @fieldcmpCode nvarchar(20)
--declare @autoid bigint
--declare @guid nvarchar(120)
--declare @autoidFixvalue bigint
--declare @fieldname nvarchar(20)
--set @autoid=0 
--set @fieldcmpCode = '0000000110'
--set @fieldcmpId = '1000000110'

--set @fieldname = 'iprice'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname=@fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'���ҽ��','B',@fieldcmpCode,'017',null,2,'��ȡ���(��Դ����.����.ʵ������).���ҽ��',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','mes_iquantity',1,'2','��Դ����.����.ʵ������',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','ioritaxcost',2,'2','��Դ����.����.ԭ�Һ�˰����',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'T','S','017','iexchrate',3,'2','����',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','itaxrate',4,'2','˰��',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'017','inatmoney',5,'3','���ҽ��',@autoid,@guid) 
--END 

--set @fieldname = 'isum'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'���Ҽ�˰�ϼ�','B',@fieldcmpCode,'017',null,2,'��ȡ���(��Դ����.����.ʵ������).���Ҽ�˰�ϼ�',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','mes_iquantity',1,'2','��Դ����.����.ʵ������',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','ioritaxcost',2,'2','��Դ����.����.ԭ�Һ�˰����',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'T','S','017','iexchrate',3,'2','����',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','itaxrate',4,'2','˰��',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'017','inatsum',7,'3','���Ҽ�˰�ϼ�',@autoid,@guid) 
--END 

--set @fieldname = 'itaxprice'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'����˰��','B',@fieldcmpCode,'017',null,2,'��ȡ���(��Դ����.����.ʵ������).����˰��',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','mes_iquantity',1,'2','��Դ����.����.ʵ������',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','ioritaxcost',2,'2','��Դ����.����.ԭ�Һ�˰����',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'T','S','017','iexchrate',3,'2','����',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','itaxrate',4,'2','˰��',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'017','inattax',7,'3','����˰��',@autoid,@guid) 
--END 



--set @fieldname = 'iorimoney'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname=@fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'ԭ�ҽ��','B',@fieldcmpCode,'016',null,2,'��ȡ���(��Դ����.����.ʵ������).ԭ�ҽ��',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','mes_iquantity',1,'2','��Դ����.����.ʵ������',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','ioritaxcost',2,'2','��Դ����.����.ԭ�Һ�˰����',@autoid,@guid) 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','itaxrate',3,'2','˰��',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'016','imoney',5,'3','ԭ�ҽ��',@autoid,@guid) 
--END 

--set @fieldname = 'iorisum'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'ԭ�Ҽ�˰�ϼ�','B',@fieldcmpCode,'016',null,2,'��ȡ���(��Դ����.����.ʵ������).ԭ�Ҽ�˰�ϼ�',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','mes_iquantity',1,'2','��Դ����.����.ʵ������',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','ioritaxcost',2,'2','��Դ����.����.ԭ�Һ�˰����',@autoid,@guid) 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','itaxrate',3,'2','˰��',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'016','isum',5,'3','ԭ�Ҽ�˰�ϼ�',@autoid,@guid) 
--END 

--set @fieldname = 'ioritaxprice'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'ԭ��˰��','B',@fieldcmpCode,'016',null,2,'��ȡ���(��Դ����.����.ʵ������).ԭ��˰��',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','mes_iquantity',1,'2','��Դ����.����.ʵ������',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','ioritaxcost',2,'2','��Դ����.����.ԭ�Һ�˰����',@autoid,@guid) 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','itaxrate',3,'2','˰��',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'016','itax',5,'3','ԭ��˰��',@autoid,@guid) 
--END 


--END
--GO