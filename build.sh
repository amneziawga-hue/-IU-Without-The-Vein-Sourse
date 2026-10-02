#!/bin/sh
set -eu
: "${FORGE_JAR:?Set FORGE_JAR to Forge 1.12.2 universal jar}"
: "${LAUNCHWRAPPER_JAR:?Set LAUNCHWRAPPER_JAR to LaunchWrapper 1.12 jar}"
: "${ASM_JAR:?Set ASM_JAR to ASM 5.x jar supplied by Forge}"
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
OUT="$ROOT/build"
rm -rf "$OUT"
mkdir -p "$OUT/classes"
javac -source 8 -target 8 -cp "$FORGE_JAR:$LAUNCHWRAPPER_JAR:$ASM_JAR" \
  -d "$OUT/classes" "$ROOT"/src/org/iuaddons/nosurfacedeposits/*.java
cp "$ROOT/mcmod.info" "$ROOT/README.txt" "$OUT/classes/"
jar cfm "$OUT/IU-No-Surface-Deposits-1.0.0-1.12.2.jar" "$ROOT/manifest.mf" \
  -C "$OUT/classes" org/iuaddons/nosurfacedeposits \
  -C "$OUT/classes" mcmod.info -C "$OUT/classes" README.txt
