#> entity:aec_manager/transport/modify
# 
# macro で変更する
# 
# <storage> enemy: aec.list.
#   r: 直径
#   half_r: 半径
#   t: 拡大完了までの時間
# 

$data merge entity @s \
{\
    transformation: {\
        scale: [$(r), 0.01, $(r)], \
        translation: [-$(half_r), 0.001f, -$(half_r)]\
    },\
    interpolation_duration: $(t)\
}
