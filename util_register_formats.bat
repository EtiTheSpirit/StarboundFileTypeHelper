@ECHO OFF
FOR /F "tokens=*" %%A IN (FormatList.txt) DO (

	::NOTE: EDIT THE FTYPE COMMAND BELOW!
	::You should replace the path with your desired text editor of choice. It should NOT have quotes around it. For instance, C:\Program Files\Notepad++\notepad++.exe
	::Additional note: It appears to throw a "The system cannot find the file specified error" but it works anyway. I'm uncertain as to why this is the case
	
	FTYPE StarboundFile=C:\Windows\notepad.exe "%%1"
	ASSOC %%A=StarboundFile
	ECHO Registered %%A
)
EXIT