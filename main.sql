## Open the Terminal

# Use mysqldump to backup your databases

# Check for MySQL processes with: 
ps -ax | grep mysql

# Stop and kill any MySQL processes
kill -9 [process_id]

# Analyze MySQL on HomeBrew:
brew remove mysql
brew cleanup

# Remove files:
sudo rm /usr/local/mysql
sudo rm -rf /usr/local/var/mysql
sudo rm -rf /usr/local/mysql*
sudo rm ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*

# Unload previous MySQL Auto-Login:
launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# Remove previous MySQL Configuration:
subl /etc/hostconfig

# Remove the line MYSQLCOM=-YES-
# Remove previous MySQL Preferences:

rm -rf ~/Library/PreferencePanes/My*
sudo rm -rf /Library/Receipts/mysql*
sudo rm -rf /Library/Receipts/MySQL*
sudo rm -rf /private/var/db/receipts/*mysql*

## Restart your computer just to ensure any MySQL processes are killed

Try to run mysql, it shouldn't work