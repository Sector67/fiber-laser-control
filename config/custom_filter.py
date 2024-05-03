
def custom_post_parse(data):
    if data[:6] == 'M03 $0':
        return "M03 $0 S#<_hal[qtplasmac.cut_amps-s]> (auto-set power from material cut_amps)"
    else:
        return data

self.custom_post_parse = custom_post_parse
