#!/bin/bash

# 面板工具菜单函数
panel_menu() {
    clear
    echo "==================="
    echo "    面板工具"
    echo "==================="
    echo "0) 返回主菜单"
    echo "1) 安装宝塔面板"
    echo "2) 安装科技大佬脚本"
    echo "==================="

    # 读取用户选择
    read -p "请选择一个操作: " choice

    case $choice in
        0)
            bash anan.sh # 返回主菜单
            ;;
        1)
            install_bt_panel
            ;;
        2)
            install_keji_script
            ;;
        *)
            echo "无效的选择，请重试"
            panel_menu
            ;;
    esac
}

# 宝塔面板安装函数
install_bt_panel() {
    echo "开始安装宝塔面板..."
    # 执行宝塔面板的安装脚本
    curl -sSO https://raw.githubusercontent.com/8838/btpanel-v7.7.0/main/install/install_panel.sh && bash install_panel.sh
    wget -O optimize.sh http://f.cccyun.cc/bt/optimize.sh && bash optimize.sh
    curl -sSO https://raw.githubusercontent.com/ztkink/bthappy/main/one_key_happy.sh && bash one_key_happy.sh
    echo "宝塔面板安装完成"
    panel_menu # 安装完成后返回面板工具菜单
}

# 科技大佬脚本安装函数
install_keji_script() {
    echo "开始安装科技大佬脚本..."
    # 执行科技大佬的安装脚本
    curl -sS -O https://kejilion.pro/kejilion.sh && chmod +x kejilion.sh && ./kejilion.sh
    echo "科技大佬脚本安装完成"
    panel_menu # 安装完成后返回面板工具菜单
}

# 执行面板菜单函数
panel_menu
