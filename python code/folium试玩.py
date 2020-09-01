'''
Author: your name
Date: 2020-08-31 16:16:13
LastEditTime: 2020-09-01 00:54:40
LastEditors: Please set LastEditors
Description: In User Settings Edit
FilePath: \final\test.py
'''
#%%
import folium
from folium.plugins import FastMarkerCluster
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/new_100_dict21111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()


def find_out_value(key):
    a=merge_dict[key]
    ww=[]
    map=folium.Map(location=[30.4,104.3])
    for i in a:
        qianliangwei=[(i//100)*0.00431198+103.932078]
        houliangwei=[(i%100)*0.0037921875+30.543160]
        hh=houliangwei+qianliangwei
        folium.Marker(location=hh, icon=folium.Icon(icon='info-sign')).add_to(map)
    return map
map=folium.Map(location=[30.4,104.3])
for i in range(1,101):
    a=merge_dict[i]
    for i in a:
        qianliangwei=[(i//100)*0.00431198+103.932078]
        houliangwei=[(i%100)*0.0037921875+30.543160]
        hh=houliangwei+qianliangwei
        folium.Marker(location=hh, icon=folium.Icon(icon='&#xf0d7')).add_to(map)
map
#for i in range(1,50):
#    find_out_value(i)
    

#for i in range(1,101):
#    map.add_child(FastMarkerCluster(find_out_value(i)))

#%%
print([(103.4//100)*0.00431198+103.932078])



# %%
import folium
from folium.plugins import FastMarkerCluster
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/new_100_dict21111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()


def find_out_value(key):
    a=merge_dict[key]
    ww=[]
    map=folium.Map(location=[30.4,104.3])
    for i in a:
        qianliangwei=[(i//100)*0.00431198+103.932078]
        houliangwei=[(i%100)*0.0037921875+30.543160]
        hh=houliangwei+qianliangwei
        folium.Marker(location=hh, icon=folium.Icon(icon='&#xf0d7')).add_to(map)
    return map
find_out_value(100)
# %%
