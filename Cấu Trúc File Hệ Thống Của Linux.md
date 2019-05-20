Hệ điều hành Linux coi tất cả đều là các tệp tin (file) thậm chí cả các thiết bị cũng như ổ đĩa. Nó quản lý tất cả trên một "hệ thống tập tin" duy nhất, bắt đầu ở một thư mục gốc là một thư mục "root" và đây là thư mục ở mức cao nhất. Cấu trúc cơ bản của hệ thống tệp tin này được mô tả như hình bên dưới:

<img src="https://imgur.com/YZxCIS5">

**Bạn dùng câu lệnh ls để liệt kê các thư mục và tệp tin nằm trong root như sau: $ls/#/ đại diện cho thư mục root.**

*Chú Ý :Đối với Linux bạn nên dùng dấu gạch xuôi / thay vì gạch ngược trong windowns.*

# 1./-Root

Đây là thư mục ở mức cao nhất. Tất cả các tập tin và thư mục đều nằm trong thư mục này.

## 2./sbin-System Binaries

 Chứa đựng các file thực thi dạng binary(nhị phân) của các chương trình cơ bản giúp hệ thống có thể hoạt động. các lệnh bên trong /sbin thường được sử dụng cho các mục đích là duy trì quản lý hệ thống .Các câu lệnh này đều cần phải có quyền root.
 
 Một số câu lệnh trong đây : lilo, fdisk,init,ifconfig... Để liệt kê , bạn dung câu lệnh "ls/sbin/".
 
 Còn một thư mục mà nó chứa các tệp thi hành cho hệ thống đó là:/usr/sbin/. Nhưng các chương trình ở đây không được dùng để bảo trì hệ thống.
 
 ### 3./bin- User Binareies
 
 Đối lập với /sbin/ thư mục này chứa rất nhiều ứng dụng khác nhau dùng được cho cả việc bảo trì hệ thống của root,
