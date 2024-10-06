#!/bin/bash

# 主菜单函数
main_menu() {
    clear
    echo "==================="
    echo "   欢迎使用 安安工具箱"
    echo "==================="
    echo "0) 退出脚本"
    echo "1) 面板工具"
    echo "2) 系统工具"
    echo "==================="

    # 读取用户选择
    read -p "请选择一个操作: " choice

    case $choice in
        0)
            echo "退出脚本"
            exit 0
            ;;
        1)
            bash panel_tools.sh
            ;;
        2)
            echo "系统工具暂未实现" # 这里你可以添加系统工具的脚本逻辑
            ;;
        *)
            echo "无效的选择，请重试"
            main_menu
            ;;
    esac
}

# 执行主菜单函数
main_menu
