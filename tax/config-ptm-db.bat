@echo off 
call bundle exec rake dev:s01_change_sa_pass
call bundle exec rake dev:s04_session_state_db
call bundle exec rake dev:s02_sqldeploy
call bundle exec rake dev:s03_tax_hub_login
