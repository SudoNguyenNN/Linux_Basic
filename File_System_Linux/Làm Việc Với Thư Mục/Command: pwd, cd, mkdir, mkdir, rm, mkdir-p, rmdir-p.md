**1. PWD - Mình Đang Ở Đâu**: **pwd** là viết tắt của cụm từ Print Working Directory ( In ra thư mục hiện tại).Khi dùng lệnh **pwd** chúng ta sẽ có full path của thư mục mà chúng ta đang dùng ở hiện tại.


**2.CD - Teleport Đến Nơi Khác**: **cd** viết tắt của cụm từ Change Directory, có nghĩa là chuyển sang thư mục khác.

**3.MKDIR**: Câu lệnh này chơ phép các user được tạo thư mục rỗng trên hệ điều hành Linux. Với câu lệnh này bạn có thể tạo đồng thời nhiều thư mục, cũng như set được các quyền cho cả thư mục khi tạo. Tất nhiên phải lưu ý đến quyền hạn được phép tạo thư mục user khi đang đứng ở thư mục cha hay không nhé. Nếu không sẽ gặp báo lỗi về việc từ chối quyền (permission denied).

**4. MKDIR - P**: Để tạo một thư mục kèm theo thư mục cấp cha của nó phải được tạo ngay cả khi cấp cha chưa tồn tại. Thì dùng câu lệnh mkdir - p.

**5. MKDIR - m**: Để set phân quyền luôn khi tạo một thư mục. Nếu bạn dùng option"-m" mà không đi kèm với giá trị phân quyền thì thư mục tạo ra sẽ theo giá trị umask mặc định.

` Cú Pháp: mkdir -p <permission_value> <path_name>`

