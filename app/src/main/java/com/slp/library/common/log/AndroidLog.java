package com.slp.library.common.log;

import android.util.Log;
import com.slp.library.common.log.SlpLogs;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidLog implements SlpLogs.ISystemLog {
    final String TAG = "SLP";

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void d(String str) {
        Log.d("SLP", str);
    }

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void e(String str) {
        Log.e("SLP", str);
    }

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void i(String str) {
        Log.i("SLP", str);
    }

    @Override // com.slp.library.common.log.SlpLogs.ISystemLog
    public void w(String str) {
        Log.w("SLP", str);
    }
}
