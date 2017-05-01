SELECT 
timegenerated, 
      EXTRACT_TOKEN(Strings,6,'|') AS Domain, 
      RESOLVE_SID(EXTRACT_TOKEN(Strings,5,'|')) AS User, 
      EXTRACT_TOKEN(Strings,8,'|') AS TYPE,
      EXTRACT_TOKEN(Strings,11,'|') AS ClientHostname,
      EXTRACT_TOKEN(Strings,18,'|') AS IP,
      EventID,
      EventTypeName
FROM 'C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv02Logs\rdeskserv02Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv03Logs\rdeskserv03Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv04Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdlicserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\Rsuppserv01_Windows_Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor000Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor001Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\11-9-2016\Logs\*.evtx','C:\Users\USX29548\Desktop\rackspace\eventviewer\*.evtx'
WHERE TYPE = '10' and EventID=4624 /* xp/2003 = 682 */
ORDER BY timegenerated 
