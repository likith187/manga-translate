package z4;

import com.google.gson.w;
import java.sql.Date;
import java.sql.Timestamp;
import w4.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f16643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d.b f16644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d.b f16645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w f16646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final w f16647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final w f16648f;

    class a extends d.b {
        a(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // w4.d.b
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Date d(java.util.Date date) {
            return new Date(date.getTime());
        }
    }

    class b extends d.b {
        b(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // w4.d.b
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Timestamp d(java.util.Date date) {
            return new Timestamp(date.getTime());
        }
    }

    static {
        boolean z10;
        try {
            Class.forName("java.sql.Date");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f16643a = z10;
        if (z10) {
            f16644b = new a(Date.class);
            f16645c = new b(Timestamp.class);
            f16646d = z4.a.f16637b;
            f16647e = z4.b.f16639b;
            f16648f = c.f16641b;
            return;
        }
        f16644b = null;
        f16645c = null;
        f16646d = null;
        f16647e = null;
        f16648f = null;
    }
}
