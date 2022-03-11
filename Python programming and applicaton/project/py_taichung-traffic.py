# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import pandas as pd

import  matplotlib.pyplot as plt
plt.rcParams['font.sans-serif'] = ['Microsoft JhengHei'] 
plt.rcParams['axes.unicode_minus'] = False
"""
107.9~109.8
酒駕:4~8
"""
#不省略column
pd.set_option('display.max_columns', None)

df9 = pd.read_csv('臺中市政府警察局107.10-108.09交通事故資料/10709_1.CSV')
df10 = pd.read_excel('臺中市政府警察局107.10-108.09交通事故資料/10710_1.XLSX')
df11 = pd.read_csv('臺中市政府警察局107.10-108.09交通事故資料/10711.CSV')
df12 = pd.read_csv('臺中市政府警察局107.10-108.09交通事故資料/10712.CSV')
df1 = pd.read_excel('臺中市政府警察局107.10-108.09交通事故資料/10801.XLSX')
df2 = pd.read_excel('臺中市政府警察局107.10-108.09交通事故資料/10802_1.XLSX')
df3 = pd.read_csv('臺中市政府警察局107.10-108.09交通事故資料/10803.csv')
df4 = pd.read_excel('臺中市政府警察局107.10-108.09交通事故資料/10804_1.XLSX')
df5 = pd.read_excel('臺中市政府警察局107.10-108.09交通事故資料/10805-od_1.XLSX')
df6 = pd.read_excel('臺中市政府警察局107.10-108.09交通事故資料/10806.XLSX')
df7 = pd.read_csv('臺中市政府警察局107.10-108.09交通事故資料/10807.csv')
df8 = pd.read_csv('臺中市政府警察局107.10-108.09交通事故資料/10808.csv')
dfall = pd.concat([df9,df10,df11,df12,df1,df2,df3,df4,df5,df6,df7,df8],axis=0,sort=False)

dfall_len = len(dfall.index)
dfall.replace('  ','NaN', inplace =True)
dfall['飲酒情形'] = pd.to_numeric(dfall['飲酒情形'], errors='coerce') 
dfall = dfall.dropna(subset=['飲酒情形'])
dfall['飲酒情形'] = dfall['飲酒情形'].astype(int)
bool_alla = dfall.飲酒情形>=3
bool_allb = dfall.飲酒情形<=8
dfall_drunk = len(dfall[(bool_alla & bool_allb)])

bool_allc = dfall.駕駛資格情形==2
bool_alld = dfall.駕駛資格情形==3
dfall_No_Driving_qualifications = len(dfall[(bool_allc | bool_alld)])

bool_alle = dfall.駕駛執照種類==9
bool_allf = dfall.駕駛執照種類==10
bool_allg = dfall.駕駛執照種類==11
dfall_moto_license = len(dfall[(bool_alle | bool_allf | bool_allg)])

bool_allh = dfall.肇事逃逸==2
dfall_hit_and_run = len(dfall[bool_allh])

bool_alli = dfall.主要肇因==6
dfall_no_let = len(dfall[bool_alli])

bool_allj = dfall.主要肇因==16
dfall_no_safe_distance = len(dfall[bool_allj])

bool_allk = dfall.主要肇因==23
dfall_no_front_of_car = len(dfall[bool_allk])

District=dict()
District = {'中區':len(dfall[dfall.區=='中區']),
                '東區':len(dfall[dfall.區=='東區']),
                '西區':len(dfall[dfall.區=='西區']),
                '南區':len(dfall[dfall.區=='南區']),
                '北區':len(dfall[dfall.區=='北區']),
                '西屯區':len(dfall[dfall.區=='西屯區']),
                '南屯區':len(dfall[dfall.區=='南屯區']),
                '北屯區':len(dfall[dfall.區=='北屯區']),
                '豐原區':len(dfall[dfall.區=='豐原區']),
                '東勢區':len(dfall[dfall.區=='東勢區']),
                '大甲區':len(dfall[dfall.區=='大甲區']),
                '清水區':len(dfall[dfall.區=='清水區']),
                '沙鹿區':len(dfall[dfall.區=='沙鹿區']),
                '梧棲區':len(dfall[dfall.區=='梧棲區']),
                '后里區':len(dfall[dfall.區=='后里區']),
                '神岡區':len(dfall[dfall.區=='神岡區']),
                '潭子區 ':len(dfall[dfall.區=='潭子區 ']),
                '大雅區':len(dfall[dfall.區=='大雅區']),
                '新社區':len(dfall[dfall.區=='新社區']),
                '石岡區':len(dfall[dfall.區=='石岡區']),
                '外埔區':len(dfall[dfall.區=='外埔區']),
                '大安區':len(dfall[dfall.區=='大安區']),
                '烏日區':len(dfall[dfall.區=='烏日區']),
                '大肚區':len(dfall[dfall.區=='大肚區']),
                '龍井區':len(dfall[dfall.區=='龍井區']),
                '霧峰區':len(dfall[dfall.區=='霧峰區']),
                '太帄區':len(dfall[dfall.區=='太帄區']),
                '大里區':len(dfall[dfall.區=='大里區']) }


'''dfp=pd.DataFrame(District,index=['台中市'])
print(dfp)
dfp.plot.bar()
'''
plt.figure(figsize=(17,17))
plt.pie(District.values(),labels=District.keys(),autopct='%0.1f%%'
        ,pctdistance = 0.9,textprops = {"fontsize" : 13})
plt.title('107年9月~108年8月-台中市各區發生交通事故百分比', color='blue',fontsize = 15,fontweight='bold')
plt.axis('equal')
plt.savefig("District.png")
plt.show()

print('交通事故-酒駕百分比:{:.2%}'.format(dfall_drunk/dfall_len))
print('交通事故-機車駕照百分比:{:.2%}'.format(dfall_moto_license/dfall_len))
print('交通事故-無照駕駛百分比:{:.2%}'.format(dfall_No_Driving_qualifications/dfall_len))
print('交通事故-肇事逃逸百分比:{:.2%}'.format(dfall_hit_and_run/dfall_len))
print('\n交通事故主要肇因百分比:')
print('未依規定讓車佔:{:.2%}'.format(dfall_no_let/dfall_len))
print('未保持行車安全距離佔:{:.2%}'.format(dfall_no_safe_distance/dfall_len))
print('未注意車前狀態佔:{:.2%}'.format(dfall_no_front_of_car/dfall_len))
other = dfall_len-(dfall_no_let+dfall_no_safe_distance+dfall_no_front_of_car)
print('其他佔:{:.2%}'.format(other/dfall_len))
