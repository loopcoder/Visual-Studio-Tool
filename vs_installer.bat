@echo off

SET _VERSION=2017
goto :BatchGotAdmin

:--------------------------------------

:version2012
	::en_visual_studio_ultimate_2012_x86_web_installer_2599164.exe
	::mu_visual_studio_2012_update_5_x86_6967473

	:: DOWNLOAD SETUP
	set _DOWNLOAD_SETUP=1
	set download_setup_exe="%~dp0\vs_ultimate.exe"
	set download_setup_arg=/Layout "%~dp0\vst_setup" /NoRestart /Full
	set download_setup_recommended_arg=
	set download_setup_optional_arg=
	set download_fix_arg=

	:: DOWNLOAD UPDATE
	set _DOWNLOAD_UPDATE=1
	set download_update_exe="%~dp0\vs_update.exe"
	set download_update_arg=/Layout "%~dp0\vst_update" /NoRestart /Full

	:: CERTIFICATE
	set _INSTALL_CERTIFICATE=0
	set install_cert_folder=
	set install_cert_exe=

	:: INSTALL SETUP
	set _INSTALL_SETUP=1
	set install_setup_exe="%~dp0\vst_setup\vs_ultimate.exe"
	set install_setup_arg=/NoWeb /NoRestart /ProductKey RBCXF-CVBGR-382MK-DFHJ4-C69G8

	:: INSTALL UPDATE
	set _INSTALL_UPDATE=1
	set install_update_exe="%~dp0\vst_update\VS2012.5.exe"
	set install_update_arg=/NoWeb /NoRestart

	:: INSTALL LANGUAGE
	set _INSTALL_LANGUAGE=1
	::tr_visual_studio_2012_language_pack_x86_920748.exe
	set install_language_setup_exe="%~dp0\vst_language\vs_language_tr.exe"
	set install_language_setup_arg=

	:: INSTALL HELP
	::Microsoft.HelpViewer install
	set _INSTALL_HELP=1
	set install_help_folder="%~dp0\vst_help"
	REM set help_default_path="%ProgramData%\Microsoft\HelpLibrary2\Catalogs\VisualStudio11"
	set install_help_reg_key="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Help\v2.0\Catalogs\VisualStudio11"
	set install_help_reg_key_64="HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Help\v2.0\Catalogs\VisualStudio11"

	:: ACTIVATE
	set _ACTIVATE=0
	set activate_key=RBCXF-CVBGR-382MK-DFHJ4-C69G8
	set activate_subdir=
	set activate_reg_src=InstallDir
	set activate_reg_key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\11.0
	set activate_reg_key_64=HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\11.0

	goto :EOF

:version2013
	::en_visual_studio_ultimate_2013_with_update_5_x86_web_installer_6815915.exe

	:: DOWNLOAD SETUP
	set _DOWNLOAD_SETUP=1
	set download_setup_exe="%~dp0\vs_ultimate.exe"
	set download_setup_arg=/Layout "%~dp0\vst_setup" /NoRestart /Full
	set download_setup_recommended_arg=
	set download_setup_optional_arg=
	set download_fix_arg=

	:: DOWNLOAD UPDATE
	set _DOWNLOAD_UPDATE=0
	set download_update_exe=""
	set download_update_arg=

	:: CERTIFICATE
	set _INSTALL_CERTIFICATE=0
	set install_cert_folder=
	set install_cert_exe=

	:: CERTUTIL
	set _INSTALL_CERTUTIL=0
	set install_certutils_folder=
	set install_certutils=""

	:: INSTALL SETUP
	set _INSTALL_SETUP=1
	set install_setup_exe="%~dp0\vst_setup\vs_ultimate.exe"
	set install_setup_arg=/NoWeb /NoRestart /ProductKey 87DQC-G8CYR-CRPJ4-QX9K8-RFV2B

	:: INSTALL UPDATE
	set _INSTALL_UPDATE=0
	set install_update_exe=
	set install_update_arg=

	:: INSTALL LANGUAGE
	set _INSTALL_LANGUAGE=0
	set install_language_setup_exe=""
	set install_language_setup_arg=

	:: INSTALL HELP
	::Microsoft.HelpViewer install
	set _INSTALL_HELP=0
	set install_help_folder=""
	REM set help_default_path=""
	set install_help_reg_key=""
	set install_help_reg_key_64=""

	:: ACTIVATE
	set _ACTIVATE=1
	set activate_key=87DQC-G8CYR-CRPJ4-QX9K8-RFV2B 06181
	set activate_subdir=
	set activate_reg_src=InstallDir
	set activate_reg_key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\12.0
	set activate_reg_key_64=HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\12.0

	goto :EOF

:version2015
	::en_visual_studio_enterprise_2015_with_update_3_x86_x64_web_installer_8922986.exe

	:: DOWNLOAD SETUP
	set _DOWNLOAD_SETUP=1
	set download_setup_exe="%~dp0\vs_enterprise.exe"
	set download_setup_arg=/layout "%~dp0\vst_setup" /NoRestart /Full
	set download_setup_recommended_arg=
	set download_setup_optional_arg=
	set download_fix_arg=

	:: DOWNLOAD UPDATE
	set _DOWNLOAD_UPDATE=0
	set download_update_exe=""
	set download_update_arg=

	:: CERTIFICATE
	set _INSTALL_CERTIFICATE=0
	set install_cert_folder=
	set install_cert_exe=
	
	:: CERTUTIL
	set _INSTALL_CERTUTIL=0
	set install_certutils_folder=
	set install_certutils=""

	:: INSTALL SETUP
	set _INSTALL_SETUP=1
	set install_setup_exe="%~dp0\vst_setup\vs_enterprise.exe"
	set install_setup_arg=/NoWeb /NoRestart /ProductKey HM6NR-QXX7C-DFW2Y-8B82K-WTYJV

	:: INSTALL UPDATE
	set _INSTALL_UPDATE=0
	set install_update_exe=
	set install_update_arg=

	:: INSTALL LANGUAGE
	set _INSTALL_LANGUAGE=0
	set install_language_setup_exe=""
	set install_language_setup_arg=

	:: INSTALL HELP
	::Microsoft.HelpViewer install
	set _INSTALL_HELP=0
	set install_help_folder=""
	REM set help_default_path=""
	set install_help_reg_key=""
	set install_help_reg_key_64=""

	:: ACTIVATE
	set _ACTIVATE=1
	set activate_key=HM6NR-QXX7C-DFW2Y-8B82K-WTYJV 07060
	set activate_subdir=
	set activate_reg_src=InstallDir
	set activate_reg_key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\14.0
	set activate_reg_key_64=HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\14.0

	goto :EOF

:version2017
	::mu_visual_studio_enterprise_2017_version_15.3_x86_x64_11100063.exe
	::--locale tr-TR ::--verify

	:: DOWNLOAD SETUP
	set _DOWNLOAD_SETUP=1
	set download_setup_exe="%~dp0\vs_enterprise.exe"
	set download_setup_arg=--layout "%~dp0\vst_setup" --wait --norestart --all --lang en-US tr-TR
	set download_setup_recommended_arg=--includeOptional --includeRecommended
	set download_setup_optional_arg=
	set download_fix_arg=%download_setup_arg% %download_setup_recommended_arg% %download_setup_optional_arg% --fix

	:: DOWNLOAD UPDATE
	set _DOWNLOAD_UPDATE=0
	set download_update_exe=""
	set download_update_arg=

	:: CERTIFICATE
	set _INSTALL_CERTIFICATE=0
	set install_cert_folder=%~dp0\vst_setup\certificates
	set install_cert_exe="%~dp0\certmgr%_OSarch%.exe"
	rem set install_certs="manifestSignCertificates.p12;Microsoft Code Signing PCA 2011;LocalMachine CA|manifestSignCertificates.p12;Microsoft Root Certificate Authority;LocalMachine root|manifestCounterSignCertificates.p12;Microsoft Time-Stamp PCA 2010;LocalMachine CA|manifestCounterSignCertificates.p12;Microsoft Root Certificate Authority;LocalMachine root|vs_installer_opc.SignCertificates.p12;Microsoft Code Signing PCA;LocalMachine CA|vs_installer_opc.SignCertificates.p12;Microsoft Root Certificate Authority;LocalMachine root"
	rem For Visual Studio 2017 version 15.8 Preview 2 or later:
	set install_certs="manifestRootCertificate.cer;Microsoft Root Certificate Authority 2011;LocalMachine root|manifestCounterSignRootCertificate.cer;Microsoft Root Certificate Authority 2010;LocalMachine root|vs_installer_opc.RootCertificate.cer;Microsoft Root Certificate Authority;LocalMachine root"

	:: CERTUTIL
	set _INSTALL_CERTUTIL=1
	set install_certutils_folder=%~dp0\vst_setup\certificates
	set install_certutils="manifestRootCertificate.cer|manifestCounterSignRootCertificate.cer|vs_installer_opc.RootCertificate.cer"

	:: INSTALL SETUP
	set _INSTALL_SETUP=1
	set install_setup_exe="%~dp0\vst_setup\vs_setup.exe"
	set install_setup_arg=--wait --norestart --noWeb --productKey NJVYC-BMHX2-G77MM-4XJMR-6Q8QF

	:: INSTALL UPDATE
	set _INSTALL_UPDATE=0
	set install_update_exe=
	set install_update_arg=

	:: INSTALL LANGUAGE
	set _INSTALL_LANGUAGE=0
	set install_language_setup_exe=""
	set install_language_setup_arg=

	:: INSTALL HELP
	::Microsoft.HelpViewer install
	set _INSTALL_HELP=1
	set install_help_folder="%~dp0\vst_help"
	REM set help_default_path="%ProgramData%\Microsoft\HelpLibrary2\Catalogs\VisualStudio15"
	set install_help_reg_key="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Help\v2.3\Catalogs\VisualStudio15"
	set install_help_reg_key_64="HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Help\v2.3\Catalogs\VisualStudio15"

	:: ACTIVATE
	set _ACTIVATE=1
	set activate_key=NJVYC-BMHX2-G77MM-4XJMR-6Q8QF 08860
	set activate_subdir=Common7\IDE
	set activate_reg_src=15.0
	set activate_reg_key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\SxS\VS7
	set activate_reg_key_64=HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\SxS\VS7

	goto :EOF
	
:version2019
	::mu_visual_studio_enterprise_2019_x86_x64.exe
	::--locale tr-TR ::--verify

	:: DOWNLOAD SETUP
	set _DOWNLOAD_SETUP=1
	set download_setup_exe="%~dp0\vs_enterprise.exe"
	set download_setup_arg=--layout "%~dp0\vst_setup" --wait --norestart --all --lang en-US tr-TR
	set download_setup_recommended_arg=--includeOptional --includeRecommended
	set download_setup_optional_arg=
	set download_fix_arg=%download_setup_arg% %download_setup_recommended_arg% %download_setup_optional_arg% --fix

	:: DOWNLOAD UPDATE
	set _DOWNLOAD_UPDATE=0
	set download_update_exe=""
	set download_update_arg=

	:: CERTIFICATE
	set _INSTALL_CERTIFICATE=0
	set install_cert_folder=
	set install_cert_exe=
	rem set install_certs=
	rem For Visual Studio 2017 version 15.8 Preview 2 or later:
	set install_certs=

	:: CERTUTIL
	set _INSTALL_CERTUTIL=1
	set install_certutils_folder=%~dp0\vst_setup\certificates
	set install_certutils="manifestRootCertificate.cer|manifestCounterSignRootCertificate.cer|vs_installer_opc.RootCertificate.cer"

	:: INSTALL SETUP
	set _INSTALL_SETUP=1
	set install_setup_exe="%~dp0\vst_setup\vs_setup.exe"
	set install_setup_arg=--wait --norestart --noWeb --productKey BF8Y8-GN2QH-T84XB-QVY3B-RC4DF

	:: INSTALL UPDATE
	set _INSTALL_UPDATE=0
	set install_update_exe=
	set install_update_arg=

	:: INSTALL LANGUAGE
	set _INSTALL_LANGUAGE=0
	set install_language_setup_exe=""
	set install_language_setup_arg=

	:: INSTALL HELP
	::Microsoft.HelpViewer install
	set _INSTALL_HELP=0
	set install_help_folder=""
	REM set help_default_path=""
	set install_help_reg_key=""
	set install_help_reg_key_64=""

	:: ACTIVATE
	set _ACTIVATE=0
	set activate_key=BF8Y8-GN2QH-T84XB-QVY3B-RC4DF 09260
	set activate_subdir=Common7\IDE
	set activate_reg_src=16.0
	set activate_reg_key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\SxS\VS7
	set activate_reg_key_64=HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\SxS\VS7

	goto :EOF

:--------------------------------------

:start
	if %_VERSION% NEQ 2012 if %_VERSION% NEQ 2013 if %_VERSION% NEQ 2015 if %_VERSION% NEQ 2017 if %_VERSION% NEQ 2019 goto :god_exit
	call :version%_VERSION%

	set "isR=Recommended "
	set "isO=Optional "
	if not defined download_setup_optional_arg set "isR="
	if not defined download_setup_optional_arg set "isO="

	goto :main_menu

:BatchGotAdmin
	set "FOLDER=%~dp0"
	echo "" > "%FOLDER%\getadmin.vbs" && (
		set "FOLDER=%~dp0"
	) || (
		set "FOLDER=%temp%"
	)
	>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
	if '%errorlevel%' NEQ '0' (
		echo Requesting administrative privileges...
		goto :UACPrompt
	) else (
		goto :gotAdmin
	)
:UACPrompt
	echo Set UAC = CreateObject^("Shell.Application"^) > "%FOLDER%\getadmin.vbs"
	echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%FOLDER%\getadmin.vbs"
	"%FOLDER%\getadmin.vbs"
	goto :god_exit
:gotAdmin
	if exist "%FOLDER%\getadmin.vbs" del "%FOLDER%\getadmin.vbs"
	pushd "%CD%"
	CD /D "%~dp0"
	:: -------------- set global variable --------------
	setlocal EnableDelayedExpansion
	title Visual Studio Tool (%_VERSION%)
	mode con: cols=60 lines=15

	set /A _menuCount=0
	set _menu1=
	set _menu2=
	set _menu3=
	set _menu4=
	set _menu5=
	set _menu6=
	set _menu7=
	set _menu8=
	set _menu9=
	set _menu10=

	for /f "tokens=2 delims==" %%G in ('wmic path Win32_Processor get AddressWidth /value') do set "_OSarch=%%G"
	:: -------------- set global variable --------------
	goto :start

:main_menu
	cls

	if "%_DOWNLOAD_SETUP%" EQU "1" if not defined _menu1 call :listmenu _menu1
	if defined download_setup_optional_arg if not defined _menu2 call :listmenu _menu2
	if defined download_fix_arg if not defined _menu3 call :listmenu _menu3
	if "%_DOWNLOAD_UPDATE%" EQU "1" if not defined _menu4 call :listmenu _menu4
	if "%_INSTALL_CERTIFICATE%" EQU "1" if not defined _menu5 call :listmenu _menu5
	if "%_INSTALL_CERTUTIL%" EQU "1" if not defined _menu11 call :listmenu _menu11
	if "%_INSTALL_SETUP%" EQU "1" if not defined _menu6 call :listmenu _menu6
	if "%_INSTALL_UPDATE%" EQU "1" if not defined _menu7 call :listmenu _menu7
	if "%_INSTALL_LANGUAGE%" EQU "1" if not defined _menu8 call :listmenu _menu8
	if "%_INSTALL_HELP%" EQU "1" if not defined _menu9 call :listmenu _menu9
	if "%_ACTIVATE%" EQU "1" if not defined _menu10 call :listmenu _menu10

	if "%_DOWNLOAD_SETUP%" EQU "1" echo [%_menu1%] Download %isR%offline visual studio?
	if defined download_setup_optional_arg echo [%_menu2%] Download %isO%offline visual studio?
	if defined download_fix_arg echo [%_menu3%] Download Verify/Fix downloaded Visual studio?
	if "%_DOWNLOAD_UPDATE%" EQU "1" echo [%_menu4%] Download offline visual studio update?
	if "%_INSTALL_CERTIFICATE%" EQU "1" echo [%_menu5%] Setup need offline certificates?
	if "%_INSTALL_CERTUTIL%" EQU "1" echo [%_menu11%] Setup need offline certificates?
	if "%_INSTALL_SETUP%" EQU "1" echo [%_menu6%] Setup offline Visual studio?
	if "%_INSTALL_UPDATE%" EQU "1" echo [%_menu7%] Setup offline visual studio update?
	if "%_INSTALL_LANGUAGE%" EQU "1" echo [%_menu8%] Setup offline visual studio language?
	if "%_INSTALL_HELP%" EQU "1" echo [%_menu9%] Setup offline visual studio help (HelpViewer Install)?
	if "%_ACTIVATE%" EQU "1" echo [%_menu10%] Activate visual studio?

	echo [0] Exit?
	echo.
	set "c="
	set /P "c=Select: "
	if /I "%c%" EQU "0" goto :god_exit
	if defined _menu1 if /I "%c%" EQU "%_menu1%" goto :download_recommended
	if defined _menu2 if /I "%c%" EQU "%_menu2%" goto :download_optional
	if defined _menu3 if /I "%c%" EQU "%_menu3%" goto :download_fix
	if defined _menu4 if /I "%c%" EQU "%_menu4%" goto :download_update
	if defined _menu5 if /I "%c%" EQU "%_menu5%" goto :install_certificate
	if defined _menu11 if /I "%c%" EQU "%_menu11%" goto :install_certutil
	if defined _menu6 if /I "%c%" EQU "%_menu6%" goto :install_setup
	if defined _menu7 if /I "%c%" EQU "%_menu7%" goto :install_update
	if defined _menu8 if /I "%c%" EQU "%_menu8%" goto :install_language
	if defined _menu9 if /I "%c%" EQU "%_menu9%" goto :install_help
	if defined _menu10 if /I "%c%" EQU "%_menu10%" goto :activate
	goto :main_menu

:listmenu
	set /A _menuCount=_menuCount+1
	set "%1=%_menuCount%"
	goto :EOF
:back_menu
	pause
	goto :main_menu

:download_recommended
	if exist %download_setup_exe% (
		call %download_setup_exe% %download_setup_arg% %download_setup_recommended_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)
:download_optional
	if exist %download_setup_exe% (
		call %download_setup_exe% %download_setup_arg% %download_setup_optional_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)

:download_update
	if exist %download_update_exe% (
		call %download_update_exe% %download_update_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)

:download_fix
	if exist %download_setup_exe% (
		call %download_setup_exe% %download_fix_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)

:certloop
	for /f "tokens=1* delims=|" %%C in (%temp_install_certs%) do (
	    set temp_install_certs="%%D"
	    for /f "tokens=1,2,3 delims=;" %%J in ("%%C") do (
	    	if exist "%install_cert_folder%\%%J" call %install_cert_exe% -add "%install_cert_folder%\%%J" -n "%%K" -s -r %%L
	    	rem echo "%%J %%K %%L"
	    )
	    if NOT %temp_install_certs%=="" goto :certloop
	)
	goto :EOF
:install_certificate
	if defined install_cert_folder (
		if exist "%install_cert_folder%" (
			if exist %install_cert_exe% (
				set temp_install_certs=%install_certs%
				call :certloop
			)
		)
	)
	goto :back_menu


:certutilloop
	for /f "tokens=1* delims=|" %%C in (%temp_install_certutils%) do (
	    set temp_install_certutils="%%D"
		if exist "%install_certutils_folder%\%%C" call certutil.exe -addstore -f "Root" "%install_certutils_folder%\%%C"
	    if NOT %temp_install_certutils%=="" goto :certutilloop
	)
	goto :EOF
:install_certutil
	if defined install_certutils_folder (
		if exist "%install_certutils_folder%" (
			set temp_install_certutils=%install_certutils%
			call :certutilloop
		)
	)
	goto :back_menu

:install_setup
	if exist %install_setup_exe% (
		call %install_setup_exe% %install_setup_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)

:install_update
	if exist %install_update_exe% (
		call %install_update_exe% %install_update_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)

:install_language
	if exist %install_language_setup_exe% (
		call %install_language_setup_exe% %install_language_setup_arg%
		goto :back_menu
	) else (
		goto :main_menu
	)

:install_help
	if exist %install_help_folder% (
		if "%_OSarch%" EQU "64" (
			reg add %install_help_reg_key_64% /v LocationPath /t REG_SZ /d %install_help_folder% /f
		) else (
			reg add %install_help_reg_key% /v LocationPath /t REG_SZ /d %install_help_folder% /f
		)
		goto :back_menu
	) else (
		goto :main_menu
	)

:activate
	set "regKey="
	if "%_OSarch%" EQU "64" (
		set "regKey=%activate_reg_key_64%"
	) else (
		set "regKey=%activate_reg_key%"
	)
	set "_VS="
	for /f "skip=2 tokens=2*" %%G in ('"reg query %regKey% /v %activate_reg_src%" 2^>NUL') do set "_VS=%%H%activate_subdir%"
	if exist "%_VS%\StorePID.exe" (
		start "" /b "%_VS%\StorePID.exe" %activate_key% && (
		  echo Visual Studio activated successfully.
		) || (
		  echo Visual Studio activation failed.
		)
	) else (
		echo Visual Studio not installed.
	)
	echo.
	goto :back_menu

:god_exit
	exit /B
