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
call bundle exec rake dev:config_ptm_db
call bundle exec rake dev:setup_apphost
call bundle exec rake dev:setup_iis
@popd

