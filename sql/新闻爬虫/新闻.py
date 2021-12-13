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

headers = {"User-Agent":
               "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0"}
chrome_driver = r"C:\Users\24123\Desktop\chromedriver.exe"


# 打开谷歌浏览器
driver = webdriver.Chrome(executable_path=chrome_driver)
driver.get("https://news.163.com/world/")

# js = "return action=document.body.scrollHeight"
# height = 0
#
# new_height = driver.execute_script(js)
# while height < new_height:
#         # 将滚动条调整至页面底部
#     for i in range(height, new_height, 200):
#         driver.execute_script('window.scrollTo(0, {})'.format(i))
#         time.sleep(0.1)
#     height = new_height
#     time.sleep(0.1)
#     new_height = driver.execute_script(js)


# seconds=[]
# seconds_contend=[]
# contents=driver.find_elements_by_xpath('/html/body/div/div[3]/div[4]/div[1]/div[1]/div/ul/li/div//div[@class="news_title"]/h3//a')
# for content in contents:
#     seconds.append(content.get_attribute("href"))
#
# for second in seconds:
#     print(second)
#     resp = requests.get(second, headers=headers)
#     resp.encoding = "utf-8"
#     page_content = resp.text
#     html=etree.HTML(page_content)
#     a=html.xpath('//*[@id="content"]//p/text()')
#     t="".join(a)
#     t.replace(" ","")
#     seconds_contend.append(t)
#     print(seconds_contend)
















# ['社评：“民主峰会”邀请通缉犯，足证美方亵渎真民主', '台独 亵渎 罗冠聪', '3天前', '30']

stlist=[]
stlist1=[]
titles=driver.find_elements_by_xpath("/html/body/div/div[3]/div[4]/div[1]/div[1]/div/ul/li/div/div")
for title in titles:
    m=str(title.text)
    stlist=m.split("\n");

    print(stlist)
    stlist1.append(stlist)

# connent = pymysql.connect(host='localhost', user='root', passwd='123456', db='news',port=3306) #db为所使用的数据库
# cursor = connent.cursor()
#
# m=0
# for i  in stlist1:
#     value=(i[0],'新闻内容','国内',"/static/img/news/0"+str(m)+".png",0,time.strftime("%Y-%m-%d-%H_%M_%S", time.localtime()),1)
#     m=m+1
#     sql = "INSERT INTO news(title,content,types,image,view_count,created_at,is_valid) values(%s, %s, %s,%s, %s, %s,%s)"
#     print(sql)
#     cursor.execute(sql, value)
#     connent.commit()  # 提交任务，数据才会写入数据库


