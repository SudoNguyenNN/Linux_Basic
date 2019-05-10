## Toàn bộ quá trình khởi động:
<img src="https://blogd.net/linux/qua-trinh-khoi-dong-he-dieu-hanh-linux/img/qua-trinh-khoi-dong-linux.jpg">

# Quá trình diễn ra như sau:
 **Bước 1 BIOS.**
 
 `Bước 2 Master Boot Record (MBR).`
 
 **Bước 3 Boot loader.**
 
 ` Bước 4 Linux kernel được nạp và khởi chạy. `
 
 **Bước 5 Các srcipt trong INTRD thực thi.**
 
 ` Bước 6 Chương trình inti được thực thi. `
 
 **Bước 7 Đăng nhập vào giao diện đồ họa.**
 
 `Bước 8 Đăng nhập thành công vào hệ thống.`
# Bước 1: BIOS

BIOS là chương trình chạy đầu tiên khi nhấn nút nguồn hoặc nút reset trên máy tinhd của bạn.

BIOS thuewcj hiện công việc gọi là POST(Power On Self Test) kiểm tra các thông số của các phần cứng của máy tính>Ngoài ra, BIOS cho phép thay đổi các thiết lập, cấu hình của nó.

BIOS được lưu trữ trên ROM của bo mạch chủ

Quá trình POST kết thúc thành công, BIOS sẽ tìm kiếm và khởi chạy một hệ điều hành được chứa trong các thiết bị lưu trữ như ổ cứng.. .

Hệ điều hành Linux được cài trên ổ cứng thì BIOS sẽ tìm kiếm đến MBR(Master Boot Record).

<img src="https://blogd.net/linux/qua-trinh-khoi-dong-he-dieu-hanh-linux/img/qua-trinh-boot-linux-giai-doan-BIOS.jpg">

#Bước 2: Master Boot Record (MBR).
 
 


