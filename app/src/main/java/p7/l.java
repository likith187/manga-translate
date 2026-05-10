package p7;

import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.os.DeadObjectException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class l implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ContentProviderClient f15210a;

    private ContentValues l(o7.f fVar) {
        ContentValues contentValues = new ContentValues();
        for (Map.Entry entry : fVar.h().entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                contentValues.put(str, (String) value);
            } else if (value instanceof Integer) {
                contentValues.put(str, (Integer) value);
            } else if (value instanceof Long) {
                contentValues.put(str, (Long) value);
            } else if (value instanceof Boolean) {
                contentValues.put(str, (Boolean) value);
            }
        }
        return contentValues;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[Catch: all -> 0x003c, Exception -> 0x003f, DeadObjectException -> 0x0041, TRY_LEAVE, TryCatch #4 {DeadObjectException -> 0x0041, Exception -> 0x003f, blocks: (B:13:0x0031, B:16:0x0039, B:24:0x0045, B:29:0x005d), top: B:74:0x0031, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d A[Catch: all -> 0x003c, Exception -> 0x003f, DeadObjectException -> 0x0041, TRY_ENTER, TRY_LEAVE, TryCatch #4 {DeadObjectException -> 0x0041, Exception -> 0x003f, blocks: (B:13:0x0031, B:16:0x0039, B:24:0x0045, B:29:0x005d), top: B:74:0x0031, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m(android.content.Context r8, final java.lang.String r9, android.content.ContentValues r10) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p7.l.m(android.content.Context, java.lang.String, android.content.ContentValues):boolean");
    }

    public static boolean n(Context context) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("", "");
        boolean zM = m(context, "content://com.oplus.statistics.provider/support", contentValues);
        if (!zM) {
            s7.f.f("ContentProviderRecorder", new s7.g() { // from class: p7.b
                @Override // s7.g
                public final Object get() {
                    return l.x();
                }
            });
        }
        return zM;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(DeadObjectException deadObjectException) {
        return "insert DeadObjectException:" + deadObjectException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String p(Exception exc) {
        return "insert exception:" + exc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String q(String str) {
        return "cpc close: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String r() {
        return "get resolver failed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String s(String str) {
        return str + " use ContentProviderClient from cache";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String t() {
        return "get provider client failed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String u(DeadObjectException deadObjectException) {
        return "insert DeadObjectException:" + deadObjectException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String v() {
        return "get provider client failed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String w(DeadObjectException deadObjectException) {
        return "insert exception:" + deadObjectException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String x() {
        return "not support content provider";
    }

    @Override // p7.m
    public void a(Context context, o7.f fVar) {
        m(context, "content://com.oplus.statistics.provider/track_event", l(fVar));
    }
}
