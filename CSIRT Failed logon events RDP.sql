SELECT 
timegenerated, 
      EXTRACT_TOKEN(Strings,2,'|') AS Domain, 
      RESOLVE_SID(EXTRACT_TOKEN(Strings,5,'|')) AS User, 
      EXTRACT_TOKEN(Strings,10,'|') AS TYPE,
      EXTRACT_TOKEN(Strings,13,'|') AS ServerHostname,
      EXTRACT_TOKEN(Strings,19,'|') AS IP,
      EventID,
      EventTypeName
FROM 'C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv02Logs\rdeskserv02Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv03Logs\rdeskserv03Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv04Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdlicserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\Rsuppserv01_Windows_Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor000Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor001Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\11-9-2016\Logs\*.evtx','C:\Users\USX29548\Desktop\rackspace\eventviewer\*.evtx'
WHERE Type = '10' and EventID=4625 /* xp/2003 = 682 */
ORDER BY timegenerated 
