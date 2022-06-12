# Current NetSpan Install error:

### Console Error:
```
Unhandled exception. System.ArgumentOutOfRangeException: The value must be greater than or equal to zero and less than the console's buffer size in that dimension. (Parameter 'top')
Actual value was -1.
   at System.Console.SetCursorPosition(Int32 left, Int32 top)
   at System.Console.set_CursorTop(Int32 value)
   at Airspan.Netspan.Setup.Install.Program.Main(String[] args)
   at Airspan.Netspan.Setup.Install.Program.<Main>(String[] args)
```

### Installer Error Log /var/log:
```
SetupLog.Create() connecting file /var/log/nms/installation/Install_129.19.00.182_2022_06_12_14H27M08S496.txt to Trace Output Now and removing all existing listeners
14:27:08.497 AppMain --------------------------------------------------
14:27:08.497 AppMain ---------- START INSTALL v129.19.00.182 ----------
14:27:08.497 AppMain --------------------------------------------------
14:27:08.497 AppMain Start of the Main() Method.
14:27:08.497 AppMain Creating Database Backup Directory...
14:27:08.499 AppMain Saving branding to configuration...
14:27:08.499     <WriteToConfigAsync>d__20 MoveNext Method started ...
14:27:08.594     <WriteToConfigAsync>d__20 MoveNext Method ended ...
14:27:08.596 AppMain 
14:27:08.596 AppMain -----------------------------------------------------------------
14:27:08.596 AppMain ------------------------LICENCE AGREEMENT------------------------
14:27:08.596 AppMain -----------------------------------------------------------------
14:27:08.597 AppMain Copyright 2000 - 2022 Airspan Networks Inc.
ALL RIGHTS RESERVED.

Warning:
This software is owned by Airspan Networks Inc.
It is protected by Copyright Law and International Treaties.

FCC compliant software only for use within United States of America.

Unauthorised reproduction or distribution of this program, or any portion of it, may result in severe civil and criminal penalties, and will be prosecuted to the maximum extent possible under the law.
14:27:08.598 AppMain -----------------------------------------------------------------
14:27:08.599 AppMain 
14:27:08.599     SETUP UTILS **** Start TryWriteInstallType ****
14:27:08.601     SETUP UTILS TryWriteInstallType - Returned: True
14:27:08.601 AppMain Carrying out pre-install checks...
14:27:08.602     PREREQUISITES **** Start CheckDotNet()
14:27:08.602     PREREQUISITES CheckDotNet() - Attempt checking .NET installed version
14:27:08.602     PREREQUISITES CheckDotNet() - .NET min required installed Version is: 6.0.0
14:27:08.602     PREREQUISITES CheckDotNet() - .NET installed Version is: 6.0.5
14:27:08.602     PREREQUISITES CheckDotNet - Returned: True
14:27:08.604     SERVICES.NetspanServices IsServerManagerRunning(): No
14:27:08.604     PREREQUISITES ServerManager process successfully killed (if it was running)
14:27:08.604     SERVICES.NetspanServices IsServerManagerRunning(): No
14:27:08.604     PREREQUISITES ServerManagerConsole process successfully killed (if it was running)
14:27:08.605     SERVICES.NetspanServices IsServerManagerRunning(): No
14:27:08.605     PREREQUISITES ServerManagerWindows process successfully killed (if it was running)
14:27:08.605 AppMain Checking installation status...
14:27:08.605     SETUP UTILS **** Start TryReadActiveFlag ****
14:27:08.606     SETUP UTILS TryReadActiveFlag - Returns Flag = False
14:27:08.606     SETUP UTILS TryReadActiveFlag - Returned: True
14:27:08.669 AppMain CONTINUING WITH INSTALLATION
14:27:08.670 AppMain Getting branding defaults...
14:27:08.671 AppMain Reading installation configuration...
14:27:08.672     SETUP UTILS **** Start ReadFromConfig()
14:27:08.674     SETUP UTILS ReadFromConfig() - Text returned for InstallType = Full Upgrade
14:27:08.674     SETUP UTILS ReadFromConfig() - Text returned for InstallDesc = Upgrade of the database, services and web site
14:27:08.674     SETUP UTILS **** End ReadFromConfig() - returning True
14:27:08.675 AppMain Getting file paths from configuration...
14:27:08.676 AppMain Getting database configuration...
14:27:08.682 AppMain Setting SQL authentication...
14:27:08.683 AppMain SetAuthenticationModes: Read Authentication From Reg with login-root password-System.Byte[]
14:27:08.684 AppMain SQL Server Authentication Type: SQL Server Authentication, Password: 56,147,148,223,208,157,218,112,214,168,124,19,211,25,199,5
14:27:08.687 AppMain Validating database configuration...
14:27:08.717 MultiSqlInstance GetSqlServiceName() for instance '' returned 'mssql-server'
14:27:08.717 AppMain Installation Type: Full (Database + Web Application + Services)
14:27:08.717 AppMain Validating database...
14:27:08.718 AppMain Checking SQL Server version...
14:27:08.720     <GetDataSources>d__3 MoveNext Method started ...
14:27:08.720     SqlNetworkEnumerator Start of SqlNetworkEnumerator:Refresh()
14:27:13.884     SqlNetworkEnumerator Found 0 data sources on 0 servers
14:27:13.884     <GetDataSources>d__3 MoveNext Method ended ...
14:27:13.885     PREREQUISITES **** Start CheckSqlServer()
14:27:13.886     PREREQUISITES CheckSqlServer() - for Instance: sql
14:27:13.887     DATABASE Starting - GetSqlInstanceVersion()
14:27:13.890     DATABASE MasterConnectionString is Data Source=sql;Integrated Security=False;User ID=root;Password=<hidden>;Pooling=True;Max Pool Size=500;Trust Server Certificate=True
ERROR: CheckSqlServer() - Exception message: Microsoft.Data.SqlClient.SqlException (0x80131904): A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: TCP Provider, error: 40 - Could not open a connection to SQL Server: Could not open a connection to SQL Server)
   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.Connect(ServerInfo serverInfo, SqlInternalConnectionTds connHandler, Boolean ignoreSniOpenTimeout, Int64 timerExpire, Boolean encrypt, Boolean trustServerCert, Boolean integratedSecurity, Boolean withFailover, SqlAuthenticationMethod authType)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.AttemptOneLogin(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean ignoreSniOpenTimeout, TimeoutTimer timeout, Boolean withFailover)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.LoginNoFailover(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString connectionOptions, SqlCredential credential, TimeoutTimer timeout)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.OpenLoginEnlist(TimeoutTimer timeout, SqlConnectionString connectionOptions, SqlCredential credential, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData, Boolean applyTransientFaultHandling, String accessToken, DbConnectionPool pool)
   at Microsoft.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at Microsoft.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   at Microsoft.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at Microsoft.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at Microsoft.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at Microsoft.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at Microsoft.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at Microsoft.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at Microsoft.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at Microsoft.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry, SqlConnectionOverrides overrides)
   at Microsoft.Data.SqlClient.SqlConnection.Open(SqlConnectionOverrides overrides)
   at Microsoft.Data.SqlClient.SqlConnection.Open()
   at Airspan.Netspan.Setup.Common.DB.GetSqlInstanceVersion()
   at Airspan.Netspan.Setup.Common.PreRequisites.CheckSqlServer(String DataSource, String authLogin, Object authPassword)
ClientConnectionId:00000000-0000-0000-0000-000000000000
14:27:28.534 AppMain Determining installation type...
14:27:28.535 AppMain MainForm: selected machine as a server: sql
14:27:28.537 AppMain Validating file paths...
14:27:28.539     SETUP UTILS **** Start FormatPath(): /opt/nms_data
14:27:28.539     SETUP UTILS FormatPath() - Returned: True
14:27:28.540 AppMain Writing installation configuration to file...
14:27:28.541     SETUP UTILS **** Start WriteToConfig()
14:27:28.541     SETUP UTILS **** Start FormatPath(): /opt/nms_data
14:27:28.541     SETUP UTILS FormatPath() - Returned: True
14:27:28.541     SETUP UTILS **** Start FormatPath(): /opt/nms_data
14:27:28.541     SETUP UTILS FormatPath() - Returned: True
14:27:28.542     SETUP UTILS **** Start ReadFromConfig()
14:27:28.542     SETUP UTILS ReadFromConfig() - Text returned for InstallType = Full
14:27:28.542     SETUP UTILS ReadFromConfig() - Text returned for InstallDesc = Installation of the database, services and web site
14:27:28.542     SETUP UTILS **** End ReadFromConfig() - returning True
14:27:28.542     SETUP UTILS WriteToConfig() - In Registry, InstallType = CLEAN
14:27:28.542     SETUP UTILS WriteToConfig() - In Registry, DBServerName = sql
14:27:28.542     SETUP UTILS WriteToConfig() - In Registry, ApplicationPath = /opt/nms_data
14:27:28.542     SETUP UTILS WriteToConfig() - In Registry, DBPath = /var/opt/mssql/sql_data
14:27:28.542     SETUP UTILS WriteToConfig() - In Registry, ServiceUserName = root
14:27:28.543     SETUP UTILS WriteToConfig() - In Registry, ServicePassword = 
14:27:28.543     SETUP UTILS WriteToConfig() - In Registry, ServiceAutoStartup = 0
14:27:28.543     SETUP UTILS WriteToConfig() - In Registry, InstallExePath = /root
14:27:28.543     SETUP UTILS WriteToConfig() - In Registry, AuthenticationLogin = root
14:27:28.543     SETUP UTILS WriteToConfig() - In Registry, AuthenticationPassword = System.Byte[]
14:27:28.543     SETUP UTILS WriteToConfig() - In Registry, AllowedHosts = 
14:27:28.543     SETUP UTILS WriteToConfig() - returning True
14:27:28.544 AppMain Checking database authentication details...
14:27:28.546     PREREQUISITES **** Start PostCheck()
14:27:28.547     OS **** Start GetOSName()
14:27:28.547     OS GetOSName() - returned: True for OS: Unix - Version: 5.17.13.300
ERROR: PostCheck() - Threw Exception: An error occurred trying to start process 'free' with working directory '/root'. No such file or directory
14:27:28.549     PREREQUISITES PostCheck() - Returned: False
```
