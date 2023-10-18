apktool b SystemUIGoogle-lib/
d2j-dex2jar.sh --force SystemUIGoogle-lib/dist/SystemUIGoogle-lib.jar
d2j-class-version-switch.sh 8 SystemUIGoogle-lib-dex2jar.jar SystemUIGoogle-lib-dex2jar-v8.jar
mv -f SystemUIGoogle-lib-dex2jar-v8.jar SystemUIGoogle-lib-dex2jar.jar
cp -a SystemUIGoogle-lib-dex2jar.jar ..//SystemUIGoogle/lib/SystemUIGoogle-lib.jar