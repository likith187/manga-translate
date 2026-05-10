package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.b;

/* JADX INFO: loaded from: classes.dex */
public final class f0 extends com.google.android.gms.dynamic.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final f0 f7874c = new f0();

    private f0() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View c(Context context, int i10, int i11) throws b.a {
        f0 f0Var = f7874c;
        try {
            return (View) com.google.android.gms.dynamic.a.a(((a0) f0Var.b(context)).e(com.google.android.gms.dynamic.a.b(context), new zax(1, i10, i11, null)));
        } catch (Exception e10) {
            throw new b.a("Could not get button with size " + i10 + " and color " + i11, e10);
        }
    }

    @Override // com.google.android.gms.dynamic.b
    public final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return iInterfaceQueryLocalInterface instanceof a0 ? (a0) iInterfaceQueryLocalInterface : new a0(iBinder);
    }
}
