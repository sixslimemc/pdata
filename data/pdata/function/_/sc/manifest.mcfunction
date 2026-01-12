#> pdata:_/sc/manifest
# @ MANIFEST

data remove storage slimecore:in manifest.pack

data modify storage slimecore:in manifest.pack.pack_id set value "pdata"
data modify storage slimecore:in manifest.pack.author_id set value "sixslime"
data modify storage slimecore:in manifest.pack.version set value {major:0, minor:1, patch:0}
data modify storage slimecore:in manifest.pack.url set value "https://github.com/sixslimemc/pdata/releases/download/v0.1.0/sixslime.pdata.0.1.0.zip"

data modify storage slimecore:in manifest.pack.display.name set value "PlayerData"
data modify storage slimecore:in manifest.pack.display.summary set value "A storage location for player-linked data."
data modify storage slimecore:in manifest.pack.display.author_name set value "SixSlime"

data modify storage slimecore:in manifest.pack.display.links.author set value "https://github.com/sixslimemc"
data modify storage slimecore:in manifest.pack.display.links.info set value "https://github.com/sixslimemc/pdata"
data modify storage slimecore:in manifest.pack.display.links.versions set value "https://github.com/sixslimemc/pdata/releases"

data modify storage slimecore:in manifest.pack.entrypoints set value []

data modify storage slimecore:in manifest.pack.preload_entrypoints set value []
data modify storage slimecore:in manifest.pack.abstract_declarations set value []
data modify storage slimecore:in manifest.pack.abstract_implementations set value []

data modify storage slimecore:in manifest.pack.dependencies set value []

data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"six", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/six/releases/download/v0.1.0/sixslime.six.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"doorman", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/doorman/releases/download/v0.1.0/sixslime.doorman.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"varchunk", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/varchunk/releases/download/v0.1.0/sixslime.varchunk.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.is_library set value true

function slimecore:api/manifest