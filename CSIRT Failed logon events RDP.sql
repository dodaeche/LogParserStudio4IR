﻿SELECT 
timegenerated, 
      EXTRACT_TOKEN(Strings,2,'|') AS Domain, 
      RESOLVE_SID(EXTRACT_TOKEN(Strings,5,'|')) AS User, 
      EXTRACT_TOKEN(Strings,10,'|') AS TYPE,
      EXTRACT_TOKEN(Strings,13,'|') AS ServerHostname,
      EXTRACT_TOKEN(Strings,19,'|') AS IP,
      EventID,
      EventTypeName
FROM '*.evtx'
WHERE Type = '10' and EventID=4625 /* xp/2003 = 682 */
ORDER BY timegenerated 
