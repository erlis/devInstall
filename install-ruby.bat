@echo off

cmd /c cinst ruby -version 2.1.8 --x86
cmd /c cinst ruby2.devkit --x86

call refreshenv

cmd /c gem source --remove https://rubygems.org/
cmd /c gem source --add http://artifactory.mia.ucloud.int/artifactory/ruby-gems/
cmd /c gem install bundler 
