::////////////////////////////////////////////////////////////////////////////////////////////////////
:: -s4	��������4���ո�
:: -p	���������˳���ո�
:: -f	�����в���صĴ���֮�������У���import��public class֮�䡢public class�ͳ�Ա֮���
:: -U	�Ƴ��������˶���ո�
:: -S   switch ��case��ͬ��,case����
:: -d	ֻ�������������ո�
:: -D	ֻ�������������
:: -P	���������߲���ո�
::
::-----	AStyle -h �ɻ�ȡ���������Ϣ -------  
::
::////////////////////////////////////////////////////////////////////////////////////////////////////


@echo on
@color 0a

::".\AStyle\bin\AStyle.exe" .\src/*.c .\inc/*.h  --style=ansi -s4 -S -H -N -L -m0 -M40 -Z -R -c -n %f

@set para=.\*.c .\*.h  --style=ansi -s4 -j -p -U -S -H -N -L -xV -xf -xh -m0 -M40 -Z -R -c -n %f

@IF EXIST "D:\program files\AStyle\bin\AStyle.exe" (
@set App="D:\program files\AStyle\bin\AStyle.exe"
@echo
) ELSE (
	IF EXIST ".\AStyle\bin\AStyle.exe" (
		@set App=".\AStyle\bin\AStyle.exe"
		@echo
	) ELSE (
		IF EXIST AStyle.exe (
			@set App="AStyle.exe"
			@echo
		) ELSE (
			IF EXIST ".\Tool\AStyle.exe" (
				@set App=".\Tool\AStyle.exe"
				@echo
			)
		)
	)
)

@IF DEFINED App (
@%App% %para%
@echo %App%
) ELSE (
@echo Don't find Astyle.exe application.
@pause
)

@color 0f 
