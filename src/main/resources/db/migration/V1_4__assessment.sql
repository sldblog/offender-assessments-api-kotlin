

create table OASYS_ASSESSMENT_GROUP
(
	OASYS_ASSESSMENT_GROUP_PK NUMBER not null
		constraint OASYS_ASSESSMENT_GROUP_PK
			primary key,
	OFFENDER_PK NUMBER not null
		constraint OFF_OAG
			references OFFENDER
				on delete cascade,
	ASSESSMENT_DATE_CLOSED DATE,
	HISTORIC_STATUS_ELM VARCHAR2(50) default 'PENDING' not null,
	HISTORIC_STATUS_CAT VARCHAR2(50) default 'HISTORIC_STATUS' not null,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint ELM_FK54
		foreign key (HISTORIC_STATUS_CAT, HISTORIC_STATUS_ELM) references REF_ELEMENT
);



create table OASYS_SET
(
	OASYS_SET_PK NUMBER not null
		constraint OASYS_SET_PK
			primary key,
	ADDL_OFFC_V2_LGCYDAT CLOB,
	APPEAL_PENDING_DETAILS CLOB,
	APPEAL_PENDING_INDICATOR VARCHAR2(1)
		check ( appeal_pending_indicator IN ('N' , 'Y' )),
	ASSESSMENT_VOIDED_BY VARCHAR2(100),
	ASSESSMENT_VOIDED_DATE DATE,
	ASSESSOR_NAME VARCHAR2(100),
	ASSESSOR_OFFICE VARCHAR2(100),
	ASSESSOR_TEAM VARCHAR2(100),
	ASSESSOR_PHONE_NUMBER VARCHAR2(32),
	ASSESSOR_EMAIL VARCHAR2(100),
	ASSESSOR_POSITION VARCHAR2(100),
	ASSESSOR_SIGNED_DATE DATE,
	AUTOMATIC_RELEASE_DATE DATE,
	CHARGES_PENDING_DTL CLOB,
	CHARGES_PENDING_IND VARCHAR2(1)
		check ( charges_pending_ind IN ('N' , 'Y' )),
	CONDITIONAL_RELEASE_DATE DATE,
	COUNTERSIGNER_NAME VARCHAR2(100),
	COUNTERSIGNER_OFFICE VARCHAR2(100),
	COUNTERSIGNER_PHONE_NUM VARCHAR2(32),
	COUNTERSIGNER_POSITION VARCHAR2(100),
	COUNTERSIGNER_SIGNED_DATE DATE,
	COUNTERSIGNER_COMMENTS CLOB,
	CMS_PROB_NUMBER VARCHAR2(20),
	CMS_PRIS_NUMBER VARCHAR2(20),
	LEGACY_CMS_PROB_NUMBER VARCHAR2(20),
	CRO_NUMBER VARCHAR2(12),
	CURRENT_ADDRESS_LINE_1 VARCHAR2(256),
	CURRENT_ADDRESS_LINE_2 VARCHAR2(256),
	CURRENT_ADDRESS_LINE_3 VARCHAR2(256),
	CURRENT_ADDRESS_LINE_4 VARCHAR2(256),
	CURRENT_ADDRESS_LINE_5 VARCHAR2(256),
	CURRENT_ADDRESS_LINE_6 VARCHAR2(256),
	CURRENT_POST_CODE VARCHAR2(32),
	CURRENT_TELEPHONE_NUMBER VARCHAR2(32),
	DATE_OF_ACTUAL_RELEASE DATE,
	DATE_OF_BIRTH DATE,
	DET_U_IMMIGRATION_ACT_IND VARCHAR2(1)
		check ( det_u_immigration_act_ind IN ('N' , 'Y' )),
	DISCHARGE_ADDRESS_LINE_1 VARCHAR2(256),
	DISCHARGE_ADDRESS_LINE_2 VARCHAR2(256),
	DISCHARGE_ADDRESS_LINE_3 VARCHAR2(256),
	DISCHARGE_ADDRESS_LINE_4 VARCHAR2(256),
	DISCHARGE_ADDRESS_LINE_5 VARCHAR2(256),
	DISCHARGE_ADDRESS_LINE_6 VARCHAR2(256),
	DISCHARGE_POST_CODE VARCHAR2(32),
	DISCHARGE_TELEPHONE_NUM VARCHAR2(32),
	FACILITY_LIC_ELIG_DATE DATE,
	FAMILY_NAME VARCHAR2(100),
	FORENAME_1 VARCHAR2(100),
	FORENAME_2 VARCHAR2(100),
	FORENAME_3 VARCHAR2(100),
	HOME_DETN_CURFEW_DATE DATE,
	INITIATION_DATE DATE,
	INTERPRETER_REQUIRED_IND VARCHAR2(1)
		check ( interpreter_required_ind IN ('N' , 'Y' )),
	LICENCE_EXPIRY_DATE DATE,
	LICENCE_REQUIRE_RELEASE CLOB,
	NON_PAROLE_DATE DATE,
	OASYS_FORM_VERSION NUMBER,
	OASYS_SCORING_ALG_VERSION NUMBER,
	OFFDR_IDENT_PERSIST_IND VARCHAR2(1)
		check ( offdr_ident_persist_ind IN ('N' , 'Y' )),
	PAROLE_ELIGIBILITY_DATE DATE,
	PNC VARCHAR2(20),
	PRF_SPKN_LNG_OFTXT VARCHAR2(100),
	PRF_WRT_LNG_OFTXT VARCHAR2(100),
	PRISON_NUMBER VARCHAR2(6),
	PSR_CLOSED_GROUP_IND VARCHAR2(1) default 'N' not null,
	PURPOSE_ASSMT_OTHER_FTXT VARCHAR2(100),
	REASON_FOR_VOIDING CLOB,
	RECOMMENDED_DEP_IND VARCHAR2(1)
		check ( recommended_dep_ind IN ('N' , 'Y' )),
	RELIGION_OTHER VARCHAR2(100),
	REQUESTED_BY VARCHAR2(100),
	DATE_COMPLETED DATE,
	DATE_ASSESSMENT_REQST DATE,
	DATE_REPORT_REQST DATE,
	RESETTLE_LIC_ELIG_DATE DATE,
	SENTENCE_EXPIRY_DATE DATE,
	SOURCES_INFO_OTHER_FTXT CLOB,
	LOOKED_AFTER VARCHAR2(1)
		check ( looked_after IN ('N' , 'Y' )),
	SECURITY_CATEGORY VARCHAR2(100),
	CELL_LOCATION VARCHAR2(100),
	OGP_ST_WESC NUMBER,
	OGP_DY_WESC NUMBER,
	OGP_TOT_WESC NUMBER,
	OVP_ST_WESC NUMBER,
	OVP_DY_WESC NUMBER,
	OVP_TOT_WESC NUMBER,
	OGRS3_1YEAR NUMBER,
	OGRS3_2YEAR NUMBER,
	OGRS3_RISK_RECON_ELM VARCHAR2(50),
	OGRS3_RISK_RECON_CAT VARCHAR2(50),
	OGP_1YEAR NUMBER,
	OGP_2YEAR NUMBER,
	OGP_RISK_RECON_ELM VARCHAR2(50),
	OGP_RISK_RECON_CAT VARCHAR2(50),
	OVP_1YEAR NUMBER,
	OVP_2YEAR NUMBER,
	OVP_RISK_RECON_ELM VARCHAR2(50),
	OVP_RISK_RECON_CAT VARCHAR2(50),
	OVP_PREV_WESC NUMBER,
	OVP_VIO_WESC NUMBER,
	OVP_NON_VIO_WESC NUMBER,
	OVP_AGE_WESC NUMBER,
	OVP_SEX_WESC NUMBER,
	LOW_SCORE_NEED_ATTN_REASON CLOB,
	TIER_LEVEL_ELM VARCHAR2(50),
	TIER_LEVEL_CAT VARCHAR2(50),
	ASSESSMENT_TYPE_ELM VARCHAR2(50),
	ASSESSMENT_TYPE_CAT VARCHAR2(50),
	ASSESSOR_SERVICE_ELM VARCHAR2(50),
	ASSESSOR_SERVICE_CAT VARCHAR2(50),
	COUNTERSIGNER_SERVICE_ELM VARCHAR2(50),
	COUNTERSIGNER_SERVICE_CAT VARCHAR2(50),
	ETHNIC_CATEGORY_CODE_ELM VARCHAR2(50),
	ETHNIC_CATEGORY_CODE_CAT VARCHAR2(50),
	GENDER_ELM VARCHAR2(50),
	GENDER_CAT VARCHAR2(50),
	LEVEL_HEALTHCARE_REQ_ELM VARCHAR2(50),
	LEVEL_HEALTHCARE_REQ_CAT VARCHAR2(50),
	PREF_SPOKEN_LANGUAGE_ELM VARCHAR2(50),
	PREF_SPOKEN_LANGUAGE_CAT VARCHAR2(50),
	PREF_WRITE_LANGUAGE_ELM VARCHAR2(50),
	PREF_WRITE_LANGUAGE_CAT VARCHAR2(50),
	PURPOSE_ASSESSMENT_ELM VARCHAR2(50),
	PURPOSE_ASSESSMENT_CAT VARCHAR2(50),
	RELEASE_TYPE_ELM VARCHAR2(50),
	RELEASE_TYPE_CAT VARCHAR2(50),
	RELIGION_ELM VARCHAR2(50),
	RELIGION_CAT VARCHAR2(50),
	SSP_TYPE_ELM VARCHAR2(50),
	SSP_TYPE_CAT VARCHAR2(50),
	ASSESSMENT_STATUS_ELM VARCHAR2(50) not null,
	ASSESSMENT_STATUS_CAT VARCHAR2(50) not null,
	ROSH_LEVEL_ELM VARCHAR2(50),
	ROSH_LEVEL_CAT VARCHAR2(50),
	PSR_TEMPLATE_ELM VARCHAR2(50),
	PSR_TEMPLATE_CAT VARCHAR2(50),
	DELETE_PSR_TEMPLATE_ELM VARCHAR2(50),
	DELETE_PSR_TEMPLATE_CAT VARCHAR2(50),
	PSR_COURT NUMBER
		constraint CRT_OAS_PSR
			references COURT,
	OASYS_ASSESSMENT_GROUP_PK NUMBER not null
		constraint OAG_OAS
			references OASYS_ASSESSMENT_GROUP
				on delete cascade,
	REF_ASS_VERSION_CODE VARCHAR2(100) not null,
	VERSION_NUMBER VARCHAR2(100) not null,
	ORIGINATING_AREAEST_CODE VARCHAR2(100)
		constraint ORIGINATING_AREA
			references CT_AREA_EST,
	ORIGINATING_DIVISION_CODE VARCHAR2(100),
	ORIGINATING_TEAM_CODE VARCHAR2(100),
	ASSESSOR_USER VARCHAR2(100)
		constraint ASSESSOR_USER
			references OASYS_USER,
	COUNTERSIGNER_USER VARCHAR2(100)
		constraint COUNTERSIGNER_USER
			references OASYS_USER,
	COURT_OTHER_TEXT VARCHAR2(4000),
	RECALL_DATE DATE,
	DELETED_DATE DATE,
	BCS_SENT_PLAN_TEXT CLOB,
	ARMED_FORCES_IND VARCHAR2(1)
		check ( armed_forces_ind IN ('N' , 'Y' )),
	NO_SARA_REASON_ELM VARCHAR2(50),
	NO_SARA_REASON_CAT VARCHAR2(50),
	NO_SARA_DATE DATE,
	NO_RM2000_REASON_ELM VARCHAR2(50),
	NO_RM2000_REASON_CAT VARCHAR2(50),
	NO_RM2000_DATE DATE,
	PARENT_OASYS_SET_PK NUMBER
		constraint OAS_OAS
			references OASYS_SET
				on delete cascade,
	PHYSICAL_LOCATION_OTHER VARCHAR2(1024),
	CURRENT_LOCAL_AUTHORITY_ELM VARCHAR2(50),
	CURRENT_LOCAL_AUTHORITY_CAT VARCHAR2(50),
	DISCHARGE_LOCAL_AUTHORITY_ELM VARCHAR2(50),
	DISCHARGE_LOCAL_AUTHORITY_CAT VARCHAR2(50),
	OTHER_RISK_RECON_ELM VARCHAR2(50),
	OTHER_RISK_RECON_CAT VARCHAR2(50),
	INVALID_SECT1_SCORE VARCHAR2(1) default 'N' not null,
	AGE_FOLLOW_UP NUMBER,
	CMS_LAST_EXPORT_DATE DATE,
	CMS_RESEND_IND VARCHAR2(1) default 'N' not null,
	PHYSICAL_LOCATION VARCHAR2(100)
		constraint PHYSICAL_LOCATION_ASSMNT
			references CT_AREA_EST,
	CLONED_LOCKED_INCOMP_IND VARCHAR2(1) default 'N' not null,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	CMS_EVENT_NUMBER NUMBER,
	NHS_NUMBER VARCHAR2(50),
	NI_NUMBER VARCHAR2(50),
	POST_SENT_SUPV_DATE_IND VARCHAR2(1)
		check ( post_sent_supv_date_ind IN ('N' , 'Y' )),
	POST_SENT_SUPV_DATE DATE,
	BCS_SYSTEM_CREATED_IND VARCHAR2(1)
		check ( bcs_system_created_ind IN ('N' , 'Y' )),
	RECEPTION_DATE DATE,
	BCS_CARED_FOR_CAT VARCHAR2(50),
	BCS_CARED_FOR_ELM VARCHAR2(50),
	MATURITY_SCORE NUMBER,
	MATURITY_FLAG VARCHAR2(1),
	constraint ELM_FK60
		foreign key (OGP_RISK_RECON_CAT, OGP_RISK_RECON_ELM) references REF_ELEMENT,
	constraint ELM_FK61
		foreign key (OVP_RISK_RECON_CAT, OVP_RISK_RECON_ELM) references REF_ELEMENT,
	constraint ELM_FK62
		foreign key (TIER_LEVEL_CAT, TIER_LEVEL_ELM) references REF_ELEMENT,
	constraint ELM_FK64
		foreign key (ASSESSMENT_TYPE_CAT, ASSESSMENT_TYPE_ELM) references REF_ELEMENT,
	constraint ELM_FK65
		foreign key (ASSESSOR_SERVICE_CAT, ASSESSOR_SERVICE_ELM) references REF_ELEMENT,
	constraint ELM_FK66
		foreign key (COUNTERSIGNER_SERVICE_CAT, COUNTERSIGNER_SERVICE_ELM) references REF_ELEMENT,
	constraint ELM_FK67
		foreign key (ETHNIC_CATEGORY_CODE_CAT, ETHNIC_CATEGORY_CODE_ELM) references REF_ELEMENT,
	constraint ELM_FK68
		foreign key (GENDER_CAT, GENDER_ELM) references REF_ELEMENT,
	constraint ELM_FK69
		foreign key (LEVEL_HEALTHCARE_REQ_CAT, LEVEL_HEALTHCARE_REQ_ELM) references REF_ELEMENT,
	constraint ELM_FK70
		foreign key (PREF_SPOKEN_LANGUAGE_CAT, PREF_SPOKEN_LANGUAGE_ELM) references REF_ELEMENT,
	constraint ELM_FK71
		foreign key (PREF_WRITE_LANGUAGE_CAT, PREF_WRITE_LANGUAGE_ELM) references REF_ELEMENT,
	constraint ELM_FK72
		foreign key (PURPOSE_ASSESSMENT_CAT, PURPOSE_ASSESSMENT_ELM) references REF_ELEMENT,
	constraint ELM_FK73
		foreign key (RELEASE_TYPE_CAT, RELEASE_TYPE_ELM) references REF_ELEMENT,
	constraint ELM_FK75
		foreign key (RELIGION_CAT, RELIGION_ELM) references REF_ELEMENT,
	constraint ELM_FK76
		foreign key (SSP_TYPE_CAT, SSP_TYPE_ELM) references REF_ELEMENT,
	constraint ELM_FK77
		foreign key (ASSESSMENT_STATUS_CAT, ASSESSMENT_STATUS_ELM) references REF_ELEMENT,
	constraint ELM_FK78
		foreign key (ROSH_LEVEL_CAT, ROSH_LEVEL_ELM) references REF_ELEMENT,
	constraint ELM_FK79
		foreign key (PSR_TEMPLATE_CAT, PSR_TEMPLATE_ELM) references REF_ELEMENT,
	constraint ELM_FK80
		foreign key (DELETE_PSR_TEMPLATE_CAT, DELETE_PSR_TEMPLATE_ELM) references REF_ELEMENT,
	constraint ELM_FK81
		foreign key (NO_SARA_REASON_CAT, NO_SARA_REASON_ELM) references REF_ELEMENT,
	constraint ELM_FK82
		foreign key (NO_RM2000_REASON_CAT, NO_RM2000_REASON_ELM) references REF_ELEMENT,
	constraint ELM_FK83
		foreign key (CURRENT_LOCAL_AUTHORITY_CAT, CURRENT_LOCAL_AUTHORITY_ELM) references REF_ELEMENT,
	constraint ELM_FK84
		foreign key (DISCHARGE_LOCAL_AUTHORITY_CAT, DISCHARGE_LOCAL_AUTHORITY_ELM) references REF_ELEMENT,
	constraint ELM_FK86
		foreign key (OGRS3_RISK_RECON_CAT, OGRS3_RISK_RECON_ELM) references REF_ELEMENT,
	constraint ELM_FK87
		foreign key (OTHER_RISK_RECON_CAT, OTHER_RISK_RECON_ELM) references REF_ELEMENT,
	constraint OASYS_SET_ELM_FK88
		foreign key (BCS_CARED_FOR_CAT, BCS_CARED_FOR_ELM) references REF_ELEMENT,
	constraint RAV_OAS
		foreign key (REF_ASS_VERSION_CODE, VERSION_NUMBER) references REF_ASS_VERSION,
	constraint TEA_OAS
		foreign key (ORIGINATING_DIVISION_CODE, ORIGINATING_TEAM_CODE, ORIGINATING_AREAEST_CODE) references TEAM
);

create table QA_REVIEW
(
	QA_REVIEW_PK NUMBER not null
		constraint QA_REVIEW_PK
			primary key,
	QA_SCORE NUMBER(8,4),
	QA_GRADING_ELM VARCHAR2(50),
	QA_GRADING_CAT VARCHAR2(50),
	QA_STATUS_ELM VARCHAR2(50) default 'UNALLOCATED' not null,
	QA_STATUS_CAT VARCHAR2(50) default 'QA_STATUS' not null,
	DATE_SELECTED DATE,
	DATE_COMPLETED DATE,
	QA_SUBSTITUTION_REASON VARCHAR2(1024),
	OASYS_SET_PK NUMBER not null
		constraint OAS_QAR
			references OASYS_SET
				on delete cascade,
	CT_AREA_EST_CODE VARCHAR2(100) not null
		constraint CAE_QAR
			references CT_AREA_EST,
	OASYS_USER_CODE VARCHAR2(100)
		constraint OUS_QAR
			references OASYS_USER,
	REF_PERIOD_YYYY NUMBER not null,
	REF_PERIOD_QTR NUMBER,
	REF_PERIOD_MM NUMBER,
	DISPLAY_SORT NUMBER,
	CURRENTLY_HIDDEN_IND VARCHAR2(1) not null,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint ELM_FK115
		foreign key (QA_GRADING_CAT, QA_GRADING_ELM) references REF_ELEMENT,
	constraint ELM_FK116
		foreign key (QA_STATUS_CAT, QA_STATUS_ELM) references REF_ELEMENT
);


create table VICTIM
(
	VICTIM_PK NUMBER not null
		constraint VICTIM_PK
			primary key,
	DISPLAY_SORT NUMBER,
	GENDER_ELM VARCHAR2(50),
	GENDER_CAT VARCHAR2(50),
	AGE_OF_VICTIM_ELM VARCHAR2(50),
	AGE_OF_VICTIM_CAT VARCHAR2(50),
	ETHNIC_CATEGORY_ELM VARCHAR2(50),
	ETHNIC_CATEGORY_CAT VARCHAR2(50),
	VICTIM_RELATION_ELM VARCHAR2(50),
	VICTIM_RELATION_CAT VARCHAR2(50),
	OASYS_SET_PK NUMBER not null
		constraint OAS_VTM
			references OASYS_SET
				on delete cascade,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint ELM_FK31
		foreign key (GENDER_CAT, GENDER_ELM) references REF_ELEMENT,
	constraint ELM_FK32
		foreign key (AGE_OF_VICTIM_CAT, AGE_OF_VICTIM_ELM) references REF_ELEMENT,
	constraint ELM_FK34
		foreign key (ETHNIC_CATEGORY_CAT, ETHNIC_CATEGORY_ELM) references REF_ELEMENT,
	constraint ELM_FK35
		foreign key (VICTIM_RELATION_CAT, VICTIM_RELATION_ELM) references REF_ELEMENT
);


create table OASYS_BCS_PART
(
	OASYS_BCS_PART_PK NUMBER not null
		constraint OBP_PK
			primary key,
	BCS_PART_CAT VARCHAR2(50),
	BCS_PART_ELM VARCHAR2(50),
	OFFENDER_PK NUMBER
		constraint OBP_OFF_FK1
			references OFFENDER
				on delete cascade,
	BCS_PART_STATUS_CAT VARCHAR2(50),
	BCS_PART_STATUS_ELM VARCHAR2(50),
	PART1_CHECKED_IND VARCHAR2(1)
		check ( part1_checked_ind IN ('N' , 'Y' )),
	PART1_CHECKED_DATE DATE,
	PART1_CHECKED_USER VARCHAR2(100)
		constraint OBP_OUC_FK7
			references OASYS_USER,
	BCS_PART_USER VARCHAR2(100)
		constraint OBP_OUC_FK3
			references OASYS_USER,
	BCS_PART_USER_AREA VARCHAR2(100)
		constraint OBP_CAE_FK6
			references CT_AREA_EST,
	BCS_PART_USER_POSITION VARCHAR2(100),
	BCS_PART_COMP_DATE DATE,
	OASYS_SET_PK NUMBER
		constraint OBP_OST_FK5
			references OASYS_SET
				on delete cascade,
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	LASTUPD_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_USER VARCHAR2(100) not null,
	PRA_COMPLETE VARCHAR2(1),
	PRA_COMP_USER VARCHAR2(100),
	PRA_COMP_DATE DATE,
	LOCK_INCOMPLETE_REASON_CAT VARCHAR2(50),
	LOCK_INCOMPLETE_REASON_ELM VARCHAR2(50),
	LOCK_INCOMPLETE_OTHER_TEXT VARCHAR2(4000),
	constraint OBP_RET_FK2
		foreign key (BCS_PART_CAT, BCS_PART_ELM) references REF_ELEMENT,
	constraint OBP_RET_FK4
		foreign key (BCS_PART_STATUS_CAT, BCS_PART_STATUS_ELM) references REF_ELEMENT
);


create table OASYS_SECTION
(
	OASYS_SECTION_PK NUMBER not null
		constraint OASYS_SECTION_PK
			primary key,
	OASYS_SET_PK NUMBER not null
		constraint OAS_OSE
			references OASYS_SET
				on delete cascade,
	REF_ASS_VERSION_CODE VARCHAR2(100) not null,
	VERSION_NUMBER VARCHAR2(100) not null,
	REF_SECTION_CODE VARCHAR2(100) not null,
	SECTION_STATUS_ELM VARCHAR2(50) default 'INCOMPLETE' not null,
	SECTION_STATUS_CAT VARCHAR2(50) default 'SECTION_STATUS' not null,
	MISSING_NOTIONAL_ELM VARCHAR2(50),
	MISSING_NOTIONAL_CAT VARCHAR2(50),
	SECT_OGP_WEIGHTED_SCORE NUMBER,
	SECT_OVP_WEIGHTED_SCORE NUMBER,
	SECT_OTHER_WEIGHTED_SCORE NUMBER,
	SECT_OVP_RAW_SCORE NUMBER,
	SECT_OGP_RAW_SCORE NUMBER,
	SECT_OTHER_RAW_SCORE NUMBER,
	LOW_SCORE_NEED_ATTN_IND VARCHAR2(1)
		check ( low_score_need_attn_ind IN ('N' , 'Y' )),
	QA_REVIEW_PK NUMBER
		constraint QAR_OSE
			references QA_REVIEW
				on delete cascade,
	CURRENTLY_HIDDEN_IND VARCHAR2(1) default 'N' not null,
	SECTION_PAGE_VISIBILITY NUMBER default 0 not null,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	LASTUPD_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_USER VARCHAR2(100) not null,
	OASYS_BCS_PART_PK NUMBER
		constraint OBP_FK60
			references OASYS_BCS_PART,
	constraint OASYS_SECTION_UN
		unique (OASYS_SET_PK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE),
	constraint ELM_FK58
		foreign key (MISSING_NOTIONAL_CAT, MISSING_NOTIONAL_ELM) references REF_ELEMENT,
	constraint ELM_FK59
		foreign key (SECTION_STATUS_CAT, SECTION_STATUS_ELM) references REF_ELEMENT,
	constraint RSE_OSE
		foreign key (REF_SECTION_CODE, REF_ASS_VERSION_CODE, VERSION_NUMBER) references REF_SECTION
);


create table BASIC_SENTENCE_PLAN_OBJ
(
	BASIC_SENT_PLAN_OBJ_PK NUMBER not null
		constraint BASIC_SENTENCE_PLAN_OBJ_PK
			primary key,
	DISPLAY_SORT NUMBER,
	INCLUDE_IN_PLAN_IND VARCHAR2(1) default 'Y'
		check ( include_in_plan_ind IN ('N' , 'Y' )),
	OFFENCE_BEHAV_LINK_ELM VARCHAR2(50),
	OFFENCE_BEHAV_LINK_CAT VARCHAR2(50),
	OBJECTIVE_TEXT CLOB,
	MEASURE_TEXT CLOB,
	WHAT_WORK_TEXT CLOB,
	WHO_WILL_DO_WORK_TEXT CLOB,
	TIMESCALES_TEXT CLOB,
	OASYS_SET_PK NUMBER not null
		constraint OAS_BSO
			references OASYS_SET
				on delete cascade,
	DATE_OPENED DATE,
	DATE_COMPLETED DATE,
	PROBLEM_AREA_COMP_IND VARCHAR2(1)
		check ( problem_area_comp_ind IN ('N' , 'Y' )),
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	CF_LAST_BCS_INT NUMBER
		constraint BSP_LAST_BCS_INT
			references BASIC_SENTENCE_PLAN_OBJ,
	CF_ORIG_BCS_INT NUMBER
		constraint BSP_ORIG_BCS_INT
			references BASIC_SENTENCE_PLAN_OBJ,
	SERVICE_LEVEL NUMBER,
	constraint ELM_FK96
		foreign key (OFFENCE_BEHAV_LINK_CAT, OFFENCE_BEHAV_LINK_ELM) references REF_ELEMENT
);


create table OASYS_QUESTION
(
	OASYS_QUESTION_PK NUMBER not null
		constraint OASYS_QUESTION_PK
			primary key,
	ADDITIONAL_NOTE CLOB,
	OASYS_SECTION_PK NUMBER not null
		constraint OSE_OQU
			references OASYS_SECTION
				on delete cascade,
	FREE_FORMAT_ANSWER VARCHAR2(4000),
	DISPLAY_SCORE NUMBER,
	REF_ASS_VERSION_CODE VARCHAR2(100) not null,
	VERSION_NUMBER VARCHAR2(100) not null,
	REF_SECTION_CODE VARCHAR2(100) not null,
	REF_QUESTION_CODE VARCHAR2(100) not null,
	DISCLOSED_IND VARCHAR2(1) default 'N' not null,
	CURRENTLY_HIDDEN_IND VARCHAR2(1) default 'N' not null,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint OASYS_QUESTION_UN
		unique (OASYS_SECTION_PK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE),
	constraint RQU_OQU
		foreign key (REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE) references REF_QUESTION
);


create table OASYS_ANSWER
(
	OASYS_ANSWER_PK NUMBER not null
		constraint OASYS_ANSWER_PK
			primary key,
	OASYS_QUESTION_PK NUMBER not null
		constraint OQU_OAN
			references OASYS_QUESTION
				on delete cascade,
	REF_ASS_VERSION_CODE VARCHAR2(100) not null,
	VERSION_NUMBER VARCHAR2(100) not null,
	REF_SECTION_CODE VARCHAR2(100) not null,
	REF_QUESTION_CODE VARCHAR2(100) not null,
	REF_ANSWER_CODE VARCHAR2(100) not null,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint OASYS_ANSWER_UN
		unique (OASYS_QUESTION_PK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE, REF_ANSWER_CODE),
	constraint RAN_OAN
		foreign key (REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE, REF_ANSWER_CODE) references REF_ANSWER
);


create table OFFENCE_BLOCK
(
	OFFENCE_BLOCK_PK NUMBER not null
		constraint OFFENCE_BLOCK_PK
			primary key,
	ADD_OFF_FTXT_LGCYDAT CLOB,
	DISPLAY_SORT NUMBER,
	OFFENCE_DATE DATE,
	RESENTENCE_FOR_BREACH_IND VARCHAR2(1)
		check ( resentence_for_breach_ind IN ('N' , 'Y' )),
	SENTENCE_DATE DATE,
	SENTENCE_LENGTH_CPO_HOURS NUMBER,
	SENTENCE_LENGTH_CRO_M NUMBER,
	SENTENCE_OTHER_FREE_TEXT VARCHAR2(4000),
	SENT_LENGTH_CUST_DAYS NUMBER,
	SNTNC_EXTND_LNGTH_MNTHS NUMBER,
	SENTENCE_COURT_RECOM CLOB,
	DISQUALIFICATION_ORDER VARCHAR2(1)
		check ( disqualification_order IN ('N' , 'Y' )),
	SNT_ALIC_CNDS2_LGCYDAT VARCHAR2(4000),
	ORDER_AMENDED_IND VARCHAR2(1)
		check ( order_amended_ind IN ('N' , 'Y' )),
	ORDER_AMENDED_DATE DATE,
	OFFENCE_BLOCK_TYPE_ELM VARCHAR2(50),
	OFFENCE_BLOCK_TYPE_CAT VARCHAR2(50),
	LEVEL_OF_SERIOUSNESS_ELM VARCHAR2(50),
	LEVEL_OF_SERIOUSNESS_CAT VARCHAR2(50),
	OASYS_SET_PK NUMBER not null
		constraint OAS_OBL
			references OASYS_SET
				on delete cascade,
	SENTENCE_CODE VARCHAR2(100)
		constraint SNT_OBL
			references SENTENCE,
	COURT_PK NUMBER
		constraint CRT_OBL
			references COURT,
	COURT_OTHER_TEXT VARCHAR2(4000),
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	BCS_SENTENCE_TYPE_ELM VARCHAR2(50),
	BCS_SENTENCE_TYPE_CAT VARCHAR2(50),
	constraint OFFENCE_BLOCK_UN
		unique (OASYS_SET_PK, OFFENCE_BLOCK_TYPE_ELM, DISPLAY_SORT),
	constraint ELM_FK94
		foreign key (OFFENCE_BLOCK_TYPE_CAT, OFFENCE_BLOCK_TYPE_ELM) references REF_ELEMENT,
	constraint ELM_FK95
		foreign key (LEVEL_OF_SERIOUSNESS_CAT, LEVEL_OF_SERIOUSNESS_ELM) references REF_ELEMENT
);

create table OFFENCE_SENTENCE_DETAIL
(
	OFFENCE_SENTENCE_DETAIL_PK NUMBER not null
		constraint OFFENCE_SENTENCE_DETAIL_PK
			primary key,
	DISPLAY_SORT NUMBER,
	CJA_UNPAID_HOURS NUMBER,
	CJA_SUPERVISION_MONTHS NUMBER,
	ACTIVITY_DESC CLOB,
	YES_NO_ELM VARCHAR2(50),
	YES_NO_CAT VARCHAR2(50),
	SENTENCE_ATTRIBUTE_ELM VARCHAR2(50),
	SENTENCE_ATTRIBUTE_CAT VARCHAR2(50),
	OFFENCE_BLOCK_PK NUMBER not null
		constraint OBL_OSD
			references OFFENCE_BLOCK
				on delete cascade,
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint ELM_FK97
		foreign key (YES_NO_CAT, YES_NO_ELM) references REF_ELEMENT,
	constraint ELM_FK98
		foreign key (SENTENCE_ATTRIBUTE_CAT, SENTENCE_ATTRIBUTE_ELM) references REF_ELEMENT
);



create table SSP_INTERVENTION_IN_SET
(
	SSP_INTERVENTION_IN_SET_PK NUMBER not null
		constraint SSP_INTERVENTION_IN_SET_PK
			primary key,
	COPIED_FORWARD_INDICATOR VARCHAR2(1) default 'N' not null,
	INTERVENTION_COMMENT CLOB,
	TIMESCALE_FOR_INT_ELM VARCHAR2(50),
	TIMESCALE_FOR_INT_CAT VARCHAR2(50),
	COPIED_FROM_SSP_INT_IN_SET NUMBER
		constraint SIS_SIS
			references SSP_INTERVENTION_IN_SET
				on delete cascade,
	INTERVENTION_ELM VARCHAR2(50),
	INTERVENTION_CAT VARCHAR2(50),
	MIG_GUID VARCHAR2(256),
	MIG_ID VARCHAR2(256),
	CF_LAST_ASSMT_INT NUMBER,
	CF_ORIG_ASSMT_INT NUMBER,
	CHECKSUM VARCHAR2(4000),
	CREATE_DATE DATE,
	CREATE_USER VARCHAR2(100) not null,
	LASTUPD_DATE DATE,
	LASTUPD_USER VARCHAR2(100) not null,
	constraint ELM_FK18
		foreign key (TIMESCALE_FOR_INT_CAT, TIMESCALE_FOR_INT_ELM) references REF_ELEMENT
);