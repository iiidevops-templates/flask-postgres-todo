## Flask todo postgres 

## 範例教學來源
https://youtu.be/yKHJsLUENl0

## (local)本地環境隔離快速專案部屬(隨機PORT) + 本地環境Postman-collection(newman)自動測試
需安裝Docker, 若在Linux環境需額外手動安裝docker-compose, 部屬結果與UI相同
``` 
docker-compose up -d --build 
```
部屬包含flask網頁+資料庫 + Postman-collection(newman)自動測試, 自動測試報告結果會自動產生在`app/newman-report.xml`, 驗證後即可上傳程式碼

## (local)Postman-collection(newman)自動測試以及報告文件
當執行本地環境快速專案部屬時，會自動將您的網站與資料庫部屬完成後再進行自動測試，自動測試的檔案在`app/postman_collection_local.json`  
使用者可以按照開發上的需求去進行調整，修改說明
```
若您是在本地環境直接開發的話，可能會透過瀏覽器連http://localhost:5000，而到了json檔案內就將http://localhost:5000改成http://web:5000即可
```
自動測試報告結果會自動產生在`app/newman-report.xml`


## 開發者注意事項
:warning: 若專案建立後程式碼Pull到local端下來無法執行, 此狀況為正常現象
* 要在local端測試部屬提供兩種方式，透過安裝docker來進行專案快速專案部屬或直接修改我您作業系統的環境變數
* 若非用docker快速部屬想直接採用原本安裝在作業系統上的資料庫的話，請設定環境變數
```env
`db_host`: 指向到您的資料庫，例如localhost或是其他IP
`db_name`: 指向到您的資料庫名稱
`db_username`: 指向到您的資料庫使用者名稱
`db_password`: 指向到您的資料庫密碼
```

## iiidevops
* 專案內`.rancher-pipeline.yml`請勿更動，產品系統設計上不支援pipeline修改
* `iiidevops`資料夾內`pipeline_settings.json`請勿更動
* `postman`資料夾內則是您在devops管理網頁上的Postman-collection(newman)自動測試檔案，devops系統會以`postman`資料夾內檔案做自動測試

## reference
https://www.python-engineer.com/posts/flask-todo-app/
