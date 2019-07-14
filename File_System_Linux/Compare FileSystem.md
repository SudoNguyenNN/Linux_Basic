**So Sánh FileSystem Trong Linux**

|Name FileSystem| Năm Giới Thiệu| Kích Thước File Tối Đa|Kích Thước Ổ Đĩa Tối Đa|Block journaling|Note|
|---------------|---------------|-----------------------|-----------------------|-----------------|---|
|EXT2|1993|2TB|32TB|Không|Đã lạc hậu không nên sử dụng|
|EXT3|1999|2TB|32TB|Có|Đã lạc hậu không nên sử dụng|
|EXT4|2006|16TB|1EB|Có|Nên sử dụng nếu chạy hệ thống linux|
|ReiserFS|2001|8TB|16TB|Có|Với những file có kích thước dưới 4KB reiserFS có tốc độc sử lý nhanh hơn(Có thể sử dụng reiserFS cho các hệ thống nơi chú trọng hiệu suất xử lý với các tập tin nhỏ như HTTP Cache)|
