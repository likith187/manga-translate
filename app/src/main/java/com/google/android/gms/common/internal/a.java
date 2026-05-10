package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.IAccountAccessor;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends IAccountAccessor.Stub {
    public static Account a(IAccountAccessor iAccountAccessor) {
        Account accountZzb = null;
        if (iAccountAccessor != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    accountZzb = iAccountAccessor.zzb();
                } catch (RemoteException unused) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                }
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        return accountZzb;
    }
}
