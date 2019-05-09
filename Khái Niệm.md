# Linux_Basiss/intended for system admin
**1: Linux là gì ?**
- Khái niệm về linux:
  - Linux là một hệ điều hành mã nguồn mở dựa trên UNIX. Hệ điều hành là một phần mềm hệ thống dùng để quản lý phần cứng và phần mềm
  - Mã nguồn mở, có nghĩa là những bạn phát triển phần mềm và chia sẻ mã nguồn một cách miễn phí, những người khác có thể thêm vào đó các tính năng của riêng họ cũng như debug mã nguồn.
- Các phiên bản của linux :
  - Các phiên bản thương mại :  Fedora, Ubuntu, OpenSUSE
  - Các phiên bản hướng cộng đồng: Debian và Arch Linux
- **=>** Và tất cả đều có một đặc điểm chung là có một *Linux kernel* bên trong. Linux thu hút các lập trình viên bởi tính linh hoạt, sức mạnh, tốc độ và phần mềm quản lý package cho phép cài đặt phần mềm một cách dễ dàng.

**2: Nhân Linux (Linux kernel) Là Gì ?**

Hiểu đơn giản thì kernel là trái tim của một hệ điều hành. Linux kernel là một phần mềm hệ thống low-level. Nó cung cấp các giao diện để tương tác ở mức người dùng. Nó quản lý các tài nguyên trong máy như RAM, Disk, Processort, các thiết bị đầu ra ..v..v..

`Hình Ảnh Về NHân Của Linux`

<img src="http://www.ibm.com/developerworks/linux/library/l-linux-kernel/figure3.jpg">

- Nhân Kerned của Linux gồm 5 tiểu hệ thống chính:
   - 1.Bộ phân thời tích tiến trình (Process Scheduler-SCHED):Là bộ phận trung tâm của hệ điều hành, chịu trách nhiệm chia sẻ thời gian sử dụng CPU cho các process.
   - SCHED chia làm 4 module:
   
   
