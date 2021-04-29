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
