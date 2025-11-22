# Simple Dotfiles
File .zshrc quá dài, làm việc quản lý các command, alias khó khăn.
Vì vậy, nên tách thành các file .zsh trong thư mục ~/.zsh theo từng module

## ✨ Tính năng
- **Dễ dàng cài đặt**: Script cài đặt tự động hóa toàn bộ quá trình
- **Tự động tải cấu hình**: Tự động load tất cả file `.zsh` trong thư mục `~/.zsh`
- **Quản lý Git**: Cấu hình Git được tách biệt và dễ dàng quản lý

## 📋 Yêu cầu hệ thống

- **macOS** (hiện tại chưa test với Linux)
- **Zsh**
- **Git** (để clone repository)

## 🔧 Cài đặt

```bash
git clone https://github.com/duccuong/dotfiles.git ~/.zsh
cd ~/.zsh
./install.sh
source ~/.zshrc
```

## 🎯 Sử dụng

Sau khi cài đặt, tất cả các file `.zsh` trong thư mục `~/.zsh` sẽ được tự động load mỗi khi bạn mở terminal mới. Bạn có thể tạo thêm file `python.zsh` trong thư mục `~/.zsh` để quản lý các command, alias liên quan đến Python thay vì thêm vào file `~/.zshrc`

## Cấu hình có sẵn
- `alias.zsh`: chứa các alias thông dụng
- `gitconfig`: cấu hình git

Một số cấu hình gitconfig có sẵn (đọc thêm tại [gitconfig] - đã thêm comment):
- alias một số git commands
- cấu hình global gitignore
- cấu hình git push/pull dùng tracking branch

## 🔍 Troubleshooting

### Lỗi: "Permission denied" khi chạy install.sh

```bash
chmod +x ~/.zsh/install.sh
./install.sh
```

## Tham khảo

- [skwp/dotfiles](https://github.com/skwp/dotfiles) - Nguồn cảm hứng chính
---

**Made with ❤️ by duccuong**
