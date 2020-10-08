::cd ..

:: Clean output
del .\out\*.crf /s /q
del .\out\*.d /s /q
del .\out\*.o /s /q
del .\out\*.axf /s /q
del .\out\*.lnp /s /q
del .\out\*.sct /s /q
del .\out\*.htm /s /q
del .\out\*._2i /s /q
del .\out\*.map /s /q
del .\out\*.lst /s /q

:: Clean DebugConfig
del .\DebugConfig\*.* /s /q

:: Clean Listing
::del .\Listing\*.* /s /q

:: Clean Keil bak
del *.bak /s /q
del *.uvguix.* /s /q
::del *.uvoptx /s /q
del *.dep /s /q

::@pause
