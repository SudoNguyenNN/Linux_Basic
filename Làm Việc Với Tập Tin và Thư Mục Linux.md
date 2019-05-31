## 1. Lệnh ls - Xem danh sách tập tin thư mục
**ls -[tùy chọn] [ đường dẫn thư mục muốn xem]**

Các tùy chọn phổ biến của lệnh ls:

| Các tùy chọn của lệnh | ý nghĩa |
| ----------------------- | ------- |
| -L                     | Hiển thị danh sách tập tin, thư mục (chỉ hiện tên). |
| -I                     | Hiển thị danh sách tập tin, thư mục(bao gồm nhiều cột: file name, size, date...) |
| -A                     | Liệt kê tất cả các tập tin, thư mục bao gồm những tập tin ẩn. |
| -R                     | Liệt kê tất cả các tập tin , thư mục kể cả các tập tin, thư mục bên trong thư mục cha |

Ngoài ra chúng ta còn có thể sử dụng "man" để xem các tùy chọn của lệnh ls.

`man ls`

### 1.1. Lệnh grep
##### Lệnh grep - lọc lại tên tập tin thư mục muốn xem

Lệnh `ls -l` của "/" cho kết quả nhiều thộng tin, nếu muốn lọc lại tên tập tin thư mục muốn xem chỉ cần thên `grep`.

` lệnh | grep [nhập ký tự muốn lọc]`

**Ví Dụ** . Muốn xem trong "/" có tập tin . thư mục nào có chứa ký tự là student thì thực hiện lệnh sau :

`ls -l |grep student

##### Lệnh grep còn còn được dùng để tìm kiếm chuối  trong file :

`grep " chuoi " tên file `

##### Lệnh grep còn được dùng tìm kiếm chuỗi trong nhiều file cùng lúc:

` grep " chuoi " file_pattern`

 **chú ý** : `Dùng ký hiệu "*" để thực hiện tìm kiếm nhiều tập tin cùng một lúc. `

**Ví Dụ** : Tìm kiếm chuối "yum" trong các file có đuôi .txt trong thư mục /root :

` grep "yum" /root/*.txt `

## 2. Lệnh cd

Lệnh `cd` dùng để đổi sang thư mục khác.

##### Các lệnh cd thông dụng 
 - Di chuyển về thư mục gốc : cd/
 - Di chuyển đến một vị trí bất kì khi biết đường dẫn tuyệt đối: cd /etc /network
 - Di chuyển đến thư mục còn nằm trong thư mục hiện tại: cd docs hoặc./docs
 - Di chuyển đến thư mục mẹ:
 `cd..                        `
  
  Hoặc 
  
  `cd../.. : di chuyển đến thư mục mẹ hai lần `
  
  - Lệnh cd không có tham số, sẽ đưa bạn về home directory, dù bất kể bạn đang ở đâu :cd hoặc cd~
  - Lệnh cd dùng để quay về trước thư mục trước :cd -
  
  ## 3. Lệnh pwd
  
  
