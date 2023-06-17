import sqlite3
commands={"1":"query_1.sql",
          "2":"query_2.sql",
          "3":"query_3.sql",
          "4":"query_4.sql",
          "5":"query_5.sql",
          "6":"query_6.sql",
          "7":"query_7.sql",
          "8":"query_8.sql",
          "9":"query_9.sql",
          "10":"query_10.sql",
          "11":"query_11.sql",
          "12":"query_12.sql",}

def take_info(sql: str) -> list:
    fd = open(sql, 'r')
    sqlFile = fd.read()
    fd.close()
    with sqlite3.connect('D.sqlite') as con:
        cur = con.cursor()
        cur.execute(sqlFile)
        return cur.fetchall()
    
if __name__=='__main__':
    while True:
        x=input('Введіть команду: ')
        try:
            if x =='exit':
                break
            if int(x)>12:
                print('Цієї команди не існує введіть число від 1-12 для команд')
            else:
                print(take_info(commands[x]))
        except ValueError:
            print('Вводіть цифри будь ласочка або exit для виходу')