
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

/usr/lib/jvm/java-8-openjdk-amd64/bin/java -jar JVinKSH.jar

echo "fin test Java in KSH"
