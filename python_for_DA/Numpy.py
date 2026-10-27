#!/usr/bin/env python
# coding: utf-8

# # Numpy 

# In[1]:


import numpy as np


# ## 1)Array creation methods

# In[2]:


a = np.array([10, 20, 30, 40, 50])


# In[3]:


b = np.array([[1, 2, 3], [4, 5, 6]])


# In[4]:


np.zeros((2, 3))


# In[5]:


np.ones((2, 3))


# In[6]:


np.full((2, 3), 7)


# In[7]:


np.eye(3)


# In[8]:


np.arange(0, 10, 2)


# In[9]:


np.linspace(0, 10, 5)


# In[10]:


np.empty((2, 3))


# In[11]:


np.random.rand(2, 3)


# In[12]:


np.random.randint(1, 100, size=5)


# In[13]:


np.zeros_like(b)
np.ones_like(b)


# ## 2) Array properties and inspection

# In[14]:


a.ndim


# In[15]:


a.shape


# In[16]:


a.size


# In[17]:


a.dtype


# In[18]:


a.nbytes


# In[19]:


a.itemsize


# ## 3) Indexing and slicing

# In[20]:


# 1D array
a = np.array([10, 20, 30, 40, 50])


# In[21]:


a[0]          # First element


# In[22]:


a[-1]         # Last element


# In[23]:


a[1:4]        # Slice


# In[24]:


a[:3]         # First three elements


# In[25]:


a[2:]         # From index 2


# In[26]:


a[::2]        # Every second element


# In[27]:


a[::-1]       # Reverse array


# In[28]:


# 2D array
b = np.array([[1, 2, 3], [4, 5, 6]])


# In[29]:


b[0, 0]       # First row, first column


# In[30]:


b[1, 2]       # Second row, third column


# In[31]:


b[0, :]       # Entire first row


# In[32]:


b[:, 1]       # Entire second column


# In[33]:


b[0:2, 1:3]   # Subarray


# ## 4) Mathmetical Operation in array

# In[34]:


a = np.array([10, 20, 30, 40])


# In[35]:


np.add(a, 5)


# In[36]:


np.subtract(a, 5)


# In[37]:


np.multiply(a, 2)


# In[38]:


np.divide(a, 2)


# In[39]:


np.floor_divide(a, 3)


# In[40]:


np.mod(a, 3)


# In[41]:


np.power(a, 2)


# In[42]:


square_root = np.sqrt(a)
square_root


# In[43]:


square = np.square(a)
square


# In[44]:


minimum_value = np.min(a)
minimum_value


# In[45]:


maximun_value = np.max(a)
maximun_value


# In[46]:


product = np.prod(a)
product


# ## 5) Statistical methods

# In[47]:


a = np.array([10, 20, 30, 40, 50])


# In[48]:


np.mean(a)


# In[49]:


np.median(a)


# In[50]:


np.std(a)


# In[51]:


np.var(a)


# In[52]:


np.percentile(a, 90)


# In[53]:


np.quantile(a, 0.90)


# #### Correlation and covariance

# In[54]:


x = np.array([1, 2, 3, 4, 5])
y = np.array([2, 4, 5, 8, 10])


# In[55]:


np.corrcoef(x, y)


# In[56]:


np.cov(x, y)


# #### Histogram

# In[57]:


np.histogram(a, bins=5)


# #### Digitize values into bins

# In[58]:


np.digitize([5, 15, 25, 35], bins=[10, 20, 30])


# #### Count occurrences

# In[59]:


np.unique([1, 2, 2, 3, 3, 3])


# In[60]:


np.unique([1, 2, 2, 3], return_counts=True)


# In[61]:


np.bincount([0, 1, 1, 2, 2, 2])

