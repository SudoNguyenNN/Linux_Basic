# 1. Root - Thư Mục Gốc

- Mỗi tập tin đơn và thư mục được bắt đầu từ thư mục gốc.
- Chỉ người dùng root mới có quyền ghi trong thư mục này.
- Lưu ý rằng thư mục/root là thư mục của người dùng root chứ không phải là thư mục/.

## 2. /Bin - Các tập tin thực thi của người dùng

- Chứa các tập tin thực thi
- Các lệnh thường dùng của Linux mà bạn cần để dùng trong chế độ người dùng đơn được lưu ở đây.
- Các lệnh được sử dụng bởi tất cả người dùng trong hệ thống được lưu ở đây.

### 3. /sbin - Các tập tin thực thi của hệ thống

- Cũng chứa các tập tin thực thi như /bin. Các lệnh được lưu trong thư mục này cơ bản được dùng cho quản trị viên và dùng bảo trì hệ thống.
- Vd: iptables, reboot, fsck,...

#### 4. /etc - Các tập tin cấu hình

- Chứa các tập tin cấu hình cần thiết cho tất cả các chương trình.
- Chứa các đoạn mã khởi động và tắt các chương trình đơn lẻ.
- Vd: /etc/shh/shhd_config, /etc/my.cnf,...

##### 5./dev - Các tập tin thiết bị

- Chứa các tập tin thiết bị. Nó chứa các tập tin thiết bị đầu cuối như là USB hoặc bất kỳ thiết bị nào gắn với hệ thống.
- Vd: /dev/sda, dev/usbmom0,...

##### 6. /proc - Thông tin tiến trình

- Chứa các thông tin về tiến trình của hệ thống.
- Các tập tin tạ đây chứa thông tin về các tiến trình đang chạy.
- Đây là các tập tin hệ thống ảo với nội dung tài nguyên hệ thống.

##### 7. /var - Các tập tin biến đổi

- Chứa các tập tin mà dung lượng lớn dần theo thời gian sử dụng.
- Bao gồm các tập tin ghi chú về hệ thống(/var/log); các gói tin cơ sở dữ liệu(/var/lib); thư điện tử(/var/mail); hàng in queues(/var/spool); các tập tin khóa(/var/lọck); các tập tin được tạm dừng khi khởi động lại(/var/tmp);

##### 8./tmp - Thư mục chứa các tập tin tạm

- Thư mục chứa các tập tin tạm được tạo bởi hệ thống và người dùng.
- Các tập tin trong thư mục này bị xóa khi khởi động lại hệ thống.

##### 9. /user - Các chương trình của người dùng

- Chứa các tập tin thức thi, thư viện, tài liệu và các mã nguồn cho các chương trình mức độ thứ hai.



