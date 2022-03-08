import csv
num=100

# 一個數據節點
class Node(object):
    def __init__(self,cid,sid):
        self.cid = cid
        self.sid = sid
        self.next_node = None

    def set_next(self,node):
        self.next_node = node

    def get_next(self):
        return self.next_node

    def get_cid(self):
        return self.cid
    
    def get_sid(self):
        return self.sid

    def data_equals(self, cid, sid):
        return self.cid == cid and self.sid == sid

class HashTable(object):
    def __init__(self):
        self.value = [None] * num
        self.value_tail = [None] * num

    def insert(self, cid, sid):
        '''if self.search(cid):
            return True'''

        i = int(cid) % num
        node = Node(cid, sid)
        #print(str(node)+'1111111111111')
        if self.value[i] is None:
            self.value[i] = node
            self.value_tail[i] = node
            return True
        else:
            tail = self.value_tail[i]
            '''head = self.value[i]
            while head.get_next() is not None:
                head = head.get_next()'''
            tail.set_next(node)
            self.value_tail[i] = tail.get_next()
            return True

    def search(self, cid, sid):
        i = int(cid) % num
        if self.value[i] is None:#若沒找到，錯誤
            return False
        else:
            head = self.value[i]
            while head and not head.data_equals(cid, sid):
                head = head.get_next()
            if head:
                return head
            else:
                return False                                                             
                     
    def delete(self, cid, sid):                                                                                                                                                                                                                                                               
        if self.search(cid, sid):
            i = int(cid) % num
            if self.value[i].data_equals(cid, sid):
                self.value[i] = self.value[i].get_next()#換成下一個節點                                                                                                                                                                                                                                                       
            else:
                head = self.value[i]
                while not head.get_next().data_equals(cid, sid):
                    head = head.get_next()
                head.set_next(head.get_next().get_next())
            return True                                        
        else:
            return False
    def find_people_num(self, cid):
            j = 0 #計數
            i = int(cid) % num
            save = self.value[i]
            while(save is not None):
                #print(self.value[i].get_cid())
                if(save.get_cid() == cid):
                    j+=1
                save = save.get_next()
            return j


    def echo(self):
        i = 0
        for head in self.value:
            print('index: '+str(i))
            if head is None:
                print("None")
            else:
                while head is not None:
                    print('student_id: ' + str(head.get_sid()) + '，course_id: ' + str(head.get_cid()))
                    head = head.get_next()
                print('None'),
            print('')
            i += 1
        print('')
        

def nums(path,hashTable):
    with open(path, newline='') as csvfile:
        rows = csv.DictReader(csvfile)
        for row in rows:
            hashTable.insert(row['course_id'],row['student_id'])
            #hashTable.echo()
    #hashTable.echo()
            
if __name__ == '__main__':
   path = 'DB_students.csv'
   hashTable = HashTable()
   nums(path,hashTable)
   while(1):
       option = input('option:\n'+
                       '搜尋指定課號之修課人數，請輸入1\n'+
                       '新增特定選課資料，請輸入2\n'+
                       '刪除特定選課資料，請輸入3\n'+
                       '看hash table，輸入4\n'+
                       '若要退出，請輸入exit\n'+
                       'Enter: ')
       if (option == 'exit'):
            break
       option = int(option)
       if(option == 1):
           C_id = 0
           C_id = input('輸入欲查詢課號\n')
           NUM = hashTable.find_people_num(C_id)
           print('課程ID為{}之修課人數為: {}人'.format(C_id,NUM))
       elif(option == 2):
           sid = input('輸入新增的學號\n')
           cid = input('輸入新增的課號\n')
           hashTable.insert(str(cid),str(sid))
       elif(option == 3):
           sid = input('輸入刪除的學號\n')
           cid = input('輸入刪除的課號\n')
           hashTable.delete(str(cid),str(sid))
       elif(option == 4):
           hashTable.echo()



















