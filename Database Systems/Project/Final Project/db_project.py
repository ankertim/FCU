import csv
import numpy as np
import pandas as pd
""" 搜尋檔案 """
def search(path, sid = 0, cid = 0, option = -1):
    reader = pd.read_csv(path, chunksize=100, encoding='utf-8')
    if (option == 1):
        print('{}的修課清單:'.format(sid))
        bool1 = False
        for chunk in reader:
            train_data = np.array(chunk)#np.ndarray()
            chunk_list=train_data.tolist()#list
            for row in chunk_list:
                if row[0]==sid:
                    bool1 = True
                    print('course_id: {}, course_name: {}'.format(row[1], row[2]))
                elif bool1 == True:
                    return
    
    elif (option == 2):
        count=0
        for chunk in reader:
            train_data = np.array(chunk)#np.ndarray()EJ/ 
            chunk_list=train_data.tolist()#list
            for row in chunk_list:
                if (row[1]) == cid:
                    count += 1
        print('課程ID為{}之修課人數為: {}人'.format(cid, count))

""" 修改檔案 """
def modify(path, sid = 0, cid = 0, course_name = 'null', option = -1):
    if (option == 3):    
        with open(path, 'a+', newline='', encoding='utf-8') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow([sid, cid, course_name])
            print('新增成功')
        csvfile.close()
        sort(path, path)
    elif (option == 4):
        print(course_name)
        count = False #
        reader = pd.read_csv(path,chunksize=100)
        bool1 = False
        for chunk in reader:
            train_data = np.array(chunk)#np.ndarray()
            chunk_list=train_data.tolist()#list
            # 若已經刪掉則不用進去尋找資料刪掉
            if bool1 == False:
                for row in chunk_list:
                    if row[0]==sid and row[1]==cid:
                        bool1 = True 
                        chunk_list.remove([sid, cid, course_name])
                        print('刪除成功')
                    elif bool1 == True:
                        break
            # count為第一次的100筆
            if count == False:
                with open(path, 'w', newline='', encoding='utf-8') as csvfile:
                    writer = csv.writer(csvfile)
                    writer.writerow(['student_id', 'course_id', 'course_name'])
                    for row in chunk_list:
                        writer.writerow(row)
                    count = True
                csvfile.close()
            else:
                with open(path, 'a+', newline='', encoding='utf-8') as csvfile:
                    writer = csv.writer(csvfile)
                    for row in chunk_list:
                        writer.writerow(row)
                csvfile.close()
        sort(path, path)
            
    
""" 檔案排序 """
def sort(path1,path2):  
    with open(path1, newline='', encoding='utf-8') as csvfile:
        rows = list(csv.reader(csvfile))
        del(rows[0])
        rows.sort(key = lambda s: s[0])
    with open(path2, 'w', newline='', encoding='utf-8') as csvfile1: 
        # 建立 CSV 檔寫入器
        writer = csv.writer(csvfile1)
        # 寫入一列資料
        writer.writerow(['student_id', 'course_id', 'course_name'])
        # 寫入另外幾列資料
        for row in rows:
            writer.writerow(row)
        csvfile1.close()

""" 功能清單 """
def menu(path, option = -1):
    if (option == 1):
        sid = 0
        sid = input('請輸入指定學號: ')
        search(path = path, sid = sid, option = option)
    elif (option == 2):
        cid = 0
        cid = int(input('請輸入指定課號: '))
        search(path = path, cid = cid, option = option)
    elif (option == 3 or option == 4):
        sid = input("請輸入學號:")
        cid = int(input("請輸入課號:"))
        course_name = input("請輸入課名:")
        modify(path, sid = sid, cid = cid, course_name = course_name, option = option)
        
"""=================== main program ==================="""
#sort('original_DB_students_tc_utf8.csv','DB_students_tc_utf8.csv')
sort('DB_students_tc_utf8.csv', 'DB_students_tc_utf8.csv')
path = 'DB_students_tc_utf8.csv'
while (1):
    option = input('option:\n'+
                   '搜尋指定學號之修課清單，請輸入1\n'+
                   '搜尋指定課號之修課人數，請輸入2\n'+
                   '新增特定選課資料，請輸入3\n'+
                   '刪除特定選課資料，請輸入4\n'+
                   '若要退出，請輸入exit\n'+
                   'Enter: ')
    if (option == 'exit'):
        break
    option = int(option)
    menu(path, option = option)