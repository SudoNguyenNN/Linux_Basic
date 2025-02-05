## 1. Các câu lệnh xử lý tập tin
ls : liệt kê nội dung thư mục hiện tại

ls -al : liệt kê có định dạng và cả tập tin ẩn

cd dir : chuyển từ thư mục hiện tại sang thư mục dir

cd : chuyển từ thư mục hiện tại về thư mục riêng

pwd : hiện thư mục hiện tại 
 
mkdir dir : tạo thư mục dir

rm file : xóa tập tin file 

rm -r dir : xóa thư mục dir

rm -f flie : ép xóa tập tin file

rm -rf dir : ép xóa thư mục dir

cp file1 file2 : chép tập tin file 1 sang file 2 

cp -r dir1 dir2 : chép thư mục dir1 sang dir2, tạo dir2 nếu chưa tồn tại

mv file1 file2 : đổi tên hoặc di chuyển tập tin file1 thành file2, nếu file2 là một thư mục có sẵn di chuyển thư mục file1 vào file2.

ln -s file link : tạo liên kết biểu tượng link đến tập tin file

touch file : tạo hoặc cập nhật tập tin file

cat >file : nhập từ bàn phím (dầu vào chuẩn - standard input ) nhập vào tập tin file mới 

more file : hiện nội dung tập tin file

head file : hiện 10 dòng dầu của tập tin file

tail file : hiện 10 dòng cuối của tập tin file

tail -f file : hiện nội dung của tập tin file và cập nhật liện tục, khới đầu với 10 dòng cuối

locate file : tìn tất cả các tập tin có tên fie

## 2.Thông tin hệ thống 
date : hiện giờ hiện tại

cal : hiện ngày hiện tại

uptime : hiện thời gian lúc bật máy

w : hiện người đăng nhập

whoami : hiện tài khoản của bạn

finger user : hiện thông tin về tài khoản user

uname -a : hiện thông tin về hệ điều hành

cat /proc/cpuinfo : hiện thông tin CPU

cat /proc/meminfo : hiện thông tin về bộ nhớ

nam command : hiện hướng dẫn cho lệnh command 

df : hiện mức dử dụng ổ đĩa

du : hiện dung lượng thư mục 

free : hiện dung lượng bộ nhớ trống và lượng bộ nhớ tráo đổi (swap) đã dùng

whereis app : hiện đường dẫn của ứng dụng app 

wheris app : cho biết lệnh nào sẽ được chạy mặc định cho app

## 3. Quản lý tiến trình

ps : Hiện những tiến trình đang hoạt động tích cực

top : Hiện tất cả các tiến trình đang hoạt động

 kill pid : Ép thoát tiến trình có mã pid

killall proc : Ép thoát các tiến trình trên proc

bg : Hiện các công việc đã kết thúc hoặc đang chạy nền, tiếp tục một công việc đã tạm dừng

fg : Ngưng chạy nền (chuyển sang foreground) với công việc gần nhất

fg n : Ngừng chạy nền với công việc n

## 4.Nén 
tar cf file.tar files : Tạo một tập tar có tên file.tar chứa các tập tin khác

tar czf file.tar.gz files : Tạo một tập tar có nén bằng Gzip

tar xzf file.tar.gz : Giải nén mội tập tar bằng Gzip

tar cjf file.tar.bz2 : Tạo một tập tar có nén bằng Bzip2

tar xjf file.tar.bz2 : Giải nén một tập tar bằng Bzip2

gzip file : nén file và đổi tên thành file.gz

gzip -d file.gz : Giải nén file.gz

## 5. Quyền sử dụng tập tin 
 
chmod octal file : Thay đổi quyền sử dụng của tập tin file thành octal . Mỗi chữ số tương ứng với từng  tài khoản có được bằng cách công các số khác nhau:
 - 4 : đọc (r)
 - 2 : ghi (w)
 - 1 : thực thi (x)
 - (t) : biểu thị cho sticky bit: chỉ có chủ sở hữu mới có quyền xóa file hoặc thư mục này , còn các user khác cho dùng có quyền ( w ) nhưng không xóa được.
 
Ví dụ : 

-rwxr-xr-t 1 nguyennn nguyennn        0 Feb  4 08:45  test123.txt*

chmod 777 : tất cả đều có đủ 3 quyền

chmod 755 : rwx cho người sở hữu, rx cho nhóm sở hữu và các tài khoản khác.

Xem man chmod để  biết thêm chi tiết.

## 6. Mạng

ping host : gửi lệnh ping đến máy host và hiện kết quả

whois domain : kiểm tra  thông tin whois của tên miền domain

dig  -x host : Tìm ngược tên miền của máy host 

wget file : tải tin file

wget -c file : tiếp tục tải tập tin đang mở.

## 7. Cài đặt

Cài đặt mã nguồn:

./configure

make

make install

dpkg -i pkg.deb : cài gói phần mền (Debian)

rpm - Uvh pkg.rpm : Cài gói phần mềm (RPM)

## 8. SHH

shh user@host : kết nối đến máy host với tài khoản user

shh -p port user@host : kết nối đến máy host thông qua  cổng port với tài khoản user

shh-copy-id user@host : Thêm khóa công cộng của tài khoản user vào máy host để thiết lập đăng nhập không cần mật khẩu ( đăng nhập có  khóa)

## .9 Tìm Kiếm

grep pattern file : tìm mẫu lặp pattern trong các tập tin files 

grep -r pattern dir : Tìm mẫu lặp pattern trong các thư mục dir và tất cả các thư mục con (recursive)

command | grep pattern : Tìm mẫu lặp pattern trong dầu ra của lệnh command

## 10. Phím Tắt 

ctrl+c : dừng hoàn toàn lệnh đang chạy

ctrl+z : tạm dừng lệnh hiện tại , tiếp tục chạy nền bằng lệnh *bg* hoặc chạy chính với lệnh *fg*

ctrl+d : thoát khỏi phiên làm việc hiện tại , giống với exit

ctrl+w : xóa một từ trong dòng hiện tại

ctrl+u : xóa cả dòng

ctrl+r : hiện danh sách các lệnh gần đây

!! : lặp lại lệnh gần đây 

exit : thoát khỏi phiên bản làm việc hiện tại

*: phải cựu kỳ cẩn trọng khi dùng.

## 11.Kích hoạt tài khoản root trong Linux

sudo -i :để đăng nhập vào root 
