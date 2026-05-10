package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.zat;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.google.android.gms.common.internal.f implements v3.e {
    public static final /* synthetic */ int M = 0;
    private final boolean I;
    private final com.google.android.gms.common.internal.e J;
    private final Bundle K;
    private final Integer L;

    public a(Context context, Looper looper, boolean z10, com.google.android.gms.common.internal.e eVar, Bundle bundle, e.a aVar, e.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.I = true;
        this.J = eVar;
        this.K = bundle;
        this.L = eVar.g();
    }

    public static Bundle i0(com.google.android.gms.common.internal.e eVar) {
        eVar.f();
        Integer numG = eVar.g();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.a());
        if (numG != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", numG.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String C() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String D() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // v3.e
    public final void f(zae zaeVar) {
        k.h(zaeVar, "Expecting a valid ISignInCallbacks");
        try {
            Account accountB = this.J.b();
            ((d) B()).e(new zai(1, new zat(accountB, ((Integer) k.g(this.L)).intValue(), "<<default account>>".equals(accountB.name) ? k3.b.a(w()).b() : null)), zaeVar);
        } catch (RemoteException e10) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zaeVar.zab(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e10);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int g() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean n() {
        return this.I;
    }

    @Override // v3.e
    public final void o() {
        l(new d.C0105d());
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new d(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle y() {
        if (!w().getPackageName().equals(this.J.d())) {
            this.K.putString("com.google.android.gms.signin.internal.realClientPackageName", this.J.d());
        }
        return this.K;
    }
}
