DECLARE
v_mm_item number(8);
BEGIN


BEGIN  
SELECT MI.ID
INTO v_mm_item
FROM mapping_matrix_item mi
WHERE mi.col_1=200
AND mi.active=1;
EXCEPTION WHEN OTHERS THEN
  v_mm_item:=0;
END;  

IF v_mm_item=0 THEN
  SELECT MAX(ID)+1 
  INTO v_mm_item 
  FROM mapping_matrix_item;
  
insert into mapping_matrix_item (ID, COL_1, COL_2, COL_3, COL_4, COL_5, ACTIVE, COL_7, COL_8, COL_9, COL_6, COL_10, MAPPING_MATRIX_ID, COL_11, COL_12, COL_13, COL_14, COL_15, COL_16, COL_17, COL_18, COL_19, COL_20, COL_21, COL_22, COL_23, COL_24, COL_25, COL_26, COL_27, COL_28, COL_29, COL_30, EXCLUDE)
values (v_mm_item, '200', '', '', '', '2000', 1, '', '1', '', '', '3', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);

END IF;
  

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'ApplicantDataReuseRequired', '0', 1, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'ApplicationTypeId', '0', 2, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'CheckViolation', '0', 3, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'EntityId', '1', 4, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'FormId', '', 5, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'IsDataChaged', '', 15, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'Quota', '0', 6, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'ResolveSubType', '0', 7, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'SRID', '83', 8, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'SponsorDataReuseRequired', '0', 9, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'TargetRoute', '1', 10, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'ViolationWarning', '0', 11, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'VisaTypeId', '0', 12, null, v_mm_item);

insert into mapping_matrix_item_detail (ID, KEY, VALUE, TYPE, DESCRIPTION, MAPPING_MATRIX_ITEM_ID)
values ((SELECT MAX(ID)+1 FROM mapping_matrix_item_detail), 'WorkflowId', '47', 13, null, v_mm_item);

COMMIT;

END;

