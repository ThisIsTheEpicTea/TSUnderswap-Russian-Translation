rem Предварительно собираем проект в отдельную папку [без архивирования]
@call build.bat

rem Копируем "скомпилированные" файлы из папки "compiled" в папку с игрой "_test"
@xcopy /h /y /c /r /s compiled\* _test\*

rem Запускаем игру для тестирования перевода
@start _test\TS!Underswap.exe