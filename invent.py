import json

with open('invent.json') as f:
  data = json.load(f)

ss = []
mydict = {}
for data in data:
  for tag in data['tags']:
    if tag not in ss:
      ss.append(tag)
      mydict[tag] = []
    mydict[tag].append(data['mainIpAddress'])


fout = "invent_result.txt"

fo = open(fout, "w")

for k, v in mydict.items():
  fo.write("["+str(k)+"]" + '\n')
  for vs in v:
    fo.write(str(vs) + '\n')
  fo.write('\n')