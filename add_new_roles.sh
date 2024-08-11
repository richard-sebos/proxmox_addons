#!/bin/env bash
#===============================================================================
#
#          FILE:  ass_new_roles.sh
#
#   DESCRIPTION:  A brief description of what the script does.
#
#        AUTHOR:  Richard Chamberlain, info@sebostechnology.com
#       VERSION:  1.0
#       CREATED:  2024-08-11
#===============================================================================

## General privileges used by both
MAPPING_AUDIT="Mapping.Audit"
VM_AUDIT="VM.Audit"

pveum role add VMAppUseer --privs "${MAPPING_AUDIT} ${VM.Audit} VM.Console VM.Monitor"
pveum role add  BackupAdmin --privs "${MAPPING_AUDIT} ${VM.Audit} VM.Backup VM.Clone Datastore.Audit"
