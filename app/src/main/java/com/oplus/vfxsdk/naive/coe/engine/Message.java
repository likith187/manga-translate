package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class Message {
    private String name;
    private Object[] values;

    public Message(String str) {
        this.name = str;
    }

    public Message(String str, Object... objArr) {
        this.name = str;
        this.values = objArr;
    }
}
