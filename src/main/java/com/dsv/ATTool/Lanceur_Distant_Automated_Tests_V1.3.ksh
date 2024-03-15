
#!/bin/ksh
#/*************************************************************************************
#* SCRIPT      : package_Tests_Automation_install.ksh                                 *
#* AUTHOR(s)   : METTAHRI Abdelaziz                                                   *
#* CREATED     : 04.02.2024                                                           *
#* FINISHED    :                                                                      *
#* DESCRIPTION : Ce script permet l installation du package automatisation des tests  *
#*                                                                                    *
#* VERSION     : 1.2                                                                  *
#* REMARK      :                                                                      *
#* SECTIONS    :                                                                      *
#**************************************************************************************

function usage {
echo "usage: $0 <DB Username> <DB Password> <Database name>"
}

#==============================================================================

if [ $# -ne 3 ]
then
   usage
   exit 1
fi

echo Le traitement est en cours, Veuillez patienter ...

print "Debut de traitement                 :`date`" >> LOG_traitement_auto_tests

#purge des tables
sqlplus -s $1/$2@$3 @Tables_working_rollback_V1.1.sql
print "Tables ancienne version purgées     :`date`" >> LOG_traitement_auto_tests
echo "Tables ancienne version purgées "
#purge des fichiers sorties
rm LOG*
print "Rapports ancienne version supprimés   :`date`" >> LOG_traitement_auto_tests
echo "Rapports ancienne version supprimés "

#Chargement Etat WS
sqlldr userid=$1/$2@$3 data=Fich_TMP_Etat_WS.csv control=upload.ctl

#Traitement Auto Tests
sqlplus -s $1/$2@$3 @Traitement_CheckAT_V1.2.sql
print "Traitement auto test termine          :`date`" >> LOG_traitement_auto_tests
echo "Traitement auto test termine          "

print "Fin du traitement                      :`date`" >> LOG_traitement_auto_tests
echo "Traiement termine avec succes "