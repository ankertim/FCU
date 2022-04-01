# Linked list

共有 8 個功能的 function，提供選項清單執行。
- void Add(int);              // 新增，在鏈結串列的後面新增一筆資料number，傳入值為欲新增的資料。 
- void Del(int);              // 將一筆特定位置的資料刪除，傳入值為欲刪除的位置。
- void Insert(int, int);      // 將一筆資料插入於特定的位置 ，傳入值為插入的數字以及- 欲插入的位置。 
- void Modify(int, int);      // 修改資料，傳入值為修改的數字以及欲修改的位置。  
- void Inverse();             // 將目前的鏈結串列反轉。 
- int Length();               // 計算此鏈結串列的長度，回傳值為串列長度。   
- void Combine(listNode*);    // 將目前的鏈結串列 (head) 與鏈結串列 (head2) 合併，並且將結果存到目前串列。 
- void Show();                // 顯示串列內容： 1->2->3->Null 

Output:

![](https://i.imgur.com/VzQCOUi.png)


# Stack (以 linked list 實作 Stack)

- void Push(int data); //利用 malloc()跟記憶體要空間並加入堆疊中
- int Pop(); //從堆疊中得到一筆資料，並利用 free()函數將空間還給記憶體。
- bool IsEmpty(); //堆疊是否為空，堆疊為空回傳 true，堆疊不為空回傳 false
			    //當 top 指標指向 NULL 的時候為空
				    
- bool IsFull();  //堆疊是否為滿，堆疊為滿回傳 true，堆疊不為滿回傳 false
			    //當與記憶體要空間( malloc() )卻得不到空間的時候為滿
			    //當呼叫 malloc()回傳為 NULL 時，則為要空間失敗

Output:

![](https://i.imgur.com/JdRRU7F.png)