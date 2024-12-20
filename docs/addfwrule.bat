call :PROCESSFILE %~$PATH:1
GOTO EOF
 
:PROCESSFILE
set fwnamein=auto in %~pn1
set fwnameout=auto out %~pn1
 
set fwnamein=%fwnamein:\=_%
set fwnameout=%fwnameout:\=_%
 
echo "Adding or modifying: %1"
netsh advfirewall firewall set rule name="%fwnamein%" new dir=in remoteip=localsubnet action=allow program="%1" edge=yes
IF %ERRORLEVEL% NEQ 0 netsh advfirewall firewall add rule name="%fwnamein%" dir=in remoteip=localsubnet action=allow program="%1" edge=yes
 
netsh advfirewall firewall set rule name="%fwnameout%" new dir=out remoteip=localsubnet action=allow program="%1"
IF %ERRORLEVEL% NEQ 0 netsh advfirewall firewall add rule name="%fwnameout%" dir=out remoteip=localsubnet action=allow program="%1"
GOTO EOF
 
:EOF