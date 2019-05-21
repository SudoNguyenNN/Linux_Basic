Hệ điều hành Linux coi tất cả đều là các tệp tin (file) thậm chí cả các thiết bị cũng như ổ đĩa. Nó quản lý tất cả trên một "hệ thống tập tin" duy nhất, bắt đầu ở một thư mục gốc là một thư mục "root" và đây là thư mục ở mức cao nhất. Cấu trúc cơ bản của hệ thống tệp tin này được mô tả như hình bên dưới:

<a href="https://imgur.com/YZxCIS5"><img src="https://i.imgur.com/YZxCIS5.png" title="source: imgur.com" /></a>

**Bạn dùng câu lệnh ls để liệt kê các thư mục và tệp tin nằm trong root như sau: $ls/#/ đại diện cho thư mục root.**

*Chú Ý :Đối với Linux bạn nên dùng dấu gạch xuôi / thay vì gạch ngược trong windowns.*

### 1./-Root

Đây là thư mục ở mức cao nhất. Tất cả các tập tin và thư mục đều nằm trong thư mục này.

### 2./sbin-System Binaries

 Chứa đựng các file thực thi dạng binary(nhị phân) của các chương trình cơ bản giúp hệ thống có thể hoạt động. các lệnh bên trong /sbin thường được sử dụng cho các mục đích là duy trì quản lý hệ thống .Các câu lệnh này đều cần phải có quyền root.
 
 Một số câu lệnh trong đây : lilo, fdisk,init,ifconfig... Để liệt kê , bạn dung câu lệnh "ls/sbin/".
 
 Còn một thư mục mà nó chứa các tệp thi hành cho hệ thống đó là:/usr/sbin/. Nhưng các chương trình ở đây không được dùng để bảo trì hệ thống.
 
 ### 3./bin- User Binareies
 
 Đối lập với /sbin/ thư mục này chứa rất nhiều ứng dụng khác nhau dùng được cho cả việc bảo trì hệ thống của root, cũng như các lệnh cho người dùng thông thường. Thư mục này thường chứa hệ vỏ (shell), cũng như rất nhiều lệnh hữu dụng như cp (sao chép), mv( di chuyển), cat, ls. Cũng giống như sbin, thư mục/usr/bin cũng chứa các tệp tin có chức năng tương tự như /bin.
 
 ### 4./boot- Boot Loader File
 
Thư mục này chứa các file cấu hình của các chương trình, đồng thời nó còn chứa các shell script dùng để khởi động hoặc tắt các chương trình khác.
 
 ### 5./dev- Device File 
 
 Các phân vùng ổ cứng, các thiết bị ngoại vi như USB, ổ đĩa cắm ngoài, hay bất cứ thiết bị nào gắn kèm vào hệ thống đều được lưu trữ ở đây.
 
 ### 6./tmp- Các file trạm
 
 Thư mục này chứa các file tạm thời được tạo bởi hệ thống và người dùng, các file lưu trữ trong thư mục này sẽ bị xóa khi hệ thống khởi động lại.
 
 ### 7./proc - Thông tin về các tiến trình
 
 Thông tin về các tiến trình đang chạy sẽ được lưu trong /proc dưới dạng một hệ thống file thư mục mô phỏng. 
 
 ### 8./var - File về biến của chương trình
 
 Thông tin về các biến của hệ thống được lưu trong thư mục này . Như thông tin về log file:/var/log, các gói và cơ sở dữ liệu /var/lib...
 
 ### 9./usr - Chương trình của người dùng
 
 Chứa các thư viện , file thực thi, tài liệu hướng dẫn và mã nguồn cho chương trình chạy ở level 2 của hệ thống. 
 Trong đó:
 - /usr/bin chứa các file thực thi của người dùng như: at, awk, cc, less,... Nếu bạn không tìm thấy chúng trong /bin hãy tìm trong /urs/bin.
 - /usr/bin chứa các file thực thi của hệ thống dưới quyền adnim như: atd, cron, sshd,... Nếu bạn không tìm thấy chúng trong /sbin thì hãy tìm  trong thư mục này.
 - /usr/lib chứa các thư viện cho các chương trình trong/usr/sbin.
 - /usr/local Chứa các chương trình của người dùng được cài từ mã nguồn . Ví dụ như: bạn cài apache từ mã nguồn, nó sẽ được lưu dưới /usr/local/apache2
 
### 10./home - Thư mục người dùng

Thư mục này chứa tất cả các file cá nhân của từng người dùng . Ví dụ : /home/jonh, /home/file,....

#### 11./boot

Tất cả các file yêu cầu khi khởi động được lưu ở đây

### 12./lib - Thư viện hệ thống

Chứa các thư viện hỗ trợ cho các file thực thi trong /bin và /sbin . Các thư viện này thương có tên bắt đầu bằng ld*, lib*,so*...

### 13./opt - Các ứng dụng tùy chọn 

Tên thư mục này nghĩa là optional ( tùy chọn) nó chứa các ứng dụng thêm vào từ nhà cung cấp độc lập khác. Các thư mục này có thể cài ở /opt hoặc một thư mục con của /opt.

### 14./mnt- Thư mục mount

Đây là thư mục tạm để mount các file hệ thống. Ví dụ như #mount/dev/sda2/mnt.

### 15./media - Các thiết bị gắn có thể gỡ bỏ 

Thư mục này chứa các thiết bị như CdRom/media/cdrom hay cac phân vùng ổ đĩa cứng/media/data.

### 16./srv - Dữ liệu của các dịch vụ khác 

Chứa các dữ liệu liên quan đến các dịch dịch vụ máy chủ như /srv/svs, chưa các dữ liệu liên quan đến cvs.

