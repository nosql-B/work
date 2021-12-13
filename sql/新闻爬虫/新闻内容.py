# coding=utf-8
import csv
import pymysql
import requests
from selenium import webdriver
from selenium.webdriver.support.ui import Select
import re
import time
import os
import pymysql
import time
from lxml import etree

chrome_driver = r"C:\Users\24123\Desktop\chromedriver.exe"

headers = {"User-Agent":
               "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0"}
# 打开谷歌浏览器
driver = webdriver.Chrome(executable_path=chrome_driver)
driver.get("https://news.163.com/domestic/")


seconds=[]
seconds_contend=[]
contents=driver.find_elements_by_xpath('/html/body/div/div[3]/div[4]/div[1]/div[1]/div/ul/li/div//div[@class="news_title"]/h3//a')
for content in contents:
    seconds.append(content.get_attribute("href"))

for second in seconds:
    print(second)
    resp = requests.get(second, headers=headers)
    resp.encoding = "utf-8"
    page_content = resp.text
    html=etree.HTML(page_content)
    a=html.xpath('//*[@id="content"]//p/text()')
    t="".join(a)
    t.replace(" ","")
    seconds_contend.append(t)
    print(seconds_contend)


connent = pymysql.connect(host='localhost', user='root', passwd='123456', db='news',port=3306) #db为所使用的数据库
cursor = connent.cursor()

m=0
for i  in seconds_contend:
    value=(i,"../pic/"+"0"+str(m)+".png")
    m=m+1
    sql = "INSERT INTO content(content,image) values(%s, %s)"
    print(sql)
    cursor.execute(sql, value)
    connent.commit()  # 提交任务，数据才会写入数据库