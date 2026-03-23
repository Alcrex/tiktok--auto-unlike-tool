#Requires AutoHotkey v2.0

; 按下 F1 开启循环，再次按下 F1 停止循环
f1:: {
    static toggled := false
    toggled := !toggled
    
    if (toggled) {
        SetTimer(MyMacro, 1) ; 开启任务
    } else {
        SetTimer(MyMacro, 0) ; 关闭任务
        Reload()             ; 重置脚本以彻底停止
    }
}

MyMacro() {
    Click 1659, 245 ; 第1个点
    Sleep 1000      ; 间隔
    Click 213, 314 ; 第2个点
    Sleep 1000
    Click 494, 313 ; 第3个点
    Sleep 1000
    Click 931, 515 ; 第4个点
    
    ; --- 结束后等待 ---
    ; 比如你想在这里等 10 秒
    Sleep 15000 
}
Esc::ExitApp  ; 按下 Esc 键直接彻底关闭脚本