# coding=utf-8
from selenium import webdriver
import pymysql
import time


headers = {"User-Agent":
               "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0"}
chrome_driver = r"D:\pythonfiles\pycharmfile\guojinews\chromedriver_win32\chromedriver.exe"


# 打开谷歌浏览器
driver = webdriver.Chrome(executable_path=chrome_driver)
driver.get("https://news.163.com/world/")



stlist=[]
stlist1=[]
titles=driver.find_elements_by_xpath("/html/body/div/div[3]/div[4]/div[1]/div[1]/div/ul/li/div/div")
for title in titles:
    m=str(title.text)
    stlist=m.split("\n");

    print(stlist)
    stlist1.append(stlist)

connent = pymysql.connect(host='localhost', user='root', passwd='123456', db='guoji_news',port=3306) #db为所使用的数据库
cursor = connent.cursor()

m=0
for i  in stlist1:
    value=(i[0],'新闻内容','国际',"/static/img/news/0"+str(m)+".png",0,time.strftime("%Y-%m-%d-%H_%M_%S", time.localtime()),1)
    m=m+1
    sql = "INSERT INTO news(title,content,types,image,view_count,created_at,is_valid) values(%s, %s, %s,%s, %s, %s,%s)"
    print(sql)
    cursor.execute(sql, value)
    connent.commit()  # 提交任务，数据才会写入数据库