# MarketApp

- Tính năng:
+ Đăng nhập. 
+ Đăng ký + xác thực tài khoản qua email. 
+ Chỉnh sửa profile user (mật khẩu, tên,..).
+ remember user + quên mật khẩu. 
+ Đăng nhập vs facebook google 
+ admin user : xóa user, bài đăng, comment.
+ tìm kiếm mặt hàng.
+ Đăng tin mua bán.
+ Bình luận vs thả like dưới mỗi bài đăng.
+ Follow người dùng.

 Để cấp quyền admin cho user ta làm các bước sau:
+ Mở terminal, gõ rails c.
+ Tìm và gán user cần cấp quyền vào biến user thông qua câu lệnh user = User.find(attribute)
+ user.add_role :admin




