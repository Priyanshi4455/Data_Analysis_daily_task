#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('pip install mysql-connector-python')


# In[2]:


import mysql.connector


# In[3]:


conn = mysql.connector.connect(host="localhost", user="root", password="******", database="Ecommerce")
print("connection successful")


# In[4]:


cursor = conn.cursor()
cursor.execute("use Ecommerce")


# In[5]:


cursor.execute('''
CREATE TABLE Category (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(100) NOT NULL,
    Description VARCHAR(255)
);
''')


# In[6]:


query = '''
INSERT INTO Category (Category_Name, Description)
VALUES (%s, %s)
'''
values = ('Electronics', 'Mobiles, laptops and electronic accessories')


# In[7]:


cursor.execute(query,values)
conn.commit()


# In[8]:


cursor.close()
conn.close()
print("connection closed")


# In[ ]:




