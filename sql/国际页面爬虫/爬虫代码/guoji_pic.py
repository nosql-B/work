# coding=utf-8

import pymysql
import requests
from selenium import webdriver
from selenium.webdriver.support.ui import Select

chrome_driver = r"D:\pythonfiles\pycharmfile\guojinews\chromedriver_win32\chromedriver.exe"
driver = webdriver.Chrome(executable_path=chrome_driver)
driver.get("https://news.163.com/world/")

img_contend=[]
contents=driver.find_elements_by_xpath('/html/body/div/div[3]/div[4]/div[1]/div[1]/div/ul/li/div//div/a/img')

for content in contents:
    img_contend.append(content.get_attribute("src"))

m=0
for i in img_contend:
    print('Downloding:' + i)
    # 从图片地址下载数据
    image = requests.get(i)
    f=open('C:\\Users\\lenovo\\Desktop\\guoji_pic\\'+'0'+str(m)+'.png','wb')
    m=m+1
    f.write(image.content)
    f.close()
    print("下载完成")