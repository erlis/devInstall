rem ~~~~~~~~~~~~~~~~~~~~~~~~~
rem configuring mongo
rem ~~~~~~~~~~~~~~~~~~~~~~~~~
call config-mongo.bat

rem ~~~~~~~~~~~~~~~~~~~~~~~~~
rem setting up development environment 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~
@pushd %~dp0
cd c:\Projects\tax-management-core\BuildAndDeployment\
call bundle install
call bundle exec rake setup_local_dev_env
@popd

