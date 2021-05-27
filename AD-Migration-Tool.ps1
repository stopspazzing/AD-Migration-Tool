#MIT LICENSE - All Rights Reserved

#Created by Jeremy Zimmerman (stopspazzing.com)

## Description - This script is to migrate Active Directory Controllers. Support for 2003 up.

## Process - 

## 1. Check new and old server versions and migrate to DFS as needed. 

## 2. Install AD DS including Management Tools. 

## 3. Migrate FSMO 

## 4. Migrate shares. 

## 5. Migrate all other services(todo probably selective)

## 6. Update GPO to point to new shares (not sure if this can be scripted)

## 7. Demote server from AD DC

## 8. Disable all AD DS and extra services which were migrated.

## 9. Remove AD DS Windows Feature

 

## Use of this is at user discretion. No liability on part of script creator. ##

 

## TODO ##

#Check old Server version to verify if need to migrate to DFS:

#https://www.rebeladmin.com/2015/04/step-by-step-guide-for-upgrading-sysvol-replication-to-dfsr-distributed-file-system-replication/

## ##

 

#start by making sure everything is setup

Install-WindowsFeature –Name AD-Domain-Services -IncludeManagementTools

## TODO ##

#Get Domain Name first

#ask for domain information/pull domain name automatically and save to variable

## ##

$hostName = hostname

 

#Migrate roles to new domain controller:

Move-ADDirectoryServerOperationMasterRole -Identity $hostName -OperationMasterRole SchemaMaster, DomainNamingMaster, PDCEmulator, RIDMaster, InfrastructureMaster

 

## TODO ##

#Migrate shares, if wanted.

#https://community.spiceworks.com/topic/1966255-using-windows-dfs-to-migrate-file-share

#https://community.spiceworks.com/topic/1966255-using-windows-dfs-to-migrate-file-share?page=1#entry-6645348

## ##