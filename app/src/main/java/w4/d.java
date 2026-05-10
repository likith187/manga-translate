package w4;

import com.google.gson.q;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f16027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f16028b;

    public static abstract class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f16029b = new a(Date.class);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class f16030a;

        class a extends b {
            a(Class cls) {
                super(cls);
            }

            @Override // w4.d.b
            protected Date d(Date date) {
                return date;
            }
        }

        protected b(Class cls) {
            this.f16030a = cls;
        }

        private w c(d dVar) {
            return o.b(this.f16030a, dVar);
        }

        public final w a(int i10, int i11) {
            return c(new d(this, i10, i11));
        }

        public final w b(String str) {
            return c(new d(this, str));
        }

        protected abstract Date d(Date date);
    }

    private Date e(a5.a aVar) throws IOException {
        String strJ0 = aVar.J0();
        synchronized (this.f16028b) {
            try {
                Iterator it = this.f16028b.iterator();
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
        if (aVar.L0() == a5.b.NULL) {
            aVar.H0();
            return null;
        }
        return this.f16027a.d(e(aVar));
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void d(a5.c cVar, Date date) throws IOException {
        String str;
        if (date == null) {
            cVar.q0();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f16028b.get(0);
        synchronized (this.f16028b) {
            str = dateFormat.format(date);
        }
        cVar.O0(str);
    }

    public String toString() {
        DateFormat dateFormat = (DateFormat) this.f16028b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    private d(b bVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.f16028b = arrayList;
        Objects.requireNonNull(bVar);
        this.f16027a = bVar;
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    private d(b bVar, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f16028b = arrayList;
        Objects.requireNonNull(bVar);
        this.f16027a = bVar;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i10, i11, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i10, i11));
        }
        if (com.google.gson.internal.e.d()) {
            arrayList.add(com.google.gson.internal.j.c(i10, i11));
        }
    }
}
