-- Create Table Space for Subway crowdedness AI project 
 CREATE TEMPORARY TABLESPACE "AITECH_LOGSPACE" TEMPFILE 
  'C:\APP\GUSAM\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\AITECH_LOGFILE' SIZE 536870912
  AUTOEXTEND ON NEXT 268435456 MAXSIZE 32767M
  EXTENT MANAGEMENT LOCAL UNIFORM SIZE 1048576;

 CREATE TABLESPACE "AITECH_TABLESPACE" DATAFILE 
  'C:\APP\GUSAM\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\AITECH_DATAFILE' SIZE 536870912
  AUTOEXTEND ON NEXT 268435456 MAXSIZE 32767M
  LOGGING ONLINE PERMANENT BLOCKSIZE 8192
  EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT 
 NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO;
