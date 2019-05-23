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

