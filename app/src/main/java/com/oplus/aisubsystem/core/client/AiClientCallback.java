package com.oplus.aisubsystem.core.client;

import com.oplus.aiunit.core.IUnit;
import com.oplus.aiunit.core.callback.IUnitStatusListener;
import kotlin.jvm.internal.r;
import z5.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class AiClientCallback extends IUnitStatusListener.Stub {
    private final String tag;

    public AiClientCallback(String tag) {
        r.e(tag, "tag");
        this.tag = tag;
    }

    public abstract void onDestroy();

    @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
    public final void onDestroy(String detectName, String unitName) {
        r.e(detectName, "detectName");
        r.e(unitName, "unitName");
        c.e(this.tag, "onDestroy: detectName = " + detectName + ", unitName = " + unitName);
        onDestroy();
    }

    @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
    public final void onFail(String detectName, int i10) {
        r.e(detectName, "detectName");
        c.b(this.tag, "onFail: detectName = " + detectName + ", errCode = " + i10);
        onFailure(i10, detectName);
    }

    @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
    public final void onFailSpec(String detectName, String unitName, int i10, String str) {
        r.e(detectName, "detectName");
        r.e(unitName, "unitName");
        c.b(this.tag, "onFailSpec: detectName = " + detectName + ", unitName = " + unitName + ", errCode = " + i10 + ", msg = " + str);
        onFailure(i10, str);
    }

    public abstract void onFailure(int i10, String str);

    public abstract void onStart();

    @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
    public final void onStart(IUnit unit, String detectName) {
        r.e(unit, "unit");
        r.e(detectName, "detectName");
        c.e(this.tag, "onStart: detectName = " + detectName);
        onStart();
    }

    public abstract void onStop();

    @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
    public final void onStop(String detectName) {
        r.e(detectName, "detectName");
        c.e(this.tag, "onStop: detectName = " + detectName);
        onStop();
    }
}
