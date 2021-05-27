# AD Migration Tool

A Powershell Tool to Migrate Active Directories. Support for Windows Server 2012+

Created by Jeremy Zimmerman (stopspazzing.com)


Process:

1. [ ] Check new and old server versions and migrate to DFS as needed.
2. [X] Install AD DS including Management Tools.
3. [X] Migrate FSMO
4. [ ] Migrate shares.
5. [ ] Migrate all other services(todo probably selective)
6. [ ] Update GPO to point to new shares (not sure if this can be scripted)
7. [ ] Demote server from AD DC
8. [ ] Disable all AD DS and extra services which were migrated.
9. [ ] Remove AD DS Windows Feature

##### Use of this is at user discretion. No liability on part of script creator.
