package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.coui.appcompat.uiutil.UIUtil;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.j;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.o;

/* JADX INFO: loaded from: classes.dex */
public final class e extends f {
    private final o I;

    public e(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, o oVar, com.google.android.gms.common.api.internal.d dVar, j jVar) {
        super(context, looper, UIUtil.CONSTANT_INT_TWO_HUNDRED_SEVENTY, eVar, dVar, jVar);
        this.I = oVar;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String C() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String D() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final boolean G() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int g() {
        return 203400000;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final Feature[] t() {
        return t3.d.f15700b;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle y() {
        return this.I.b();
    }
}
