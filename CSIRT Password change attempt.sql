/*  Password change attempt  */
select  
timegenerated, 
      
      EXTRACT_TOKEN(Strings,0,'|') AS Target_User,
      EXTRACT_TOKEN(Strings,1,'|') AS TargetDomain,
      EXTRACT_TOKEN(Strings,4,'|') AS Admin,
      EXTRACT_TOKEN(Strings,5,'|') AS Domain,
      EventID,
      ComputerName,
      SourceName

FROM 'C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv02Logs\rdeskserv02Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv03Logs\rdeskserv03Logs\Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdeskserv04Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\rdlicserv01Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\Rsuppserv01_Windows_Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor000Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\sanstor001Logs\*.evtx','C:\Users\USX29548\Desktop\Syracuse\Eventlogs\11-9-2016\Logs\*.evtx','C:\Users\USX29548\Desktop\rackspace\eventviewer\*.evtx'
WHERE EventID = '4724'

