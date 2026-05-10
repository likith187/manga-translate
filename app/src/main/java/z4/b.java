package z4;

import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
final class b extends v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final w f16639b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f16640a;

    class a implements w {
        a() {
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            a aVar = null;
            if (rawType == Time.class) {
                return new b(aVar);
            }
            return null;
        }
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Time b(a5.a aVar) throws IOException {
        Time time;
        if (aVar.L0() == a5.b.NULL) {
            aVar.H0();
            return null;
        }
        String strJ0 = aVar.J0();
        try {
            synchronized (this) {
                time = new Time(this.f16640a.parse(strJ0).getTime());
            }
            return time;
        } catch (ParseException e10) {
            throw new q("Failed parsing '" + strJ0 + "' as SQL Time; at path " + aVar.N(), e10);
        }
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void d(a5.c cVar, Time time) throws IOException {
        String str;
        if (time == null) {
            cVar.q0();
            return;
        }
        synchronized (this) {
            str = this.f16640a.format((Date) time);
        }
        cVar.O0(str);
    }

    private b() {
        this.f16640a = new SimpleDateFormat("hh:mm:ss a");
    }
}
