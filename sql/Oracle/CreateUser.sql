-- Create User Name with "AITECH" and grant role to this user
CREATE USER "AITECH" IDENTIFIED BY VALUES 'S:24716402F21E9219708755D41EEE39082E2AEC00FF9D9894927D9754DD3F;T:6779E90BB5E0A3700E0EBA6374698AE9AA966C3377DAF1E9B45390EE9EFD6CC0395E935B26DE89E2EE4FC9B1ABBBFBD0536D6A53FB19271508A21B0309A719B1E6E7911DCAF97F9D5721CE6681B28A9B'
      DEFAULT TABLESPACE "AITECH_TABLESPACE"
      TEMPORARY TABLESPACE "AITECH_LOGSPACE";

  GRANT ALTER SYSTEM TO "AITECH" WITH ADMIN OPTION;
  GRANT AUDIT SYSTEM TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE SESSION TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER SESSION TO "AITECH" WITH ADMIN OPTION;
  GRANT RESTRICTED SESSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE TABLESPACE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER TABLESPACE TO "AITECH" WITH ADMIN OPTION;
  GRANT MANAGE TABLESPACE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP TABLESPACE TO "AITECH" WITH ADMIN OPTION;
  GRANT UNLIMITED TABLESPACE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE USER TO "AITECH" WITH ADMIN OPTION;
  GRANT BECOME USER TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER USER TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP USER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ROLLBACK SEGMENT TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ROLLBACK SEGMENT TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ROLLBACK SEGMENT TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT BACKUP ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT LOCK ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT COMMENT ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT INSERT ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT UPDATE ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT DELETE ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT REDEFINE ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE CLUSTER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY CLUSTER TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY CLUSTER TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY CLUSTER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY INDEX TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY INDEX TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY INDEX TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE SYNONYM TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY SYNONYM TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY SYNONYM TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE PUBLIC SYNONYM TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP PUBLIC SYNONYM TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE SEQUENCE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY SEQUENCE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY SEQUENCE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY SEQUENCE TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY SEQUENCE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE DATABASE LINK TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE PUBLIC DATABASE LINK TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP PUBLIC DATABASE LINK TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ROLE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY ROLE TO "AITECH" WITH ADMIN OPTION;
  GRANT GRANT ANY ROLE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY ROLE TO "AITECH" WITH ADMIN OPTION;
  GRANT AUDIT ANY TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER DATABASE TO "AITECH" WITH ADMIN OPTION;
  GRANT FORCE TRANSACTION TO "AITECH" WITH ADMIN OPTION;
  GRANT FORCE ANY TRANSACTION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE PROCEDURE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY PROCEDURE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY PROCEDURE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY PROCEDURE TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY PROCEDURE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE TRIGGER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY TRIGGER TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY TRIGGER TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY TRIGGER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER RESOURCE COST TO "AITECH" WITH ADMIN OPTION;
  GRANT ANALYZE ANY TO "AITECH" WITH ADMIN OPTION;
  GRANT GRANT ANY PRIVILEGE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE MATERIALIZED VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY MATERIALIZED VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY MATERIALIZED VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY MATERIALIZED VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY DIRECTORY TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY DIRECTORY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE TYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY TYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY TYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY TYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY TYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT UNDER ANY TYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE LIBRARY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY LIBRARY TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY LIBRARY TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY LIBRARY TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY LIBRARY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE OPERATOR TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY OPERATOR TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY OPERATOR TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY OPERATOR TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY OPERATOR TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE INDEXTYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY INDEXTYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY INDEXTYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY INDEXTYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT UNDER ANY VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT QUERY REWRITE TO "AITECH" WITH ADMIN OPTION;
  GRANT GLOBAL QUERY REWRITE TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY INDEXTYPE TO "AITECH" WITH ADMIN OPTION;
  GRANT UNDER ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY CONTEXT TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY CONTEXT TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY OUTLINE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY OUTLINE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY OUTLINE TO "AITECH" WITH ADMIN OPTION;
  GRANT ADMINISTER DATABASE TRIGGER TO "AITECH" WITH ADMIN OPTION;
  GRANT MERGE ANY VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT ON COMMIT REFRESH TO "AITECH" WITH ADMIN OPTION;
  GRANT EXEMPT ACCESS POLICY TO "AITECH" WITH ADMIN OPTION;
  GRANT RESUMABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY DICTIONARY TO "AITECH" WITH ADMIN OPTION;
  GRANT DEBUG CONNECT SESSION TO "AITECH" WITH ADMIN OPTION;
  GRANT DEBUG CONNECT ANY TO "AITECH" WITH ADMIN OPTION;
  GRANT DEBUG ANY PROCEDURE TO "AITECH" WITH ADMIN OPTION;
  GRANT FLASHBACK ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT GRANT ANY OBJECT PRIVILEGE TO "AITECH" WITH ADMIN OPTION;
  GRANT EXPORT FULL DATABASE TO "AITECH" WITH ADMIN OPTION;
  GRANT IMPORT FULL DATABASE TO "AITECH" WITH ADMIN OPTION;
  GRANT ANALYZE ANY DICTIONARY TO "AITECH" WITH ADMIN OPTION;
  GRANT ADVISOR TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE JOB TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY JOB TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY PROGRAM TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY CLASS TO "AITECH" WITH ADMIN OPTION;
  GRANT MANAGE SCHEDULER TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY TRANSACTION TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY SQL PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY SQL PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ADMINISTER SQL TUNING SET TO "AITECH" WITH ADMIN OPTION;
  GRANT ADMINISTER ANY SQL TUNING SET TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY SQL PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT EXEMPT IDENTITY POLICY TO "AITECH" WITH ADMIN OPTION;
  GRANT CHANGE NOTIFICATION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE EXTERNAL JOB TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY EDITION TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY EDITION TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY EDITION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ASSEMBLY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY ASSEMBLY TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY ASSEMBLY TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY ASSEMBLY TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ANY ASSEMBLY TO "AITECH" WITH ADMIN OPTION;
  GRANT EXECUTE ASSEMBLY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE MINING MODEL TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY MINING MODEL TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY MINING MODEL TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY MINING MODEL TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY MINING MODEL TO "AITECH" WITH ADMIN OPTION;
  GRANT COMMENT ANY MINING MODEL TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT DELETE ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT INSERT ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE CUBE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY CUBE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY CUBE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY CUBE TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY CUBE TO "AITECH" WITH ADMIN OPTION;
  GRANT UPDATE ANY CUBE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT DELETE ANY MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT INSERT ANY MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE CUBE BUILD PROCESS TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY CUBE BUILD PROCESS TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY CUBE BUILD PROCESS TO "AITECH" WITH ADMIN OPTION;
  GRANT UPDATE ANY CUBE BUILD PROCESS TO "AITECH" WITH ADMIN OPTION;
  GRANT UPDATE ANY CUBE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER PUBLIC DATABASE LINK TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER DATABASE LINK TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE SQL TRANSLATION PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY SQL TRANSLATION PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY SQL TRANSLATION PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT USE ANY SQL TRANSLATION PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY SQL TRANSLATION PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ADMINISTER KEY MANAGEMENT TO "AITECH" WITH ADMIN OPTION;
  GRANT KEEP DATE TIME TO "AITECH" WITH ADMIN OPTION;
  GRANT KEEP SYSGUID TO "AITECH" WITH ADMIN OPTION;
  GRANT EM EXPRESS CONNECT TO "AITECH" WITH ADMIN OPTION;
  GRANT PURGE DBA_RECYCLEBIN TO "AITECH" WITH ADMIN OPTION;
  GRANT FLASHBACK ARCHIVE ADMINISTER TO "AITECH" WITH ADMIN OPTION;
  GRANT EXEMPT REDACTION POLICY TO "AITECH" WITH ADMIN OPTION;
  GRANT INHERIT ANY PRIVILEGES TO "AITECH" WITH ADMIN OPTION;
  GRANT TRANSLATE ANY SQL TO "AITECH" WITH ADMIN OPTION;
  GRANT INHERIT ANY REMOTE PRIVILEGES TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE PLUGGABLE DATABASE TO "AITECH" WITH ADMIN OPTION;
  GRANT SET CONTAINER TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE LOCKDOWN PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP LOCKDOWN PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER LOCKDOWN PROFILE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE CREDENTIAL TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY CREDENTIAL TO "AITECH" WITH ADMIN OPTION;
  GRANT LOGMINING TO "AITECH" WITH ADMIN OPTION;
  GRANT USE ANY JOB RESOURCE TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY MEASURE FOLDER TO "AITECH" WITH ADMIN OPTION;
  GRANT SELECT ANY CUBE BUILD PROCESS TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY CUBE BUILD PROCESS TO "AITECH" WITH ADMIN OPTION;
  GRANT READ ANY TABLE TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ATTRIBUTE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY ATTRIBUTE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY ATTRIBUTE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY ATTRIBUTE DIMENSION TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE HIERARCHY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY HIERARCHY TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY HIERARCHY TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY HIERARCHY TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANALYTIC VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT CREATE ANY ANALYTIC VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT ALTER ANY ANALYTIC VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT DROP ANY ANALYTIC VIEW TO "AITECH" WITH ADMIN OPTION;
  GRANT READ ANY ANALYTIC VIEW CACHE TO "AITECH" WITH ADMIN OPTION;
  GRANT WRITE ANY ANALYTIC VIEW CACHE TO "AITECH" WITH ADMIN OPTION;
  GRANT TEXT DATASTORE ACCESS TO "AITECH" WITH ADMIN OPTION;


