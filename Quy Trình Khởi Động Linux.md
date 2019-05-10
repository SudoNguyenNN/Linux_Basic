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

# Bước 2: Master Boot Record (MBR).

Sau khi BIOS xác định được thiết bị lưu trữ thì BIOS sẽ đọc trong MBR hoặc phân vùng EFI của thiết bị này để nạp vào bộ nhớ chương trình. Chương trình này sẽ định vị và khởi động boot loader đây là chương trình chịu trách nhiệm cho việc tìm và nạp nhân của hệ điều hành.

Đến giai đoạn này, máy tính sẽ máy tính sẽ không truy cập vào phương tiện lưu trữ nào. Thông tin về ngày tháng, thời gian các thiết bị ngoại vi quan trọng nhất được nạp từ CMOS.

<img src="https://blogd.net/linux/qua-trinh-khoi-dong-he-dieu-hanh-linux/img/qua-trinh-boot-linux-giai-doan-Master-Boot-Record.jpg">

# Bước 3: Boot loader

Linux có hai boot loader phổ biến trên linux là GRUB và IOSLINUX.

Chương trình này có mục đích: cho phép lựa chọn hệ điều hành có trên máy tính để khởi động, sau đó chúng sẽ nạp kernel của hệ điều hành đó vào bộ nhớ và chuyển điều khiển máy tính cho kernel này.

Hệ thống sử dụng phương pháp BIOS/MBR, bộ tải khởi động nằm owre khu vực đầu tiên của đĩa cứng. Kích thước của MBR chỉ là 512 byte. Trong giai đoạn này, bộ nạp khởi động kiểm tra bảng phân vùng và tìm một phân vùng có khả năng khởi động. Nó tìm thấy một phân vùng có khả năng khởi động, nó sẽ tìm kiếm bộ tải khởi động giai đoạn thứ hai.

Với hệ thống sử dụng phương pháp EFI/ UEFI, phần mềm UEFI đọc dữ liệu trình quản lý khởi động để xác định ứng dụng UEFI nào sẽ được chạy và từ nơi nào.

Trình khởi động giai đoạn hai nằm trong /boot. Màng hiển thị cho chúng ta chọn hệ điều hành để khởi động. Tiếp đến bộ nạp khởi động sẽ tải hệ điều hành vào RAM và chuyển quyền kiểm soát cho RAM.

<img src="https://blogd.net/linux/qua-trinh-khoi-dong-he-dieu-hanh-linux/img/qua-trinh-boot-linux-giai-doan-Boot-Loader-chi-tiet.jpg">

# Bước 4: Linux kernel được nạp và khởi chạy

Boot loader nạp một phiên bản dạng nén của linux kernel. Nó tự giải nén và tự cài đặt lên bộ nhớ hệ thống nơi mà nó sẽ ở đó cho tới khi tắt máy.

<img src="https://blogd.net/linux/qua-trinh-khoi-dong-he-dieu-hanh-linux/img/qua-trinh-boot-linux-kernel-vao-file-sbin.jpg">

Sau khi cho



 
 


