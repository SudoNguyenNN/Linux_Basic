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

