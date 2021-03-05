## Flask todo sqlite

## 範例教學來源
https://youtu.be/yKHJsLUENl0

## (local)本地環境隔離快速專案部屬(隨機PORT)
需安裝Docker, 若在Linux環境需額外手動安裝docker-compose, 部屬結果與UI相同
``` 
docker-compose up -d --build 
```
部屬包含flask網頁+Sqlite, 驗證後即可上傳程式碼
## 開發者注意事項
:warning: 若專案建立後程式碼Pull到local端下來無法執行, 此狀況為正常現象
* 要在local端測試部屬提供兩種方式，透過安裝docker來進行專案快速專案部屬或直接修改我您作業系統的環境變數(或是採用.env)
* 若非用docker快速部屬想直接採用原本安裝在作業系統上的資料庫的話，請設定環境變數
```env
`db_host`: 指向到您的資料庫，例如localhost或是其他IP
`db_name`: 指向到您的資料庫名稱
`db_username`: 指向到您的資料庫使用者名稱
`db_password`: 指向到您的資料庫密碼
```

## 開發注意事項
:warning: 若專案建立後程式碼Pull到local端下來無法執行, 此狀況為正常現象
* 要在local端測試部屬提供兩種方式，透過安裝docker來進行專案快速專案部屬或直接修改我您作業系統的環境變數
* 若非用docker快速部屬想直接採用原本安裝在作業系統上的資料庫的話，請設定環境變數
```env
`db_host`: 指向到您的資料庫，例如localhost或是其他IP
`db_name`: 指向到您的資料庫名稱
`db_username`: 指向到您的資料庫使用者名稱
`db_password`: 指向到您的資料庫密碼
```

## reference
https://www.python-engineer.com/posts/flask-todo-app/
