package com.coui.appcompat.state;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public interface IStateEffect {
    void refresh(Context context);

    void reset();

    void setAnimateEnabled(boolean z10);
}
