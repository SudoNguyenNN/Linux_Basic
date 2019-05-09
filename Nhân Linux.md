# Linux_Basiss/intended for system admin
**2: Nhân Linux (Linux kernel) Là Gì ?**

Hiểu đơn giản thì kernel là trái tim của một hệ điều hành. Linux kernel là một phần mềm hệ thống low-level. Nó cung cấp các giao diện để tương tác ở mức người dùng. Nó quản lý các tài nguyên trong máy như RAM, Disk, Processort, các thiết bị đầu ra ..v..v..

`Hình Ảnh Về NHân Của Linux`

<img src="http://www.ibm.com/developerworks/linux/library/l-linux-kernel/figure3.jpg">

- Nhân Kerned của Linux gồm 5 tiểu hệ thống chính:
   - 1.Bộ phân thời tích tiến trình (Process Scheduler-SCHED):Là bộ phận trung tâm của hệ điều hành, chịu trách nhiệm chia sẻ thời gian sử dụng CPU cho các process.
     - SCHED chia làm 4 module:
        - Module *luật định thời* (scheduling policy): chịu trách nhiệm phân sử xem process nào được quyền truy xuất CPU. Hệ thống hoạt động thông suốt hay không tùy thuộc vào luật này ,tránh xuất hiện tình trạng 1 process nòa đó lợi dụng kẽ hở của bộ luật để chiếm thời
      gian hệ thống trong khoảng thời gian dài, làm cho các process kia bị đóng băng.
        - Module *phụ thuộc kiến trúc* ( architecture-specific):module này gồm các code assembly phụ thuộc vào mỗi loại CPU dùng để tạm ngừng(suspend) hay asume process.
        - Module *độc lập kiến trúc* (architecture-independent): module này gọi các hàm từ architecture-specific hoặc scheduling policy để chuyển đổi giữa các process đồng thời nó còn gọi hàm ở Memory Manager đẻ thiết lập Vitural memory cho các process được resume. Với các loại 
      CPU khác nhau thì architecture-specific sẽ khác nhau, tuy nhiên architecture-independent thì không đổi.
        - Module *hàm gọi hệ thống* (System call): Gồm các hàm để user có thể tương tác được với SCHED.
   - 2.Bộ quản lý bộ nhớ(Memory Manager -MM): Chịu trách nhiệm điều khiển tiến trình truy xuất tài nguyên bộ nhớ. Bản thân CPU cũng có một hệ thống quản lý bộ nhớ vật lý cho phép ánh xạ giữa bộ nhớ vật lý và bộ nhớ process.MM sẽ lưu trữ ánh xạ này cho từng process. Thêm vào đó MM còn 
   cho phép swap; nó sẽ di chuyển những trang bộ nhớ không còn dùng xuống ổ cứng cho phép PC dùng bộ nhớ RAM còn trống.
     - MM có 3 module:
       - Module *phụ thuộc kiến trúc* : code gọi các lệnh của hệ thống quản lý bộ nhớ của CPU.
       - Module *độc lập kiến trúc* :ánh xạ cho từng process vad swap bộ nhớ ảo. Quyết định việc load trang nào hoặc remove trang nào.
       - *System call*: cho phép các process tác động lên MM bao gồm xin cấp phát bộ nhớ.
   - 3.Hệ thống file ảo (Virtual File System-VFS): VFS thiết kế để thống nhất cách truy xuất tất cả các thiết bị phần cứng.
   - 4.Giao diện mạng( Network Interface -NET): giúp cho Linux có thể kết nối với các hệ thống khác qua mạng.
     - Có 5 module:
       - Các driver cho thiết bị mạng.
       - Module độc lập thiết bị.
       - Module giao thức mạng.
       - Module độc lập giao thức mạng.
       - System call.
   - 5.Bộ truyền thông nội bộ(Inter-process communication IPC)
