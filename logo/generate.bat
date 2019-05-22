@echo off
setlocal

set GOTO_NEXT_LABEL=end
if [%1]==[] goto all
if [%1]==[png] goto png
if [%1]==[pdf] goto pdf
goto all

:all
echo Generate PNG and PDF
set GOTO_NEXT_LABEL=png_done
goto png
:png_done
set GOTO_NEXT_LABEL=pdf_done
goto pdf

:pdf_done
set GOTO_NEXT_LABEL=end
goto end

:png
echo PNG Generation
Call %~dp0bin\generate_for.bat powered_by_eiffel_logo png 200 80
Call %~dp0bin\generate_for.bat powered_by_eiffel_logo png 100 40
Call %~dp0bin\generate_for.bat powered_by_eiffel_square_logo png 200 200
Call %~dp0bin\generate_for.bat inline_powered_by_eiffel_logo png 200 33
Call %~dp0bin\generate_for.bat inline_powered_by_eiffel_logo png 150 25
goto %GOTO_NEXT_LABEL%

:pdf
echo PDF Generation
Call %~dp0bin\generate_for.bat powered_by_eiffel_logo pdf 200 80
Call %~dp0bin\generate_for.bat inline_powered_by_eiffel_logo pdf 200 33
goto %GOTO_NEXT_LABEL%

:end
endlocal
