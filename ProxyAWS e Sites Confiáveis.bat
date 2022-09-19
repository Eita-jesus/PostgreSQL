@echo off
@chcp 1252 >nul

Title Configura IP e Porta no Proxy I.E


@echo.
@echo    *******************************************
@echo    ***    CONFIGURAÇÃO DE PROXY NO IE     ***
@echo    ***   PARA ACESSO A SITES DA RECEITA   ***
@echo    ***                                     ***
@echo    *******************************************
@echo.

echo =====================================================
echo     Configurando IP e Porta para o Servidor Proxy 
echo =====================================================
timeout /t 2 >nul
echo.

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d 172.30.0.50:8081 /f
echo.
echo ===========================================
echo Proxy Habilitado e Configurado com Sucesso!
echo ===========================================
echo.

timeout /t 5 >nul

ECHO ######################################
ECHO ##### INSERINDO SITES CONFIAVEIS #####
ECHO ######################################
REM Sites Governo

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.conectividade.caixa.gov.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\conectividade.caixa.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\conectividade.caixa.gov.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.caixa.gov.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\caixa.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\caixa.gov.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.esocial.gov.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\esocial.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\esocial.gov.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*www8.receita.fazenda.gov.br/simplesnacional/" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*.receita.fazenda.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*.receita.fazenda.gov.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*www8.receita.fazenda.gov.br/simplesnacional/" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.receita.fazenda.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.receita.fazenda.gov.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.cte.fazenda.gov.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\cte.fazenda.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\cte.fazenda.gov.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.consultacadastral.inss.gov.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\consultacadastral.inss.gov.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\consultacadastral.inss.gov.br" /v https /t REG_DWORD /d 00000002 /f

REM Sites Alterdata

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.livedesktop.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\livedesktop.alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\livedesktop.alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*.livedesktop.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\livedesktop.alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\livedesktop.alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*.packup.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\packup.alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\packup.alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\*.nfstock.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\nfstock.alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\EscDomains\nfstock.alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.packup.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\packup.alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\packup.alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\*.nfstock.alterdata.com.br" /v * /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\nfstock.alterdata.com.br" /v http /t REG_DWORD /d 00000002 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\nfstock.alterdata.com.br" /v https /t REG_DWORD /d 00000002 /f

REM Libera Qualificacao Cadastral

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v 2500 /t REG_DWORD /d 00000003 /f



ECHO #########################################
ECHO ##### FINALIZADO, PRESSIONE P/ SAIR #####
ECHO ######################################### 
pause
