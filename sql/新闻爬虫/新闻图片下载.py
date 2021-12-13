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
chrome_driver = r"C:\Users\24123\Desktop\chromedriver.exe"
driver = webdriver.Chrome(executable_path=chrome_driver)
driver.get("https://news.163.com/domestic/")

img_contend=[]
contents=driver.find_elements_by_xpath('/html/body/div/div[3]/div[4]/div[1]/div[1]/div/ul/li/div//div/a/img')

for content in contents:
    img_contend.append(content.get_attribute("src"))

m=0
for i in img_contend:
    print('Downloding:' + i)
    # 从图片地址下载数据
    image = requests.get(i)
    f=open('C:\\Users\\24123\\Desktop\图片\\'+'0'+str(m)+'.png','wb')
    m=m+1
    f.write(image.content)
    f.close()
    print("下载完成")