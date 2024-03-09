
#!/bin/ksh
#/*****************************************************************************
#* SCRIPT      :                                    *
#* AUTHOR(s)   :                                            *
#* CREATED     :                                                   *
#* FINISHED    :                                                              *
#* DESCRIPTION :           *
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
`date +"%d-%m-%Y %H:%M:%S"`

echo "Debut deploiement"

mv JVinKSH.jar JVinKSH_backup`date +"%d%m%Y%H%M%S"`.jar
cp ../arch/JVinKSH.jar JVinKSH.jar

rm TestScript_Java_IN_KSH_v1.ksh
$JAVA_HOME/bin/jar xf JVinKSH.jar TestScript_Java_IN_KSH_v1.ksh
chmod 777 TestScript_Java_IN_KSH_v1.ksh

echo "fin deploiement"

