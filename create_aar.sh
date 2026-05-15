#1/bin/sh
set -e
PKGS_DIR=$(realpath "$1")

# Usage: [arch_mesa] [arch_android]
makearch () {
   mkdir ./aar-base/jni/$2
   unzip -d ./aar-base/jni/$2 $PKGS_DIR/mesa-$1.zip
}

mkdir ./aar-base/jni
makearch arm64  arm64-v8a
makearch armv7  armeabi-v7a
makearch x86_64 x86_64
makearch x86    x86
cd aar-base
zip -r mesa *
cd ..
mv aar-base/mesa.zip mesa.aar
