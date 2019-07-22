# 1. Câu Lệnh Man Trong Linux.
Lệnh **Man** trong Linux được sử dụng để hiển thị hướng dẫn sử dụng của bất kỳ câu lệnh nào chúng ta có thể chạy trên thiết bị đầu cuối.
Nó cung cấp một cái nhìn chi tiết về lệnh bao gồm Name, Synopsis, Description, Options, Exit Status, Return Values, Errors, Files, Versions, Examples, Author và See Also.

Mỗi hướng dẫn được chia thành các phần sau:

* Các chương trình thực thi hoặc các lệnh shell

* Các cuộc gọi hệ thống( các chức năng được cung cấp bởi Kernel).

* Các cuộc gọi từ thư viện( các chức năng trong thư viện chương tình)

* Trò chơi

* Các lệnh đặc biệt( thường được tìm thấy trong /dev)

* Định dạng tệp và quy ước

* Các lệnh quản trị hệ thống( thường chỉ dành riêng cho root).

* Thói quen hạt nhân [không chuẩn].

## 2. Hướng Dẫn Sử Dụng Câu Lệnh Man.

**Cú Pháp :**

`$ man [tùy chọn] ..[tên thông tin]...`

**1. No Option:** Nó hiển thị toàn bộ hướng dẫn của lệnh.

Cú Pháp

`$ man [tên thông tin]`

ví dụ: `$ man`

**2.Section-num:** Do một hướng dẫn được chia thành nhiều phần nên tùy chọn này được sử dụng để hiển thị một phần cụ thể hướng dẫn
 
Cú Pháp

`$ man [Phần-Num] [tên thông tin]`

ví dụ: `$ man intro`

**3.-f option :** người ta có thể không nhớ được các phần trong đó có lệnh. Vì vậy, tùy chọn này đưa ra phần phần trong đó lệnh cho có mặt.

Cú Pháp

`$ man -f [Commanl Name]`

Ví Dụ: `$ man -f ls`

**4. -a option :** Tùy chọn này giúp cho chúng tôi hiển thị tất cả các trang hướng dẫn giới thiệu có sẵn liên tiếp.

Cú Pháp

`$ man -a [commanl name]`

Ví Dụ: `$ man -a intro`

**5. -k Option: Tùy chọn này tìm kiếm lệnh đã cho dưới dạng biểu thức chính quy trong tất cả các hướng dẫn và nó trả về các trong thủ công với số phần được tìm thấy.

Cú Pháp

`$ man -k [Commanl name]`

Ví Dụ: `$ man -k cd`

**6. -w Option :** Tùy chọn này trả về vị trí có trang thủ công của lệnh đã cho.

Cú Pháp

`$ man -w [Commal name]`

Ví Dụ: `$ man -w ls`

**7. -I Option :** Nó coi lệnh là phân biệt chữ hoa chữ thường.

Cú Pháp

`$ man - I [Commal name]`

Ví Dụ: `$ man -I printf`

