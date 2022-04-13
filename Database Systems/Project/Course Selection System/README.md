## 專題需求

(1) 架構須為 3-tier，也就是需要 client (可為瀏覽器)、Server (可為 Web Server) 以及 DB 三端；

(2) 選課系統功能如下：
- a. 同學可以根據自己的學號查詢自己的選課列表；
- b. 系統會根據每個同學的系所、年級，將所有必修課預選進其選課列表中；
- c. 同學可以加選課程，課程加選須滿足以下限制：
	- (i) 人數已滿的課程不可加選；
	- (ii) 不可加選衝堂的課程；
	- (iii) 不可加選與已選課程同名的課程；
	- (iv) 加選後學分不可超過最高學分限制 (30 學分)；

- d. 同學可以退選課程，課程退選須滿足下列限制：
  -  (i) 退選後學分不可低於最低學分限制 (9 學分)；
  -  (ii) 退選課程若為必修課，系統須提出警告；


## Demo

圖一：ER model。

![](https://i.imgur.com/Teo2u3O.png)

圖二：Relation model。

![](https://i.imgur.com/bTXImvX.png)

圖三：資料庫介面。

![](https://i.imgur.com/SVJRGRb.png)

圖四：登入帳號密碼。

![](https://i.imgur.com/jA2huh9.png)

圖五：依學系及班級搜尋課程。

![](https://i.imgur.com/cg6zgSt.png)

圖六：顯示課程總表，可加選或關注，不可加選衝堂的課程。

![](https://i.imgur.com/2to0CHa.png)

圖七：關注清單，可對課程進行加選或取消關注。
![](https://i.imgur.com/AtPueDS.png)

圖八：預選課表，總學分最高不超過30學分、最低不少於9學分。

![](https://i.imgur.com/z6vSZPJ.png)