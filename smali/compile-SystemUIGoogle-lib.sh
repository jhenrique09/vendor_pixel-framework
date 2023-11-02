apktool b SystemUIGoogle-lib/
d2j-dex2jar.sh --force SystemUIGoogle-lib/dist/SystemUIGoogle-lib.jar
#d2j-class-version-switch.sh 17 SystemUIGoogle-lib-dex2jar.jar SystemUIGoogle-lib-dex2jar-v17.jar
#mv -f SystemUIGoogle-lib-dex2jar-v17.jar SystemUIGoogle-lib-dex2jar.jar
cp -a SystemUIGoogle-lib-dex2jar.jar ..//SystemUIGoogle/lib/SystemUIGoogle-lib.jar