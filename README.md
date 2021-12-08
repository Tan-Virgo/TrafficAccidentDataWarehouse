# TrafficAccidentDataWarehouse
**Nhóm TTKD-19**
+ 18120553 - Nguyễn Lê Ngọc Tần
+ 18120560 - Lê Hữu Thanh
+ 18120570 - Nguyễn Thanh Thi 
+ 18120590 - Lê Việt Tiến

Đồ án môn HTTT phục vụ trí tuệ kinh doanh HKI năm 2021 - 2022, Phân tích thiết kế cài đặt phục vụ nhu cầu báo cáo thống kê dữ liệu tai nạn giao thông ở nước Anh

**GIẢI THÍCH:**
+ ./PrepareSource : Project thực hiện load dữ liệu từ file .csv vào các Database Source
+ ./Scipt SQL Server : Nơi lưu các đoạn script phục vụ tạo DB, Table,... trong quá trình làm
+ ./Source Code : Project thực hiện ETL
+ ./Config.docx : File word hướng dẫn
+ ./Data.docx : File word chứa link dữ liệu từ file .csv
+ ./DataProfiling : File kết quả Data Profiling trước khi thực hiện Stage -> NDS
+ ./OLAP_AccidentDW : Project thực hiện build OLAP cube phục vụ Report


**QUÁ TRÌNH THỰC HIỆN:**
1. Mô tả dữ liệu : TTKD-19_DATH#1.docx
2. Thực hiện ETL đổ dữ liệu từ Source -> Stage
3. Thực hiện ETL từ Stage -> NDS
4. Thực hiện ETL từ NDS -> DDS
5. Thực hiện build OLAP Cube
