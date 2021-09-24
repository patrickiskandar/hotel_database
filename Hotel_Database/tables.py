def process_val(val):
    if type(val) == str:
        return f'\'{val}\''
    elif type(val) == float:
        return round(val, 2)
    else:
        return val

def process_dict(d):
    attr = ""
    vals = ""
    
    for k in d:
        attr += f', {k}' if len(attr) > 0 else f'{k}'
        vals += f', {process_val(d[k])}' if len(vals) > 0 else f'{process_val(d[k])}'

    return attr, vals

class Table(object):
    def __init__(self, conn, table_name, pk='id'):
        self.file = "populate.sql"
        self.tname = table_name
        self.pk = pk

    def add(self, data):
        attr, vals = process_dict(data)
        with open(self.file, 'a+') as f:
            q = f"INSERT INTO {self.tname} ({attr})\nVALUES ({vals});\n"

            f.write(q)

