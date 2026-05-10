package com.coloros.translate;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class BreenoAbilityProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4717a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String str, Bundle bundle) {
        r.e(method, "method");
        c0.f7098a.i("BreenoAbilityProvider", "call method : " + method);
        if (!r.a(method, "open_screen_translation")) {
            return null;
        }
        com.coloros.translate.ui.a.d(TranslationApplication.f4754b.a(), "com.heytap.speechassist");
        Bundle bundle2 = new Bundle();
        bundle2.putInt("apiproxy_biz_code", 0);
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        r.e(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        r.e(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        r.e(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        r.e(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        r.e(uri, "uri");
        return 0;
    }
}
