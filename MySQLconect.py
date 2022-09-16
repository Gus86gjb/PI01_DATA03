import mysql.connector 
from mysql.connector import Error

def conexion_BD(query):

    try:
        conexion = mysql.connector.connect(
            host='localhost', 
            port=3306, 
            user='base_de_datos',
            password='123456', 
            db='pi01_data03'
        )
        if conexion.is_connected():
            cursor=conexion.cursor()
            cursor.execute(query)
            registro=cursor.fetchone()                      
    except Error as ex:
        pass  
    finally:
        if conexion.is_connected():
            conexion.close()     
    return registro