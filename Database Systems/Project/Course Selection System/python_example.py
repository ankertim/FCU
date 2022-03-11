#!/usr/bin/env python3
# coding=utf-8
# -*- coding: UTF-8 -*-
import sys
from flask import Flask, jsonify, request
import MySQLdb

app = Flask(__name__)


@app.route('/')
def index():
    form = """
    <form method="post" action="/action" >
        文字輸出欄位：<input name="my_head">
        <input type="submit" value="送出">
    </form>
    """
    return form


@app.route('/action', methods=['POST'])
def action():
    # 取得輸入的文字
    my_head = request.form.get("my_head")
    # 建立資料庫連線
    conn = MySQLdb.connect(host="127.0.0.1",
                           user="sun",
                           passwd="1111",
                           db="testdb")
    # 欲查詢的 query 指令
    # query = "SELECT  FROM people where name = '{}';".format(
    #     my_head)
    # 執行查詢
    cursor = conn.cursor()
    cursor.execute('SELECT id FROM people')

    results = """
    <p><a href="/">Back to Query Interface</a></p>
    """
    # 取得並列出所有查詢結果
    for (hi, ) in cursor.fetchall():
        results += "<p>{}</p>".format(hi)
    return results


if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port=5000)
    sys.exit()
