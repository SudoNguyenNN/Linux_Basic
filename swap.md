**Swap** là một không gian trống trên đĩa được sử dụng khi dung lượng bộ nhớ RAM vật lý đã bị đầy.

Khi một hệ thống Linux chạy trên RAM, pages không hoạt động sẽ được chuyển từ RAM vào swap space.`swwap space` có thể mang hình thức của một trong hai phân vùng swap chuyên dụng hoặc một swap file hoán đổi. Trong phần lớn các trường hợp khi chạy Linux trên một máy ảo swap partition không hoạt động được lựa chọn duy nhất là tạo ra một swap file hoán đổi.

**How to add Swap file**

(các bước add thêm 1 GB swap)

- 01: Tạo một file mà bạn muốn sử dụng nó làm swap

` $ sudo fallocate -l 1G /swapfile`

Nếu `faillocate` không được cài đặt hoặc nếu bạn nhận được một thông báo lỗi `faillocate failed: Operation not supported` bạn có thể sử dụng câu lệnh dưới đây để tạo swap file.
` $ sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576`

- 02: Thiết lập quyền cho phép

` sudo chmod 600 /swapfile`

- 03: Thiết lập một khu vực swap Linux

`$ sudo mkswap /swapfile`

- 04: Bật tính năng swap

`$ sudo swapon /swapfile`

Để thực hiện  thay đổi trên vĩnh viễn ta mở file /etc/fstab và thêm vào dòng sau: ` /swapfile swap swap defaults 0 0`

- 05: Kiểm tra trạng thái của swap

`$ sudo swapon -- show`

**How to điều chỉnh giá trị swappiness**

Swappiness là một giá trị của Linux kernel mà nó định nghĩa mức độ thường xuyên hệ thống sẽ sử dụng không gian swap. Swappiness có giá trị trong khoảng 0 đến 100. Giá trị càng thấp thì kernel sẽ cố gắng tránh sử dụng không gian swap hơn và ngược lại nếu giá trị càng cao thì kernel sẽ tích cực sử dụng không gian swap hơn.

Giá trị mặc định của swappiness là 60. Bạn có thể thay đổi giá trị bằng cách sử dụng câu lệnh: ` $ sudo sysctl vm.swappiness=value` value là một giá trị trong khoản 0 đến 100.

Để thay đổi giá trị đó vĩnh viễn bạn thêm câu lệnh dưới vào file /etc/sysctl.conf: `vm.swappiness=valuve`.

**How to remove file swap**

- 01: Đầu tiên tắt swap bằng câu lệnh

`$ sudo swapoff -v /swapfile`

- 02: Xóa các swap file `/swapfile swap swap defaults 0 0 ` trong file /etc/fstab.

- 03: Cuối cùng xóa file swap bằng câu lệnh `rm`

` $ sudo rm /swapfile`


 
