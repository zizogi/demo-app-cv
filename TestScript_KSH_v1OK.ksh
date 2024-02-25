
#!/bin/ksh
#/*****************************************************************************
#* SCRIPT      : Launch_Automated_Tests.ksh                                   *
#* AUTHOR(s)   : METTAHRI Abdelaziz                                           *
#* CREATED     : 04.02.2024                                                   *
#* FINISHED    :                                                              *
#* DESCRIPTION : Ce script permet le lancement des tests automatisés          *
#* VERSION     : 1.1                                                          *
#* REMARK      :                                                              *
#* SECTIONS    :                                                              *
#******************************************************************************

function usage {
echo "usage: $0 <User>"
}

#==============================================================================

if [ $# -ne 1 ]
then
   usage
   exit 1
fi

echo Le traitement est en cours, Veuillez patienter ...

echo "fin test"
