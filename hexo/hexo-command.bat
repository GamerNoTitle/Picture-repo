@echo off
title hexo�������̨(Produced by GamerNoTitle)
cls
:mode
cls
@echo [1]�½�hexo����(hexo new "<Blog Name>")
@echo [2]�½�hexoҳ��(hexo new page "<Page Name>")
@echo [3]����hexoҳ��(hexo publish)
@echo [4]����hexo��̬ҳ�浽PublicĿ¼(hexo generate)
@echo [5]����hexo���ط���Ԥ��(hexo server)
@echo [6]����hexo����վ(hexo deploy) [Notice:����Ҫ��_config.yml�������òֿ��ַ����Ϣ]
@echo [7]���public�ļ��м�����(hexo clean)
@echo [0]�˳�
set /p mode=���������ָ��������ָ���������!����
if %mode% == 1 goto new
if %mode% == 2 goto newp
if %mode% == 3 goto pub
if %mode% == 4 goto gen
if %mode% == 5 goto server
if %mode% == 6 goto deploy
if %mode% == 7 goto clean
if %mode% == 0 exit
exit

:new
set /p name=�����������µ����֣�
hexo new "%name%"
@echo New Article Has been Added! Press any Key to Contiune
pause
goto mode

:newp
set /p name=��������ҳ������֣�
hexo new page "%name%"
@echo New Page Has been Added! Press any Key to Contiune
goto mode

:pub
hexo publish
@echo Publish Process Finished! Press any Key to Contiune
pause
goto mode

:gen
hexo generate
@echo Generate Process Finished! Press any Key to Contiune

:server
@echo [1]��׼ģʽ��Hexo ������ļ��䶯���Զ����£�����������������
@echo [2]��̬ģʽ��Hexo ��̬ģʽ
@echo [3]�˿�ģʽ��Hexo ���ض˿ڿ��޸�
@echo [4]IPģʽ��Hexo ����IP���޸�
@echo [0]����ģʽѡ��
set /p server-mode=��ѡ��hexo serverģʽ��
if %server-mode% == 1 hexo server
if %server-mode% == 2 hexo server -s
if %server-mode% == 3 goto server-port
if %server-mode% == 4 goto server-ip
goto server

:server-port
set /p port=������˿ڣ�
hexo server -p %port%
goto mode

:server-ip
set /p ip=������IP��
hexo server -i %ip%
goto mode

:deploy
hexo deploy
@echo Deploy Process Finished! Press any Key to Contiune
pause
goto mode

:clean
hexo clean
@echo Public And Cache Have been Cleared! Press any Key to Contiune
pause
goto mode