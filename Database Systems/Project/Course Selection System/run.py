#!/usr/bin/env python3
# coding=utf-8
# -*- coding: UTF-8 -*-
import sys
from flask import Flask, jsonify, request, render_template, redirect, url_for
import MySQLdb

app = Flask(__name__)


@app.route('/')
def index():
   return render_template('index.html')


@app.route('/action', methods=['POST'])
def action():
    # 取得輸入的文字
    global my_nid #全域變數
    #my_nid = "None"
    user_nid = request.form.get("my_nid")
    my_password = request.form.get("my_password")
    # 建立資料庫連線
    conn = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="fcu_course",
                           charset="utf8")
    # 欲查詢的 query 指令
    query1 = "SELECT 姓名 FROM 學生 where 學號 = '{}' and password = '{}';".format(user_nid,my_password)
    # 執行查詢
    cursor = conn.cursor()
    login = cursor.execute(query1)
    if login > 0:
        my_nid = user_nid
        credit_query = "SELECT SUM(學分數) AS 總學分數 FROM 預選課表 WHERE 學號='{}';".format(my_nid)#找目前學分
        cursor.execute(credit_query)
        Credit = cursor.fetchone()
        #如果預選課表裡沒有課程，自動匯入必修
        if(Credit[0] is None):
            query2 = "INSERT INTO 預選課表 (學號,選課代碼,課程名稱,開課班級,必選修,學分數) SELECT 學生.學號 , db_table_course.選課代碼 , db_table_course.課程名稱, db_table_course.開課班級 ,db_table_course.必選修,db_table_course.學分數 FROM (學生 INNER JOIN db_table_course on 學生.班級 = db_table_course.開課班級 AND 學生.學號 = '{}')".format(my_nid)
            cursor.execute(query2)
            query3 = "SELECT DISTINCT 選課代碼 FROM `預選課表` WHERE `學號`='{}'".format(my_nid)
            cursor.execute(query3)
            COURSE_ID = cursor.fetchall()      
            #更新已收人數
            for i in COURSE_ID:
                query4 = "SELECT 已收人數 FROM `db_table_course` WHERE `選課代碼` = '{}'".format(i[0])
                cursor.execute(query4)
                S = cursor.fetchone()
                S = int(S[0])+1
                query5 = "UPDATE db_table_course SET 已收人數='{}' WHERE 選課代碼='{}'".format(S, i[0])#已收人數+1
                cursor.execute(query5)
                conn.commit()
        conn.close()
        return render_template('start.html', nid=my_nid)
    else:
        #登入錯誤警告
        result = """
         <script type="text/javascript"> 
            window.alert('NID or password error');
            window.history.back(-1);
         </script> 
        """
        conn.close()
        return result
@app.route('/start')
def start():
    return render_template('start.html', nid=my_nid)

@app.route('/menu')
def menu():
    return render_template('menu.html', nid=my_nid)

@app.route('/fcu_course',methods=['POST'])
def fcu_course():
    #college = request.values.get("college")
    Dept = request.form.get("d1")
    Dept = (str(Dept))
    Class = request.form.get("c2")#取得下拉式選單的text
    Class = (str(Class))
    conns = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="fcu_course",
                           charset="utf8")
    if Dept == "總表":
        query2 = "SELECT DISTINCT db_table_course.開課班級 , db_table_course.課程名稱 , db_table_course.選課代碼 ,db_table_course.學分數,db_table_course.必選修,db_table_course.開課單位,db_table_course.開課人數 ,db_table_course.已收人數 , db_table_course.授課教師 ,db_table_time.星期 , db_table_time.節 FROM (db_table_course INNER JOIN db_table_time on db_table_course.選課代碼= db_table_time.選課代碼);"
    else:
        query2 = "SELECT DISTINCT db_table_course.開課班級 , db_table_course.課程名稱 , db_table_course.選課代碼 ,db_table_course.學分數,db_table_course.必選修,db_table_course.開課單位,db_table_course.開課人數 ,db_table_course.已收人數 , db_table_course.授課教師 ,db_table_time.星期 , db_table_time.節 FROM (db_table_course INNER JOIN db_table_time on db_table_course.選課代碼= db_table_time.選課代碼) where 開課單位='{}' AND 開課班級='{}';".format(Dept, Class)
    cursor = conns.cursor()
    cursor.execute(query2)
    content_list = list()
    content = cursor.fetchall() #content=該班級所開的所有資料
    for op0, op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 in content:
        if len(content_list) >= 1:    
            if op2 == content_list[len(content_list)-1][2] and op0 == content_list[len(content_list)-1][0] and op9==content_list[len(content_list)-1][9]:
                content_list[len(content_list)-1][10] += "," + op10
                continue
        content_list.append([op0, op1, op2, op3, op4, op5, op6, op7, op8, op9, op10])
    return render_template('fcu_course.html', content=content_list, nid=my_nid) #引入labels、cintent至html內
@app.route('/my_course')
def my_course():
    query3 ="SELECT DISTINCT 預選課表.選課代碼, 預選課表.課程名稱, 預選課表.開課班級,db_table_course.授課教師, 預選課表.必選修, 預選課表.學分數, db_table_time.星期 , db_table_time.節 FROM (預選課表 INNER JOIN db_table_time on 預選課表. 選課代碼= db_table_time.選課代碼)INNER JOIN db_table_course on db_table_time.選課代碼= db_table_course.選課代碼 WHERE 學號='{}'".format(my_nid) 
    '''"SELECT 預選課表.選課代碼, 預選課表.課程名稱, 預選課表.開課班級, 預選課表.必選修, 預選課表.學分數, db_table_time.星期 , db_table_time.節 FROM (預選課表 INNER JOIN db_table_time on 預選課表. 選課代碼= db_table_time.選課代碼) WHERE 學號='{}'".format(my_nid)'''
    conns = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="fcu_course",
                           charset="utf8")
    cursor = conns.cursor()
    cursor.execute(query3)
    content = cursor.fetchall()
    content_list = list()
    for op0, op1, op2, op3, op4, op5, op6, op7 in content:
        if len(content_list)>=1:    
            if op0 == content_list[len(content_list)-1][0] and op6==content_list[len(content_list)-1][6]:
                content_list[len(content_list)-1][7] += "," + op7
                continue
        content_list.append([op0, op1, op2, op3, op4, op5, op6, op7])
    #credit
    credit_query = "SELECT SUM(學分數) AS 總學分數 FROM 預選課表 WHERE 學號='{}';".format(my_nid)#找目前學分
    cursor = conns.cursor()
    cursor.execute(credit_query)
    Credit = cursor.fetchone()
    if(Credit[0] is None):
        Credit_sum = 0
    else:
        Credit_sum = Credit[0]
    return render_template('my_course.html', content = content_list, nid = my_nid, credit_sum = Credit_sum)
@app.route('/add',methods=['POST', 'GET'])#e加選介面
def add():
    sector = list(request.args.values())
    conns = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="fcu_course",
                           charset="utf8")
    credit_query="SELECT SUM(學分數) AS 總學分數 FROM 預選課表 WHERE 學號='{}';".format(my_nid) #找目前學分
    cursor = conns.cursor()
    cursor.execute(credit_query)
    Credit = cursor.fetchone()
    if(Credit[0] is None):
        Credit_sum = 0
    else:
        Credit_sum = Credit[0]
    
    my_class_name_query ="SELECT 課程名稱 FROM 預選課表 WHERE 學號='{}';".format(my_nid)#找有沒有相同課程
    cursor.execute(my_class_name_query)
    MY_CLASS_NAME = cursor.fetchall()

    # sector[9] 星期
    # sector[10] 節
    my_times_query = "SELECT DISTINCT db_table_time.星期, db_table_time.節 FROM 預選課表 NATURAL JOIN db_table_time WHERE 學號='{}';".format(my_nid)#自己的時間
    cursor.execute(my_times_query)
    MY_TIMES = cursor.fetchall()

    add_times_query = "SELECT DISTINCT db_table_time.星期 , db_table_time.節 FROM db_table_time WHERE 選課代碼='{}';".format(sector[2])#加選的時間
    cursor.execute(add_times_query)
    ADD_TIMES = cursor.fetchall()
    
    #迴圈查看有無衝堂
    #自己的時間
    count=0
    for i in MY_TIMES:
        #加選的時間
        for j in ADD_TIMES:
            if(str(i[0])==str(j[0]) and str(i[1])==str(j[1])):
                count+=1
    #boolean
    bool1=list()
    for i in range(5):
        bool1.append(False)
    for k in MY_CLASS_NAME:#相同課程
        if(str(k[0])==str(sector[1])):
            result1 = """
            <script type="text/javascript"> 
                window.alert('你已選過同樣課程');
                window.history.back(-1);
            </script>
            """
            bool1[0] = True
            return result1
    
    if(int(sector[7])>=int(sector[6])):
        #滿人跳警告
        result2 = """
         <script type="text/javascript"> 
            window.alert('人數已滿');
            window.history.back(-1);
         </script> 
        """
        bool1[1] = True
        return result2
    
    # if(CLASS_NAME[0]==str(sector[1])):
    if(int(Credit_sum) + int(sector[3]) > 30):#學分>30
            result3 = """
            <script type="text/javascript"> 
                window.alert('學分會超過30，不能加選');
                window.history.back(-1);
            </script> 
            """
            bool1[2] = True
            return result3
    elif(count>0):
        result4 = """
         <script type="text/javascript"> 
            window.alert('衝堂');
            window.history.back(-1);
         </script> 
        """
        bool1[3] = True
        return result4
    if(bool1[0] == False and bool1[1] == False and bool1[2] == False and bool1[3] == False):
        query4 = "INSERT INTO 預選課表 (學號,選課代碼,課程名稱,開課班級,必選修,學分數) VALUES('{}','{}','{}','{}','{}','{}')".format(my_nid,sector[2],sector[1],sector[0],sector[4],sector[3])
        cursor.execute(query4)
        
        S=int(sector[7])+1
        query5 = "UPDATE db_table_course SET 已收人數='{}' WHERE 選課代碼='{}'".format(S,sector[2])#已收人數+1
        cursor.execute(query5)
        conns.commit()
        result5 = """
         <script type="text/javascript"> 
            window.alert('加選成功');
            window.history.back(-1);
         </script> 
        """
        return result5

@app.route('/unselect', methods = ['POST', 'GET'])
def unselect():
    sector = list(request.args.values())
    # print(sector)
    conns = MySQLdb.connect(host="127.0.0.1",
                            user="sun",
                            passwd="1111",
                            db="fcu_course",
                            charset="utf8")
    cursor = conns.cursor()
    credit_query=""
    credit_query = "SELECT SUM(學分數) AS 總學分數 FROM 預選課表 WHERE 學號='{}';".format(my_nid)  # 找目前學分
    cursor.execute(credit_query)
    Credit2 = cursor.fetchone()
    if(Credit2[0] == 'None'):
        Credit2_num = 0
    else:
        Credit2_num = Credit2[0]
    my_class_name = "SELECT 班級 FROM 學生 WHERE 學號='{}'".format(my_nid)  # 找自己班級
    #cursor = conns.cursor()
    cursor.execute(my_class_name)
    MY_CLASS_NAME = cursor.fetchone()
    
    # sector[0] 選課代碼
    # sector[2] 開課班級
    # sector[4] 必選修
    # sector[5] 學分數
    if(MY_CLASS_NAME[0] == str(sector[2]) and str(sector[4]) == 'M'):  # 484自己班級的必修
        result1 = """
         <script type="text/javascript"> 
            window.alert('你確定要退選?請找邦華哥哥');
            window.history.back(-1);
         </script> 
        """
        return result1
    elif(int(Credit2_num)-int(sector[5][0]) < 9):  # 學分<9
        result2 = """
            <script type="text/javascript"> 
                window.alert('學分會低於9學分，不能退選');
                window.history.back(-1);
            </script> 
            """
        return result2
    query1 = "DELETE FROM 預選課表 WHERE 學號='{}' AND 選課代碼='{}'".format(my_nid,sector[0])
    cursor.execute(query1)
    
    query2 = "SELECT 已收人數 FROM `db_table_course` WHERE `選課代碼` = '{}'".format(sector[0])
    cursor.execute(query2)
    S = cursor.fetchone()
    S = int(S[0])-1
    query3 = "UPDATE db_table_course SET 已收人數='{}' WHERE 選課代碼='{}'".format(S,sector[0])#已收人數+1
    cursor.execute(query3)
    conns.commit()
    return redirect(url_for('my_course'))
@app.route('/cares', methods=['POST','GET'])#關注清單頁面
def cares():
    conns = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="fcu_course",
                           charset="utf8")
    query2 = "SELECT 關注清單.開課班級, 關注清單.課程名稱, 關注清單.選課代碼,關注清單.學分數, 關注清單.必選修,db_table_course.開課單位,db_table_course.開課人數,db_table_course.已收人數,db_table_course.授課教師, db_table_time.星期 , db_table_time.節 FROM (關注清單 INNER JOIN db_table_time on 關注清單. 選課代碼= db_table_time.選課代碼)INNER JOIN db_table_course on db_table_time.選課代碼= db_table_course.選課代碼 WHERE 學號='{}'".format(my_nid)
    cursor = conns.cursor()
    cursor.execute(query2)
    content_list = list()
    content = cursor.fetchall()#content=該班級所開的所有資料
    for op0, op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 in content:
        if len(content_list)>=1:    
            if op2==content_list[len(content_list)-1][2] and op0==content_list[len(content_list)-1][0] and op9==content_list[len(content_list)-1][9]:
                content_list[len(content_list)-1][10] += "," + op10
                continue
        content_list.append([op0, op1, op2, op3, op4, op5, op6, op7, op8, op9, op10])
    return render_template('care.html', content=content_list, nid=my_nid)#引入labels、cintent至html內

@app.route('/care',methods=['POST','GET'])#關注加選
def care():
    sector = list(request.args.values())
    #print(sector)
    conns = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="fcu_course",
                           charset="utf8")
    # credit_query="SELECT SUM(學分數) AS 總學分數 FROM 預選課表 WHERE 學號='{}';".format(my_nid)#找目前學分
    # cursor = conns.cursor()
    # cursor.execute(credit_query)
    # Credit = cursor.fetchone()
    # if(Credit[0] is None):
    # Credit_sum = 0
    # else:
    #     Credit_sum = Credit[0]
    my_class_name_query ="SELECT 選課代碼 FROM 關注清單 WHERE 學號='{}';".format(my_nid)#找有沒有相同課程
    cursor = conns.cursor()
    cursor.execute(my_class_name_query)
    MY_CLASS_NAME = cursor.fetchall()
    if(sector[2]!=None):
        for k in MY_CLASS_NAME:#相同課程
            if(str(k[0])==str(sector[2])):
                result1 = """
                <script type="text/javascript"> 
                    window.alert('你已關注過同樣課程');
                    window.history.back(-1);
                </script>
                """
                return result1
    
    query4 = "INSERT INTO 關注清單 (學號,選課代碼,課程名稱,開課班級,必選修,學分數) VALUES('{}','{}','{}','{}','{}','{}')".format(my_nid,sector[2],sector[1],sector[0],sector[4],sector[3])
    cursor.execute(query4)
    conns.commit()
    result5 = """
        <script type="text/javascript"> 
        window.alert('關注成功');
        window.history.back(-1);
        </script> 
    """
    return result5

@app.route('/decare',methods=['POST','GET'])#關注加選
def decare():
    sector = list(request.args.values())
    #print(sector)
    conns = MySQLdb.connect(host="127.0.0.1",
                            user="sun",
                            passwd="1111",
                            db="fcu_course",
                            charset="utf8")
    cursor = conns.cursor()
    query1 = "DELETE FROM 關注清單 WHERE 學號='{}' AND 選課代碼='{}'".format(my_nid,sector[2])
    cursor.execute(query1)
    conns.commit()
    return redirect(url_for('cares'))

if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port=5000)
    sys.exit()
