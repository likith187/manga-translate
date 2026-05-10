package com.heytap.epona.ipc.remote;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import java.util.List;
import o5.b;
import q5.a;
import w5.c;

/* JADX INFO: loaded from: classes.dex */
public class DispatcherProvider extends ContentProvider {
    private Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBinder("com.heytap.epona.Dispatcher.TRANSFER_VALUE", b.c().b(bundle.getString("com.heytap.epona.Dispatcher.TRANSFER_KEY")));
        }
        return bundle2;
    }

    private boolean b() {
        return c.e().g() || getContext().checkCallingPermission("com.oppo.permission.safe.SECURITY") == 0;
    }

    private Bundle c(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBoolean("REGISTER_TRANSFER_RESULT", b.c().e(bundle.getString("com.heytap.epona.Dispatcher.TRANSFER_KEY"), bundle.getBinder("com.heytap.epona.Dispatcher.TRANSFER_VALUE"), str));
        }
        return bundle2;
    }

    private Bundle d() {
        Bundle bundle = new Bundle();
        bundle.putString("REMOTE_SNAPSHOT", b.c().f());
        return bundle;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (!b()) {
            a.c("DispatcherProvider", "<CALL> Calling package : [" + getCallingPackage() + "] have no permission : com.oppo.permission.safe.SECURITY", new Object[0]);
            return null;
        }
        str.hashCode();
        switch (str) {
            case "com.heytap.epona.Dispatcher.REGISTER_TRANSFER":
                return c(bundle, getCallingPackage());
            case "com.heytap.epona.Dispatcher.FIND_TRANSFER":
                return a(bundle);
            case "com.heytap.epona.Dispatcher.REMOTE_SNAPSHOT":
                return d();
            default:
                return super.call(str, str2, bundle);
        }
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
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!b()) {
            a.c("DispatcherProvider", "<QUERY> Calling package : [" + getCallingPackage() + "] have no permission : com.oppo.permission.safe.SECURITY", new Object[0]);
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null || pathSegments.size() <= 0) {
            a.c("DispatcherProvider", "Could not find the uri : " + uri, new Object[0]);
        } else {
            if ("find_transfer".equals(pathSegments.get(0))) {
                Bundle bundle = new Bundle();
                if (pathSegments.size() > 1) {
                    bundle.putBinder("com.heytap.epona.Dispatcher.TRANSFER_VALUE", b.c().b(pathSegments.get(1)));
                    return m5.a.c(bundle);
                }
                a.c("DispatcherProvider", "Get ComponentName error : " + uri, new Object[0]);
                return null;
            }
            a.c("DispatcherProvider", "The path is not /find_transfer : " + pathSegments.get(0), new Object[0]);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
