package com.oplus.epona.ipc.remote;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.text.TextUtils;
import c8.a;
import com.oplus.epona.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
import x6.b;

/* JADX INFO: loaded from: classes2.dex */
public class DispatcherProvider extends ContentProvider {
    private Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBinder("com.oplus.epona.Dispatcher.TRANSFER_VALUE", b.e().d(bundle.getString("com.oplus.epona.Dispatcher.TRANSFER_KEY")));
        }
        return bundle2;
    }

    private boolean b() {
        return getContext().checkCallingPermission("com.oplus.permission.safe.SECURITY") == 0;
    }

    private Bundle c(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBoolean("REGISTER_TRANSFER_RESULT", b.e().i(bundle.getString("com.oplus.epona.Dispatcher.TRANSFER_KEY"), bundle.getBinder("com.oplus.epona.Dispatcher.TRANSFER_VALUE"), str));
        }
        return bundle2;
    }

    private Bundle d(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putBoolean("REGISTER_TRANSFER_RESULT", b.e().l(bundle.getString("com.oplus.epona.Dispatcher.TRANSFER_KEY"), str));
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (b()) {
            return TextUtils.equals(str, "com.oplus.epona.Dispatcher.FIND_TRANSFER") ? a(bundle) : TextUtils.equals(str, "com.oplus.epona.Dispatcher.REGISTER_TRANSFER") ? c(bundle, getCallingPackage()) : TextUtils.equals(str, "com.oplus.epona.Dispatcher.UNREGISTER_TRANSFER") ? d(bundle, getCallingPackage()) : super.call(str, str2, bundle);
        }
        a.d("Epona->DispatcherProvider", "<CALL> Calling package : [" + getCallingPackage() + "] have no permission : com.oplus.permission.safe.SECURITY", new Object[0]);
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            super.dump(fileDescriptor, printWriter, strArr);
            return;
        }
        com.oplus.epona.b bVarH = d.h(strArr[0]);
        if (bVarH != null) {
            bVarH.a(fileDescriptor, printWriter, strArr);
        }
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
    public Cursor query(Uri uri, String[] strArr, Bundle bundle, CancellationSignal cancellationSignal) {
        if (!b()) {
            a.d("Epona->DispatcherProvider", "<QUERY> Calling package : [" + getCallingPackage() + "] have no permission : com.oplus.permission.safe.SECURITY", new Object[0]);
            return null;
        }
        if (bundle != null) {
            Bundle bundle2 = new Bundle();
            String string = bundle.getString("com.oplus.epona.Dispatcher.QUERY_METHOD");
            Bundle bundle3 = bundle.getBundle("com.oplus.epona.Dispatcher.QUERY_EXTRA");
            if (string != null) {
                if (string.equals("com.oplus.epona.Dispatcher.REGISTER_TRANSFER")) {
                    bundle2 = c(bundle3, getCallingPackage());
                } else if (string.equals("com.oplus.epona.Dispatcher.UNREGISTER_TRANSFER")) {
                    bundle2 = d(bundle3, getCallingPackage());
                }
                return v6.a.c(bundle2);
            }
        }
        return super.query(uri, strArr, bundle, cancellationSignal);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!b()) {
            a.d("Epona->DispatcherProvider", "<QUERY> Calling package : [" + getCallingPackage() + "] have no permission : com.oplus.permission.safe.SECURITY", new Object[0]);
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments != null && pathSegments.size() > 0) {
            if ("find_transfer".equals(pathSegments.get(0))) {
                Bundle bundle = new Bundle();
                if (pathSegments.size() > 1) {
                    bundle.putBinder("com.oplus.epona.Dispatcher.TRANSFER_VALUE", b.e().d(pathSegments.get(1)));
                    return v6.a.c(bundle);
                }
                a.d("Epona->DispatcherProvider", "Get ComponentName error : " + uri, new Object[0]);
                return null;
            }
            a.d("Epona->DispatcherProvider", "The path is not /find_transfer : " + pathSegments.get(0), new Object[0]);
        } else {
            a.d("Epona->DispatcherProvider", "Could not find the uri : " + uri, new Object[0]);
        }
        return null;
    }
}
