Nói đơn giản FileSystem là thứ xác định cách thức tổ chức, quản lý dữ liệu hay có thể nói là quản lý cách thức quản lý dữ liệu được đọc và lưu trên thiết bị. File system cho phép người dung truy cập nhanh chóng và an toàn khi và các tệp tin thư mục khi cần thiết.

Những loại filesystem được Linux hỗ trợ:

- Filesystem cơ bản: ext2, ext3, ext4, XFS, Btrfs, JFS, NTFS...
- Filesystem dành cho dạng dữ liệu Flash(Thẻ nhớ các thứ..): ubifs,jffs2, yaffs...
- Filesystem dành cho cơ sở dữ liệu.
- Filesystem mục đích đặt biệt: procfs, sysfs, tmpfs, squashfs, debugfs,...

Một phân vùng là một vùng chứa trong đó có một filesystem được lưu trữ, trong đó một số trường hợp thì filesystem có thể mở rộng hơn một phân vùng nếu filesystem sử dụng các liên kết.

**Và đây là so sánh giữa hệ thống file(FileSystem) giữa windows và linux**

|       |windows   | Linux|
|------|----------|-------|
|Phân vùng| Disk1|/dev/sda1|
|Loại Filesystem| NTFS|EXT2/EXT3/EXT4/XFS/BTRS...|
|Mounting Parameters| DrivelLetter| MounPoint|
|Hệ điều hành lưu trữ| C:\ | /|

**FileSystem Hierachy Standard**

Linux Filesystem được lưu trữ nhũng file quan trọng theo một tiêu chuẩn được gọi là *FileSystem Hierarchy Standard*. Việc có một tiêu chuẩn như thế này rất hữu ích cho những người dùng , quản trị viên, lập trình viên có thể chuyển đổi giữa các Distro mà không cần phải biết thêm mấy linh tinh nữa.

<img src="https://s3-ap-southeast-1.amazonaws.com/kipalog.com/pgx5qk1b7t_image.png">

