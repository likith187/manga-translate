package com.oplus.backup.sdk.component;

import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public interface BRPluginHandler {
    void error(Bundle bundle);

    void sendMsg(Intent intent, boolean z10);

    void updateProgress(Bundle bundle);
}
