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
@popd

call config-ptm-db.bat

@pushd %~dp0
cd c:\Projects\tax-management-core\BuildAndDeployment\
call bundle exec rake dev:setup_apphost
call bundle exec rake dev:setup_iis
@popd

