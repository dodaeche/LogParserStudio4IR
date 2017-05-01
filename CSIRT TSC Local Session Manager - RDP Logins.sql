/* Log Parser Studio Query for Incident Response */
/* Report of all RDP connects in the TSC Local Session Event logs */
/* Tested on Windows Server 2008 R2*/
/* Logon = 21 */
/* Disconnect = 24*/
/* Logoff = 23*/
/* Reconnect = 25*/
	    
	    SELECT 
timegenerated, 
      RESOLVE_SID(EXTRACT_TOKEN(Strings,0,'|')) AS User, 
      EXTRACT_TOKEN(Strings,1,'|') AS Session,
      EXTRACT_TOKEN(Strings,4,'|') AS ClientHostname,
      EXTRACT_TOKEN(Strings,2,'|') AS IP,
      EventID,
      EventTypeName
FROM 'C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv02Logs\rdeskserv02Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv03Logs\rdeskserv03Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv04Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdlicserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\Rsuppserv01_Windows_Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor000Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor001Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\11-9-2016\Logs\*.evtx','C:\Users\USX29548\Desktop\rackspace\eventviewer\*.evtx'
WHERE EventID=24 or EventID=25 or EventID=23 or EventID=21
ORDER BY timegenerated 