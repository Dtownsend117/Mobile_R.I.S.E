@echo off
echo Type keywords to search:
set/p "keyw=Keyword is "
start https://www.google.com/search?q=%keyw%&sourceid=ie7&rls=com.microsoft:en-US:IE-Address&ie=&oe=
exit