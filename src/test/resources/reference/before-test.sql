-- Ref ass version
INSERT INTO REF_ASS_VERSION (REF_ASS_VERSION_UK, REF_ASS_VERSION_CODE, VERSION_NUMBER, START_DATE, END_DATE, ASSESSMENT_TYPE_ELM, ASSESSMENT_TYPE_CAT, OASYS_FORM_VERSION, OASYS_SCORING_ALG_VERSION, REF_MODULE_CODE, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(100, 'TEST1', '1', TO_DATE('2010-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, 'LAYER_1', 'ASSESSMENT_TYPE', 2019, 3, 'ASS010', '', TO_DATE('2019-04-12 15:37:24', 'YYYY-MM-DD HH24:MI:SS'), 'SYS', TO_DATE('2019-04-12 15:37:24', 'YYYY-MM-DD HH24:MI:SS'), 'SYS');

-- -- Ref section
INSERT INTO REF_SECTION (REF_SECTION_UK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, FORM_SEQUENCE, SECTION_TYPE_ELM, SECTION_TYPE_CAT, CRIM_NEED_SCORE_THRESHOLD, SCORED_FOR_OGP, SCORED_FOR_OVP, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(9000, 'TEST1', '1', 'TEST_SECTION', 20, 'SAQ', 'SECTION_TYPE', null, 'N', 'N', '', TO_DATE('2019-04-12 15:37:25', 'YYYY-MM-DD HH24:MI:SS'), 'SYS', TO_DATE('2019-04-12 15:37:25', 'YYYY-MM-DD HH24:MI:SS'), 'SYS');

--ref question
INSERT INTO REF_QUESTION (REF_QUESTION_UK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE, DISPLAY_SORT, REF_SECTION_QUESTION, MANDATORY_IND, VERSION_NUMBER_PARENT, REF_SECTION_CODE_PARENT, REF_QUESTION_CODE_PARENT, QA_WEIGHTING, CT_AREA_EST_CODE, REF_ASS_VERSION_CODE_PARENT, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER, POA_ASSMT_HIDE_IND) VALUES
(9000, 'TEST1', '1', 'TEST_SECTION', 'TEST_Q', 15, 'Question Text', 'N', null, null, null, null, null, null, '19A10FF64D660FDFA029BC57F2C1DBDE', TO_DATE('2012-10-15 17:30:13', 'YYYY-MM-DD HH24:MI:SS'), 'SYS', TO_DATE('2012-10-15 17:30:13', 'YYYY-MM-DD HH24:MI:SS'), 'SYS', null);

-- -- ref answer
 INSERT INTO REF_ANSWER (REF_ANSWER_UK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE, REF_ANSWER_CODE, DISPLAY_SORT, REF_SECTION_ANSWER, DEFAULT_DISPLAY_SCORE, OGP_SCORE, OVP_SCORE, CHECKSUM, QA_RAW_SCORE, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(9000, 'TEST1', '1', 'TEST_SECTION', 'TEST_Q', 'ANSWER_CODE', 20, 'No', null, null, null, '', null, TO_DATE('2012-10-15 17:29:00', 'YYYY-MM-DD HH24:MI:SS'), 'SYS', TO_DATE('2012-10-15 17:29:00', 'YYYY-MM-DD HH24:MI:SS'), 'SYS');