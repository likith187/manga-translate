package w4;

import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class c extends v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w f16025b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f16026a;

    class a implements w {
        a() {
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            if (typeToken.getRawType() == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f16026a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (com.google.gson.internal.e.d()) {
            arrayList.add(com.google.gson.internal.j.c(2, 2));
        }
    }

    private Date e(a5.a aVar) throws IOException {
        String strJ0 = aVar.J0();
        synchronized (this.f16026a) {
            try {
                Iterator it = this.f16026a.iterator();
                while (it.hasNext()) {
                    try {
                        return ((DateFormat) it.next()).parse(strJ0);
                    } catch (ParseException unused) {
                    }
                }
                try {
                    return x4.a.c(strJ0, new ParsePosition(0));
                } catch (ParseException e10) {
                    throw new q("Failed parsing '" + strJ0 + "' as Date; at path " + aVar.N(), e10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Date b(a5.a aVar) throws IOException {
        if (aVar.L0() != a5.b.NULL) {
            return e(aVar);
        }
        aVar.H0();
        return null;
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void d(a5.c cVar, Date date) throws IOException {
        String str;
        if (date == null) {
            cVar.q0();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f16026a.get(0);
        synchronized (this.f16026a) {
            str = dateFormat.format(date);
        }
        cVar.O0(str);
    }
}
