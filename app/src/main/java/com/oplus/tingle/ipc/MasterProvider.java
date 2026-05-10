package com.oplus.tingle.ipc;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
public class MasterProvider extends ContentProvider {
    private IBinder a() {
        return b8.b.a() ? b.a() : (IBinder) b();
    }

    private static Object b() {
        return d.a();
    }

    private String c() {
        return b8.b.a() ? "com.oplus.permission.safe.SECURITY" : (String) d();
    }

    private static Object d() {
        return d.b();
    }

    private boolean e() {
        return k7.c.e().g() || getContext().checkCallingPermission(c()) == 0;
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (e()) {
            if ("sendBinder".equals(str)) {
                bundle2.putBinder(t7.a.e(), a());
            }
            return bundle2;
        }
        b8.a.c("MasterProvider", "<CALL> Calling package : [" + getCallingPackage() + "] have no permission : " + c(), new Object[0]);
        bundle2.putBinder(t7.a.e(), null);
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        b8.a.b("MasterProvider", "Provider onCreate", new Object[0]);
        g7.c.a().c(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (e()) {
            return u7.a.c(a());
        }
        b8.a.c("MasterProvider", "<QUERY> Calling package : [" + getCallingPackage() + "] have no permission : " + c(), new Object[0]);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
