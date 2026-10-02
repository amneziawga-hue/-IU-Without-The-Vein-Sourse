IU No Surface Deposits — unofficial Minecraft 1.12.2 Forge addon

Compatibility: Industrial Upgrade 3.3.0.47 only. Forge declares Industrial Upgrade
as a required dependency, so this addon is not intended to load without it.
Install this addon alongside the original mod; do not replace the original JAR.

Behavior: the transformer modifies only AlgorithmVein.generate. It removes the
nine calls that place BlockDeposits, BlockDeposits1, and BlockDeposits2 at the
surface. Underground ore placement calls are left intact. No items, blocks, or
other gameplay content are added.

This addon contains only its own transformer, mod metadata, and README. It does
not bundle Industrial Upgrade classes, textures, models, or other resources.
Already-generated deposits in existing world chunks are not removed.

Unofficial and not affiliated with the Industrial Upgrade authors. This packaging
avoids redistributing the original JAR/assets, but it is not a legal guarantee;
check the original mod's license and the author's terms before redistribution.
