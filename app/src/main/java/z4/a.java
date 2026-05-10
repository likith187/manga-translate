package z4;

import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes.dex */
final class a extends v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final w f16637b = new C0248a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f16638a;

    /* JADX INFO: renamed from: z4.a$a, reason: collision with other inner class name */
    class C0248a implements w {
        C0248a() {
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            C0248a c0248a = null;
            if (rawType == Date.class) {
                return new a(c0248a);
            }
            return null;
        }
    }

    /* synthetic */ a(C0248a c0248a) {
        this();
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Date b(a5.a aVar) throws IOException {
        java.util.Date date;
        if (aVar.L0() == a5.b.NULL) {
            aVar.H0();
            return null;
        }
        String strJ0 = aVar.J0();
        try {
            synchronized (this) {
                date = this.f16638a.parse(strJ0);
            }
            return new Date(date.getTime());
        } catch (ParseException e10) {
            throw new q("Failed parsing '" + strJ0 + "' as SQL Date; at path " + aVar.N(), e10);
        }
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void d(a5.c cVar, Date date) throws IOException {
        String str;
        if (date == null) {
            cVar.q0();
            return;
        }
        synchronized (this) {
            str = this.f16638a.format((java.util.Date) date);
        }
        cVar.O0(str);
    }

    private a() {
        this.f16638a = new SimpleDateFormat("MMM d, yyyy");
    }
}
