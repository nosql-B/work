# coding=gbk
import pymysql


class MysqlSearch():
    # ��ʼ��
    def __init__(self):
        self.get_conn()

    def get_conn(self):
        # �������ݿ�
        self.conn = pymysql.connect(host='localhost', user='root', password='011022', database='work', port=3306)

    def close_conn(self):
        try:
            if self.conn:
                # �ر�����
                self.conn.close()
        except:
            print("�ر��쳣")

    # ��ȡһ������
    def get_one(self):
        # ׼��sql
        sql = "select * from student"
        # ��ȡcursor(�α����)
        cursor = self.conn.cursor()
        # ִ��sql
        cursor.execute(sql)
        # print(cursor.description)  # �鿴�ֶ������Լ���������
        # �õ�����
        result = cursor.fetchone()
        # print(result)
        # ��������
        # print(result[0]) #��ȡ��һ�����ݣ����Դ������ݣ�
        result = dict(zip([k[0] for k in cursor.description],cursor.fetchone())) # ������ת���ֵ�����
        print(result)
        # �ر�cursor/����
        cursor.close()
        self.close_conn()

    # ��ȡһ������
    def get_more(self):
        # ׼��sql
        sql = "select * from student"
        # ��ȡcursor(�α����)
        cursor = self.conn.cursor()
        # ִ��sql
        cursor.execute(sql)
        # print(cursor.description)  # �鿴�ֶ������Լ���������
        # �õ�����
        # result = cursor.fetchone()
        # print(result)
        # ��������
        # print(result[0]) #��ȡ��һ�����ݣ����Դ������ݣ�
        result = [dict(zip([k[0] for k in cursor.description],row))
                  for row in cursor.fetchall()] # ������ת���ֵ�����
        print(result)
        # �ر�cursor/����
        cursor.close()
        self.close_conn()


    # ���һ������
    def add_one(self):
        # ׼��sql
        sql = ("insert into student values(%s,%s,%s,%s,%s);")
        # ��ȡcursor���α����
        cursor = self.conn.cursor()
        # ִ��sql
        cursor.execute(sql,('20211019',"����",'��','19','IS'))
        # �ύ���ݵ����ݿ�
        #�ύ����
        self.conn.commit()
        # �ر�cursor������
        cursor.close()
        self.close_conn()


