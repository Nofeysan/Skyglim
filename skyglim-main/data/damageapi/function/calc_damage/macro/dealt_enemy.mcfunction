# enemy: temp.uuid から macro で実施
$execute store result storage km_solver: vars.S float 1 run data get storage enemy: list.$(uuid).data.status.str
$execute store result storage km_solver: vars.D float 1 run data get storage enemy: list.$(uuid).data.status.dmg

