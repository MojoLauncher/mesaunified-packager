
declare -A archmap

archmap["arm64-v8a"]="arm64"
archmap["armeabi-v7a"]="arm"
archmap["x86_64"]="x86_64"
archmap["x86"]="x86"

makearchspec () {
   unzip -d ./aar-base/jni/$1 $PKGS_DIR/spvc-${archmap["$1"]}
}
