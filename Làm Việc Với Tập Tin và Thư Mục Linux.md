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
 Lệnh `pwd` chúng ta sẽ có ful path của thư mục mà chúng ta dang dùng ở hiện tại.
 
 `pwd`
 
 ## 4. Lệnh mkdir - dùng để tạo thư mục 
 
 Lệnh `mkdir` được sử dụng để tạo một thư mục trong thư mục hiện tại:
 
  `mkdir [tên thư mục cần tạo ]
  
  Ví Dụ : Tạo thư mục tên exampledir trong thư mục hiện tại:
  
  `mkdir exampledir `
  
  ## 5. Lệnh xóa tập tin thư mục
  ##### 5.1 Xóa tập tin :
  `rm [đường dẫn ]`
  
  Ví Dụ : Xóa tập tin abc.txt trong /usr/passwod:
  
  `rm /usr/password/abc.txt
  
  ##### 5.2 Xóa tập tin mà không cần hỏi:
  rm -f [ đường dẫn]
  
  Ví Dụ : Xóa tập tin abc.txt trong /usr
  
  `rm -f /usr/password/abc.txt`
  
  ##### 5.3 Xóa thư mục
  
 rm -rf [đường dẫn]
 
 Ví Dụ : Xóa thư mục example trong /usr/bin:
 
 `rm -rf /usr/bin/example`
 
 ##### 5.4 : Xóa thư mục rỗng
 
`rmdir [đường dẫn ]`

Ví Dụ : Xóa thư mục trong dir trong /usr/bin:

`rmdir dir`

## 6. Lệnh sao chép tập tin :
##### 6.1 Lệnh sao chép tập tin

`cp [đường dẫn nguồn] [ đường đẫn địch]`

Ví dụ : Sao chép thư mục abc.txt trong thư mục /root sang /usr:

`cp /root/abc.txt /usr`

##### 6.2 Lệnh sao chép thư mục

`cp -r [đường dẫn nguồn] [đường dẫn đich]

Ví dụ :Sao chép thư mục /root/networks sang /usr/bin:

`cp -r/root/network /usr/bin`

## 7. Lệnh mv - dùng để di chuyển, chuyển đổi tên

Lệnh `mv` thực hiện nhiệm vụ kép . Nó có thể thực hiện:

##### 7.1 Cần đổi tên một tập tin

`mv [đường dẫn với tên cũ] [đường dẫn với tên mới]`

Ví Dụ :Đổi tên tập tin test1.txt trong /root thành test2.txt:

`mv /root/test1.txt /root/test2.txt`
##### 7.2 Di chuyển một tập tin đến vị trí khác, trong khi đó nó có thể đổi tên cùng lúc.

 `mv [đường dẫn nguồn] [đường dẫn đích]`
 
 Ví Dụ : Di chuyển và đổi tên tệp tin test1.txt trong /root sang /etc đổi tên thành test.txt:
 
 `mv /root/test1.txt /etc/test.txt`
 
 ## 8. Lệnh touch - dùng để tạo tệp rỗng.
 Lệnh `touch` thường được dùng để thiết lập hoặc cập nhật quyền truy cập, thay đổi và sửa đổi thời gian của tệp . Theo mặc định, nó đặt lại dấu thời gian của tệp đế khớp với thời gian hiện tại.
 
 Ngoài ra lệnh `touch` còn để tạo tệp rỗng.
 
 `touch [tên tệp]`
 
 Ví Dụ : Tạo tệp test1.txt:
 
 `touch test1.txt`
 
 Lệnh `touch` còn cung cấp một số tiện ích, như tùy chọn -t cho phép bạn cài đặc thời gian của tệp.
 
 `touch -t[thời gian] [tên tệp]`
 
 Ví Dụ : Đặt thời gian cho tệp myflie, ngày 9 tháng 12 vào lúc 4 giờ chiều(12091600)
 
 `touch -t 12091600 myfile`
 
 ## 9. Dùng trình soạn thảo vi.
 
 Linux có nhiều chương trình cho phép soạn thảo văn bản như : vi emacs,joe ,pico,.. Chương trình soạn thảo văn bản thông dụng nhất đó là vi.
 
 Khi `vi` khởi động sẽ ở chế độ dòng lệnh. Để chuyển đổi sang chế độ soạn thảo nhấn phím insert. Để trở lại chế độ dòng lệnh thì chọn ESC.
 
 `vi [đường dẫn]`
 
 Ví Dụ : Tạo tập tin 123.txt và đặt trong thư mục /usr/bin với nội dung là " dung trình soạn thảo vi"
 
 **Bước 1** : Dùng lệnh vi để để tạo tập tin 123.txt. Nều tập tin này đã có thì cũng dùng vi để mở theo cú pháp trên.
 
 `vi 123.txt`
 
 **Bước 2** : Nhấn phím i để nhập nội dung " dung trinh soan thao vi".
 
 **Bước 3**: Nhấn phím ESC để nhập một tring các yêu cầu sau:
 - `q!` : Thoát mà không lưu
 - `wq` : Lưu và thoát khỏi tập tin.
 
 Các câu lệnh và tác dụng trong chế độ dòng lệnh của trình soạn thảo vi:
 
 | Câu Lệnh | Tác Dụng |
 | ------------ | ----------- |
 | ^ hoặc 0 | Di chuyển con trỏ đến vị trí bắt đầu của dòng lệnh hiện tại |
 | $ | Di chuyển con trỏ đến vị trí kết thúc của dòng hiện tại. |
 | i,a | Chèn văn bản ngay trước/sau vị trí con trỏ |
 
 
 
 


  
  
  
