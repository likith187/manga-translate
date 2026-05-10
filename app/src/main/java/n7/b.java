package n7;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Uri f14080a = Uri.parse("content://com.oplus.atom.db_sys/atom_delegate");

    private static void b(final Context context, final o7.f fVar) {
        if (fVar == null || context == null) {
            s7.f.a("AtomAgent", new s7.g() { // from class: n7.a
                @Override // s7.g
                public final Object get() {
                    return b.c(fVar, context);
                }
            });
            return;
        }
        o7.c cVar = (o7.c) fVar;
        ContentValues contentValues = new ContentValues();
        contentValues.put("appId", Integer.valueOf(cVar.l()));
        contentValues.put("appPackage", s7.d.e(context));
        contentValues.put("logTag", cVar.o());
        contentValues.put("eventID", cVar.m());
        contentValues.put("logMap", cVar.n());
        try {
            context.getContentResolver().insert(f14080a, contentValues);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String c(o7.f fVar, Context context) {
        return "AtomAgent add Task error -- bean or context is null--" + fVar + "," + context;
    }

    public static void d(Context context, o7.c cVar) {
        b(context, cVar);
    }
}
