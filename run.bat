@ECHO OFF
set JRE_HOME_32=D:\opt\Java\jre7b
set JRE_HOME_64=D:\opt\Java\jre7c
set JRE_HOME=%JRE_HOME_64%
%JRE_HOME%\bin\java.exe ^
-classpath target\swtbrowser-1.0-SNAPSHOT-jar-with-dependencies.jar ^
-Xbootclasspath/a:"%JRE_HOME%\lib\plugin.jar;%JRE_HOME%\lib\deploy.jar;%JRE_HOME%\lib\javaws.jar" ^
be.mips.cyberlab.swtbrowser.DocumentationViewer