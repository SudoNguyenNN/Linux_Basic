### Parent Process ID (PPID)

Mỗi tiến trình trong Unix có hai IP được gán cho nó: Process IP (PID) và Parent Process IP (PPID)

Mỗi tiến trình trong hệ thống có một tiến trình gốc Parent ID

### Gửi tín hiệu đến tiến trình

**Từ bán phím**

- **Ctrl+C**: gửi tín hiệu INT (SIGINT) đến tiến trình, ngắt ngay tiến trình (interrupt).
- **Ctrl+Z**: gửi tín hiệu TSTP (SIGTSTP) đến tiến trình, dừng tiến trình (suspend).
- **Ctrl+/**: gửi tín hiệu ABRT (SIGABRT) đến tiến trình, kết thúc ngay tiến trình (abort).

**Từ dòng lệnh**

Lệnh kill thường được sử dụng để ngừng thi hành một tiến trình, lệnh kill có thể gửi bất kỳ một tín hiệu signal nào tới tiến trình. Mặc định nó gửi tín hiệu 15, là TERM (tín hiệu kết thúc chương trình).

### Zombie Process và Orphan Process

Khi một child process bị kill, parent process sẽ  được thông báo thông qua ký hiệu SIGCHILD. Sau đó parent process sẽ thực hiện một vài công việc khác hoặc bắt đâu lại child process nếu cần thiết.

Khi Parent process bị kill trước. Thì Parent process cảu tất cả các process "init process" trở thành PPID mới, đôi khi còn được gọi là Orphan Process

Khi một process bị kill, danh sách liệt kê ps có thể vẫn chỉ process với trạng thái Z (Zombie). Là trạng thái process không tồn tại. Process này bị kill và không được sử dụng. 

Những process này khác với orphan process. Nó là những process mà đã chạy hoàn thành nhưng vẫn có một cổng vào trong bảng process.

### Deamon Process



