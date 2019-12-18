
IF NOT EXISTS (SELECT 1 FROM MES_Comm_FIELDCMP WHERE TaskType = '3' AND cfrombillcardnum='' AND ctobillcardnum='88' )  
BEGIN
 insert into MES_Comm_FIELDCMP (TaskType, ccode,cfrombillcardnum,cname,ctobillcardnum,id,iprintcount,vt_id ) values 
  ('3','0000000110','','MES生成采购订单','88','1000000110',null,'17')
END

GO
 
-- MES生成采购订单
-- DELETE FROM MES_CQ_FIXVALUE WHERE DID IN (SELECT AUTOID FROM  MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000110')
-- DELETE FROM MES_Comm_FIELDCMPS  WHERE TaskType = '3' AND id='1000000110'
-- 表头
IF (1=1)  
BEGIN
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cbustype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
		(3,  '1000010596',  '1000000110',  '0000000110',  1,  '普通采购', null,  'T',  'cbustype',  '业务类型',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine1')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012136',  '1000000110',  '0000000110',  0,  '表头|表头自定义项1,T|cdefine1', null,  'T',  'cdefine1',  '表头自定义项1',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine10')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012163',  '1000000110',  '0000000110',  0,  '表头|表头自定义项10,T|cdefine10', null,  'T',  'cdefine10',  '表头自定义项10',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine11')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012166',  '1000000110',  '0000000110',  0,  '表头|表头自定义项11,T|cdefine11', null,  'T',  'cdefine11',  '表头自定义项11',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine12')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012169',  '1000000110',  '0000000110',  0,  '表头|表头自定义项12,T|cdefine12', null,  'T',  'cdefine12',  '表头自定义项12',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine13')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012172',  '1000000110',  '0000000110',  0,  '表头|表头自定义项13,T|cdefine13', null,  'T',  'cdefine13',  '表头自定义项13',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine14')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012175',  '1000000110',  '0000000110',  0,  '表头|表头自定义项14,T|cdefine14', null,  'T',  'cdefine14',  '表头自定义项14',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine15')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012178',  '1000000110',  '0000000110',  0,  '表头|表头自定义项15,T|cdefine15', null,  'T',  'cdefine15',  '表头自定义项15',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine16')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012181',  '1000000110',  '0000000110',  0,  '表头|表头自定义项16,T|cdefine16', null,  'T',  'cdefine16',  '表头自定义项16',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine2')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012139',  '1000000110',  '0000000110',  0,  '表头|表头自定义项2,T|cdefine2', null,  'T',  'cdefine2',  '表头自定义项2',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine3')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012142',  '1000000110',  '0000000110',  0,  '表头|表头自定义项3,T|cdefine3', null,  'T',  'cdefine3',  '表头自定义项3',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine4')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012145',  '1000000110',  '0000000110',  0,  '表头|表头自定义项4,T|cdefine4', null,  'T',  'cdefine4',  '表头自定义项4',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine5')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012148',  '1000000110',  '0000000110',  0,  '表头|表头自定义项5,T|cdefine5', null,  'T',  'cdefine5',  '表头自定义项5',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine6')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012151',  '1000000110',  '0000000110',  0,  '表头|表头自定义项6,T|cdefine6', null,  'T',  'cdefine6',  '表头自定义项6',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine7')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012154',  '1000000110',  '0000000110',  0,  '表头|表头自定义项7,T|cdefine7', null,  'T',  'cdefine7',  '表头自定义项7',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine8')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012157',  '1000000110',  '0000000110',  0,  '表头|表头自定义项8,T|cdefine8', null,  'T',  'cdefine8',  '表头自定义项8',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdefine9')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012160',  '1000000110',  '0000000110',  0,  '表头|表头自定义项9,T|cdefine9', null,  'T',  'cdefine9',  '表头自定义项9',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cdepcode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012124',  '1000000110',  '0000000110',  0,  '表头|部门编号,T|cdepcode', null,  'T',  'cdepcode',  '部门编号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cexch_name')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010599',  '1000000110',  '0000000110',  0,  '表头|币种,T|cexch_name', null,  'T',  'cexch_name',  '币种名称',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cmaker')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010601',  '1000000110',  '0000000110',  0,  '表头|制单人,T|cmaker', null,  'T',  'cmaker',  '制单人',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cmemo')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012125',  '1000000110',  '0000000110',  0,  '表头|备注,T|cmemo', null,  'T',  'cmemo',  '表头备注',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cpaycode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012121',  '1000000110',  '0000000110',  1, null, null,  'T',  'cpaycode',  '付款条件编号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cpersoncode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012123',  '1000000110',  '0000000110',  0,  '表头|业务员编号,T|cpersoncode', null,  'T',  'cpersoncode',  '业务员编号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cpoid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010598',  '1000000110',  '0000000110',  1, null, null,  'T',  'cpoid',  '采购订单号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cptcode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012122',  '1000000110',  '0000000110',  0,  '表头|采购类型编号,T|cptcode', null,  'T',  'cptcode',  '采购类型编号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'cvencode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010602',  '1000000110',  '0000000110',  0,  '表头|供货单位编号,T|cvencode', null,  'T',  'cvencode',  '供应商编码',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'dpodate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010597',  '1000000110',  '0000000110',  0,  '表头|日期,T|dpodate', null,  'T',  'dpodate',  '单据日期',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'idiscounttaxtype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010603',  '1000000110',  '0000000110',  1,  '0', null,  'T',  'idiscounttaxtype',  '扣税类别 (0应税外加,1应税内含)',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'ireturncount')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015426',  '1000000110',  '0000000110',  1, null, null,  'T',  'ireturncount',  '打回次数',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'iswfcontrolled')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015424',  '1000000110',  '0000000110',  1, null, null,  'T',  'iswfcontrolled',  '是否工作流控制',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'itaxrate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012529',  '1000000110',  '0000000110',  1,  '17', null,  'T',  'itaxrate',  '表头税率',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'iverifystateex')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015425',  '1000000110',  '0000000110',  1, null, null,  'T',  'iverifystateex',  '状态',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'ivtid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012565',  '1000000110',  '0000000110',  1, null, null,  'T',  'ivtid',  '单据模版号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'nflat')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010600',  '1000000110',  '0000000110',  0,  '表头|汇率,T|nflat', null,  'T',  'nflat',  '汇率',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'T' and fieldname= 'poid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010595',  '1000000110',  '0000000110',  1, null, null,  'T',  'poid',  '采购订单主表标识',  '0', null,  '1', null, null)



END
GO
 
-- 表体
IF (1=1)   
BEGIN 
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'bgsp')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010610',  '1000000110',  '0000000110',  1,  '0', null,  'B',  'bgsp',  '否质检',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine22')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012220',  '1000000110',  '0000000110',  0,  '表体|表体自定义项1,B|cdefine22', null,  'B',  'cdefine22',  '表体自定义项1',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine23')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012223',  '1000000110',  '0000000110',  0,  '表体|表体自定义项2,B|cdefine23', null,  'B',  'cdefine23',  '表体自定义项2',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine24')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012226',  '1000000110',  '0000000110',  0,  '表体|表体自定义项3,B|cdefine24', null,  'B',  'cdefine24',  '表体自定义项3',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine25')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012229',  '1000000110',  '0000000110',  0,  '表体|表体自定义项4,B|cdefine25', null,  'B',  'cdefine25',  '表体自定义项4',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine26')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012232',  '1000000110',  '0000000110',  0,  '表体|表体自定义项5,B|cdefine26', null,  'B',  'cdefine26',  '表体自定义项5',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine27')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012235',  '1000000110',  '0000000110',  0,  '表体|表体自定义项6,B|cdefine27', null,  'B',  'cdefine27',  '表体自定义项6',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine28')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012238',  '1000000110',  '0000000110',  0,  '表体|表体自定义项7,B|cdefine28', null,  'B',  'cdefine28',  '表体自定义项7',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine29')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012241',  '1000000110',  '0000000110',  0,  '表体|表体自定义项8,B|cdefine29', null,  'B',  'cdefine29',  '表体自定义项8',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine30')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012244',  '1000000110',  '0000000110',  0,  '表体|表体自定义项9,B|cdefine30', null,  'B',  'cdefine30',  '表体自定义项9',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine31')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012247',  '1000000110',  '0000000110',  0,  '表体|表体自定义项10,B|cdefine31', null,  'B',  'cdefine31',  '表体自定义项10',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine32')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012250',  '1000000110',  '0000000110',  0,  '表体|表体自定义项11,B|cdefine32', null,  'B',  'cdefine32',  '表体自定义项11',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine33')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012253',  '1000000110',  '0000000110',  0,  '表体|表体自定义项12,B|cdefine33', null,  'B',  'cdefine33',  '表体自定义项12',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine34')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012256',  '1000000110',  '0000000110',  0,  '表体|表体自定义项13,B|cdefine34', null,  'B',  'cdefine34',  '表体自定义项13',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine35')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012259',  '1000000110',  '0000000110',  0,  '表体|表体自定义项14,B|cdefine35', null,  'B',  'cdefine35',  '表体自定义项14',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine36')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012262',  '1000000110',  '0000000110',  0,  '表体|表体自定义项15,B|cdefine36', null,  'B',  'cdefine36',  '表体自定义项15',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdefine37')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012265',  '1000000110',  '0000000110',  0,  '表体|表体自定义项16,B|cdefine37', null,  'B',  'cdefine37',  '表体自定义项16',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cdemandmemo')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015419',  '1000000110',  '0000000110',  0,  '表体|需求分类代号说明,B|cdemandmemo', null,  'B',  'cdemandmemo',  '需求分类代号说明',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cFactoryCode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015474',  '1000000110',  '0000000110',  1,  '',  '',  'B',  'cFactoryCode',  '工厂编码',  '0', null,  '1',  'B2D5B722-F134-4DA7-924A-C6BCD36EE6D3', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree1')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012190',  '1000000110',  '0000000110',  0,  '表体|自由项1,B|cfree1', null,  'B',  'cfree1',  '自由项1',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree10')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012217',  '1000000110',  '0000000110',  0,  '表体|自由项10,B|cfree10', null,  'B',  'cfree10',  '自由项10',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree2')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012193',  '1000000110',  '0000000110',  0,  '表体|自由项2,B|cfree2', null,  'B',  'cfree2',  '自由项2',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree3')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012196',  '1000000110',  '0000000110',  0,  '表体|自由项3,B|cfree3', null,  'B',  'cfree3',  '自由项3',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree4')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012199',  '1000000110',  '0000000110',  0,  '表体|自由项4,B|cfree4', null,  'B',  'cfree4',  '自由项4',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree5')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012202',  '1000000110',  '0000000110',  0,  '表体|自由项5,B|cfree5', null,  'B',  'cfree5',  '自由项5',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree6')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012205',  '1000000110',  '0000000110',  0,  '表体|自由项6,B|cfree6', null,  'B',  'cfree6',  '自由项6',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree7')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012208',  '1000000110',  '0000000110',  0,  '表体|自由项7,B|cfree7', null,  'B',  'cfree7',  '自由项7',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree8')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012211',  '1000000110',  '0000000110',  0,  '表体|自由项8,B|cfree8', null,  'B',  'cfree8',  '自由项8',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cfree9')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012214',  '1000000110',  '0000000110',  0,  '表体|自由项9,B|cfree9', null,  'B',  'cfree9',  '自由项9',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cinva_unit')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012184',  '1000000110',  '0000000110',  2,  '根据存货获取计量单位信息(来源单据.表体.存货编码).采购默认计量单位编码',  '010',  'B',  'cinva_unit',  '采购单位',  '0', null,  '1',  '3B81A59E-50A4-4BA3-93F0-694699D09B2F', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cinvcode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010605',  '1000000110',  '0000000110',  0,  '表体|存货编码,B|cinvcode', null,  'B',  'cinvcode',  '存货编码',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cinvm_unit')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012490',  '1000000110',  '0000000110',  2,  '根据存货获取计量单位信息(目标单据.表体.存货编码).主计量单位编码',  '010',  'B',  'cinvm_unit',  '主计量单位',  '0', null,  '1',  'AD14CABB-82E8-4F12-8742-29841BC3334E', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'csocode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015420',  '1000000110',  '0000000110',  0,  '表体|需求跟踪号,B|csocode', null,  'B',  'csocode',  '需求跟踪号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'csource')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012507',  '1000000110',  '0000000110',  1,  'app', null,  'B',  'csource',  '来源单据',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cunitid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010612',  '1000000110',  '0000000110',  0,  '表体|单位编码,B|cunitid', null,  'B',  'cunitid',  '单位编码',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'cupsocode')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012535',  '1000000110',  '0000000110',  2,  '获取上游单据信息(保留字.公共变量.当前路线号,保留字.公共变量.目标单据账套ID,保留字.单据类型.采购请购单,保留字.公共变量.当前行号).单据编号',  '009',  'B',  'cupsocode',  '上游单据号',  '0', null,  '1',  '895FE823-D71B-426E-8FDA-4182FB4B0D46', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'darrivedate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010607',  '1000000110',  '0000000110',  0,  '表体|计划到货日期,B|darrivedate', null,  'B',  'darrivedate',  '计划到货日期',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'editprop')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010611',  '1000000110',  '0000000110',  1,  'A', null,  'B',  'editprop',  '编辑属性：A表新增，M表修改，D表删除',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iappids')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012508',  '1000000110',  '0000000110',  2,  '获取上游单据信息(保留字.公共变量.当前路线号,保留字.公共变量.目标单据账套ID,保留字.单据类型.采购请购单,保留字.公共变量.当前行号).子单据ID',  '009',  'B',  'iappids',  '请购单子表ID',  '0', null,  '1',  '827F5D0C-A86D-4E59-B90D-8B84F7536230', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'id')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010604',  '1000000110',  '0000000110',  1, null, null,  'B',  'id',  '采购订单子表标识',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iinvexchrate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012489',  '1000000110',  '0000000110',  0,  '表体|换算率,B|iinvexchrate', null,  'B',  'iinvexchrate',  '换算率',  '0', null,  '1',  '4AE9CF70-933A-4306-921A-49CD1390B131', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'imoney')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010993',  '1000000110',  '0000000110',  0,  '表体|原币金额,B|imoney', null,  'B',  'imoney',  '原币金额',  '0', null,  '1',  '1945587F-EC29-4787-8815-8B0012234D6E', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inatmoney')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012547',  '1000000110',  '0000000110',  0,  '表体|本币金额,B|inatmoney', null,  'B',  'inatmoney',  '本币金额',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inatsum')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012549',  '1000000110',  '0000000110',  0,  '表体|本币价税合计,B|inatsum', null,  'B',  'inatsum',  '本币价税合计',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inattax')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012548',  '1000000110',  '0000000110',  0,  '表体|本币税额,B|inattax', null,  'B',  'inattax',  '本币税额',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inatunitprice')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012546',  '1000000110',  '0000000110',  0,  '表体|本币单价,B|inatunitprice', null,  'B',  'inatunitprice',  '本币单价',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'inum')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012506',  '1000000110',  '0000000110',  0,  '表体|件数,B|inum', null,  'B',  'inum',  '件数',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'ipertaxrate')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010608',  '1000000110',  '0000000110',  0,  '表体|税率,B|ipertaxrate', null,  'B',  'ipertaxrate',  '税率',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iquantity')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010606',  '1000000110',  '0000000110',  0,  '表体|数量,B|iquantity', null,  'B',  'iquantity',  '数量',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'irequiretrackstyle')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015421',  '1000000110',  '0000000110',  0,  '表体|存货需求跟踪方式,B|irequiretrackstyle', null,  'B',  'irequiretrackstyle',  '存货需求跟踪方式',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'irowno')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012581',  '1000000110',  '0000000110',  1, null, null,  'B',  'irowno',  '需求跟踪行号',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'isum')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012496',  '1000000110',  '0000000110',  0,  '表体|原币价税合计,B|isum', null,  'B',  'isum',  '原币价税合计',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'itax')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010994',  '1000000110',  '0000000110',  0,  '表体|原币税额,B|itax', null,  'B',  'itax',  '原币税额',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'itaxprice')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000012504',  '1000000110',  '0000000110',  0,  '表体|含税单价,B|itaxprice', null,  'B',  'itaxprice',  '原币含税单价',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'iunitprice')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010992',  '1000000110',  '0000000110',  0,  '表体|原币单价,B|iunitprice', null,  'B',  'iunitprice',  '原币单价',  '0', null,  '1',  '3F8D314E-F6AE-4E8E-987B-324C8BAF0510', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'poid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000010609',  '1000000110',  '0000000110',  1, null, null,  'B',  'poid',  '采购订单主表标识',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'sodid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015422',  '1000000110',  '0000000110',  0,  '表体|需求跟踪子表ID,B|sodid', null,  'B',  'sodid',  '需求跟踪子表ID',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'sotype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015423',  '1000000110',  '0000000110',  0,  '表体|需求跟踪方式,B|sotype', null,  'B',  'sotype',  '需求跟踪方式',  '0', null,  '1', null, null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'xtTrace_PreAccid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015349',  '1000000110',  '0000000110',  2,  '获取订单跟踪信息(保留字.公共变量.来源单据账套ID,保留字.公共变量.目标单据账套ID,保留字.单据类型.采购订单,保留字.单据类型.采购订单,来源单据.表体.采购订单子表ID).来源单据账套ID',  '019',  'B',  'xtTrace_PreAccid',  '上游账套号',  '0', null,  '0',  'B2C1B8F8-FE14-4F65-8C3D-6C3CFC63BAE9', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'xtTrace_PreCvouchertype')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015350',  '1000000110',  '0000000110',  2,  '获取订单跟踪信息(保留字.公共变量.来源单据账套ID,保留字.公共变量.目标单据账套ID,保留字.单据类型.采购订单,保留字.单据类型.采购订单,来源单据.表体.采购订单子表ID).来源单据类型',  '019',  'B',  'xtTrace_PreCvouchertype',  '上游单据类型',  '0', null,  '0',  'DE546543-7025-4C8C-93B0-E0F1038D8A36', null)
	if not exists(select * from MES_Comm_FIELDCMPS where TaskType= 3 and id= '1000000110' and cardsection= 'B' and fieldname= 'xtTrace_Predid')
	  insert into MES_Comm_FIELDCMPS ( TaskType, autoid, id, ccode, ctype, cvalue, cfunid, cardsection, fieldname, carditemname, isnull, cremark, isvisable, guid, seq ) values 
	  (3,  '1000015351',  '1000000110',  '0000000110',  2,  '获取订单跟踪信息(保留字.公共变量.来源单据账套ID,保留字.公共变量.目标单据账套ID,保留字.单据类型.采购订单,保留字.单据类型.采购订单,来源单据.表体.采购订单子表ID).来源单据表体ID',  '019',  'B',  'xtTrace_Predid',  '上游表体ID',  '0', null,  '0',  '17ED129E-EEFE-42B4-9AF8-E9C417AB8377', null)


 
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
--	('3',@autoid,'本币金额','B',@fieldcmpCode,'017',null,2,'获取金额(来源单据.表体.实际数量).本币金额',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','mes_iquantity',1,'2','来源单据.表体.实际数量',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','ioritaxcost',2,'2','来源单据.表体.原币含税单价',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'T','S','017','iexchrate',3,'2','汇率',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','itaxrate',4,'2','税率',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'017','inatmoney',5,'3','本币金额',@autoid,@guid) 
--END 

--set @fieldname = 'isum'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'本币价税合计','B',@fieldcmpCode,'017',null,2,'获取金额(来源单据.表体.实际数量).本币价税合计',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','mes_iquantity',1,'2','来源单据.表体.实际数量',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','ioritaxcost',2,'2','来源单据.表体.原币含税单价',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'T','S','017','iexchrate',3,'2','汇率',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','itaxrate',4,'2','税率',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'017','inatsum',7,'3','本币价税合计',@autoid,@guid) 
--END 

--set @fieldname = 'itaxprice'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'本币税额','B',@fieldcmpCode,'017',null,2,'获取金额(来源单据.表体.实际数量).本币税额',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','mes_iquantity',1,'2','来源单据.表体.实际数量',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','ioritaxcost',2,'2','来源单据.表体.原币含税单价',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'T','S','017','iexchrate',3,'2','汇率',@autoid,@guid)
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','017','itaxrate',4,'2','税率',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'017','inattax',7,'3','本币税额',@autoid,@guid) 
--END 



--set @fieldname = 'iorimoney'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname=@fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'原币金额','B',@fieldcmpCode,'016',null,2,'获取金额(来源单据.表体.实际数量).原币金额',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','mes_iquantity',1,'2','来源单据.表体.实际数量',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','ioritaxcost',2,'2','来源单据.表体.原币含税单价',@autoid,@guid) 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','itaxrate',3,'2','税率',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'016','imoney',5,'3','原币金额',@autoid,@guid) 
--END 

--set @fieldname = 'iorisum'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'原币价税合计','B',@fieldcmpCode,'016',null,2,'获取金额(来源单据.表体.实际数量).原币价税合计',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','mes_iquantity',1,'2','来源单据.表体.实际数量',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','ioritaxcost',2,'2','来源单据.表体.原币含税单价',@autoid,@guid) 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','itaxrate',3,'2','税率',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'016','isum',5,'3','原币价税合计',@autoid,@guid) 
--END 

--set @fieldname = 'ioritaxprice'
--IF not exists (select 1 from MES_Comm_FIELDCMPS where fieldname= @fieldname AND cardsection = 'B'  and id=@fieldcmpId )  
--BEGIN 
--	SELECT @autoid=isnull(max(convert(int,autoid)),0)+1 from MES_Comm_FIELDCMPS
--	SELECT @guid = NEWID()
--	INSERT INTO MES_Comm_FIELDCMPS ( TaskType, autoid,carditemname,cardsection,ccode,cfunid,cremark,ctype,cvalue,fieldname,guid,id,isnull,isvisable  ) values 
--	('3',@autoid,'原币税额','B',@fieldcmpCode,'016',null,2,'获取金额(来源单据.表体.实际数量).原币税额',@fieldname,@guid,@fieldcmpId,1,1)
--	DELETE FROM MES_CQ_FIXVALUE where did = @autoid 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','mes_iquantity',1,'2','来源单据.表体.实际数量',@autoid,@guid)  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','ioritaxcost',2,'2','来源单据.表体.原币含税单价',@autoid,@guid) 
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,'B','S','016','itaxrate',3,'2','税率',@autoid,@guid)  
	  
	  
--	SELECT @autoidFixvalue =isnull(max(convert(int,autoid)),0)+1 from MES_CQ_FIXVALUE  
--	INSERT INTO MES_CQ_FIXVALUE ( accid,autoid,cardsection,cfromortobill,cfunid,cfunparareturn,cno,ctype,cvalue,did,guid ) values 
--	  ('001',@autoidFixvalue,null,null,'016','itax',5,'3','原币税额',@autoid,@guid) 
--END 


--END
--GO