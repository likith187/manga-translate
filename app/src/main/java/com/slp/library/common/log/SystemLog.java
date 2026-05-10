package com.slp.library.common.log;

import com.slp.library.common.log.SlpLogs;

/* JADX INFO: loaded from: classes2.dex */
public class SystemLog implements SlpLogs.ISystemLog {
    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void d(String str) {
        println(str);
    }

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void e(String str) {
        println(str);
    }

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void i(String str) {
        println(str);
    }

    void println(String str) {
        System.out.println(str);
    }

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void w(String str) {
        println(str);
    }
}
