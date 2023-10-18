#!/usr/bin/env python3
import xml.etree.ElementTree as ET
from collections import defaultdict
import glob
from pathlib import Path
import re
import sys
import os

def remove_prefix(str, prefix):
    if str.startswith(prefix):
        str = str[len(prefix):]
    return str
    

# usage: smali_proguard_unfuck.py ~/roms/pe_thirteen/vendor/pixel-framework/src/SystemUIGoogle/jar/smali
path_to_search = "SystemUIGoogle-lib"

classes_to_rename = []

class_name_pattern = re.compile(r'L.*;->')

for path in Path(path_to_search).rglob('*.smali'):
    path = str(path)
    if "SystemUIGoogleInitializer" in path or "dagger/" in path:
        continue
    with open(path) as file:
        for line in file:
            if "ExternalSyntheticOutline" in line:
                classes_to_rename.append(re.search(class_name_pattern, line).group(0).lstrip("L").rstrip(";->"))

#print("Classed matched: " + str(len(classes_to_rename)))
print(classes_to_rename)