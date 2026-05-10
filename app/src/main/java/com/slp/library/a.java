package com.slp.library;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends ContentProvider {
    private static boolean isLoad = false;

    @Deprecated
    private native void a();

    static native void e(boolean z10);

    public static native byte[] ea(int i10, byte[] bArr, String str, String str2);

    public static native byte[] er(int i10, byte[] bArr);

    public static native int ev(String str, String str2, int i10);

    static native boolean ex();

    private static synchronized void load() {
        if (isLoad) {
            return;
        }
        isLoad = true;
        System.loadLibrary("SlpBase");
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
        Boolean asBoolean;
        if (contentValues != null && (asBoolean = contentValues.getAsBoolean("slp")) != null && asBoolean.booleanValue()) {
            SlpContextWrapper slpContextWrapper = new SlpContextWrapper(getContext());
            try {
                load();
                ApplicationInfo applicationInfo = slpContextWrapper.getPackageManager().getApplicationInfo(slpContextWrapper.getPackageName(), 128);
                String string = applicationInfo.metaData.getString("SLP_APPKEY");
                String string2 = applicationInfo.metaData.getString("SLP_CODE");
                String string3 = applicationInfo.metaData.getString("SLP_SECRETKEY");
                boolean z10 = !applicationInfo.metaData.containsKey("SLP_IS_ONLINE") || applicationInfo.metaData.getBoolean("SLP_IS_ONLINE");
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string3) || TextUtils.isEmpty(string2)) {
                    throw new Exception("Manifest meta-data is Empty!");
                }
                a();
                e(z10);
                return new Uri.Builder().appendQueryParameter("a", string).appendQueryParameter("b", string3).appendQueryParameter("c", string2).build();
            } catch (Throwable th) {
                th.printStackTrace();
                Log.e("SDK-SLP", "SLP Init Error! :: " + th.getMessage());
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
