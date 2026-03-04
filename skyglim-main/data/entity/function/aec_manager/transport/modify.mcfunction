#> entity:aec_manager/transport/modify
# 
# macro で変更する
# 
# storage
# {r: <radius>, half_r: <radius>/2, t: <tick>, dmg: <damage>, str: <strength>}
# 

$data merge entity @s \
{\
    transformation: {\
        scale: [$(r), 0.01, $(r)], \
        translation: [-$(half_r), 0.001f, -$(half_r)]\
    },\
    interpolation_duration: $(t)\
}
