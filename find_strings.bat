::Generic Batch script to search a set of files for a string
::designed to work in Windows environments where dev tools aren't provided or allowed

:inform_user
@ ECHO OFF
@ ECHO "This is a tool to assist searches for particular patterns in large sets of text files."
@ ECHO "For now, the search strings are written in the script."
@ ECHO "Furture version will take the search pattern in at run time."

:time_stamp
@ ECHO ON
@ SET DELIMITER=_

::trim seconds resolution down
@ SET T=%TIME%
@ SET T=%T:~0,-3%

::place in _ format
@ SET T=%T:~-8,2%%DELIMITER%%T:~-5,2%%DELIMITER%%T:~-2,2% 
@ ECHO %T%


@ SET D=%DATE%
@ SET D=%D:~-4,4%%DELIMITER%%D:~-7,2%%DELIMITER%%D:~-10,2%

@ ECHO %D%
@ PAUSE

:find_it
::FINDSTR
@ PAUSE

:dump_results_in_log
::> C:\temp\BLAH_%T%_%D%.txt
@ PAUSE