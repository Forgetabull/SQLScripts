select
     dp.name [user_name]
    ,dp.type_desc [user_type]
    ,isnull(sp.name,'Orphaned!') [login_name]
    ,sp.type_desc [login_type]
from   
    sys.database_principals dp
    left join sys.server_principals sp on (dp.sid = sp.sid)
where
    dp.type in ('S','U','G')
    and dp.principal_id >4
order by sp.name

ALTER USER User1 WITH LOGIN=User1
ALTER USER User2 WITH LOGIN=User2
ALTER USER [Domain\User3] WITH LOGIN=[Domain\User3]
