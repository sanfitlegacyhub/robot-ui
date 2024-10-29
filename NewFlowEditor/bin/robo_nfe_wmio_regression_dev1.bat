call robot -d ../Logs  --variable env:dev1 ../Scripts/nfe_Testsuite_regression.robot
call robot --rerunfailed ../Logs/output.xml --output rerun.xml -d ../Logs  --variable env:dev1  ../Scripts/nfe_Testsuite_regression.robot
call rebot  --outputdir ../Logs --output output.xml --merge ../Logs/output.xml ../Logs/rerun.xml
