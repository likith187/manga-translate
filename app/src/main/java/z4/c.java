package z4;

import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class c extends v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final w f16641b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f16642a;

    class a implements w {
        a() {
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            a aVar = null;
            if (typeToken.getRawType() == Timestamp.class) {
                return new c(dVar.p(Date.class), aVar);
            }
            return null;
        }
    }

    /* synthetic */ c(v vVar, a aVar) {
        this(vVar);
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Timestamp b(a5.a aVar) {
        Date date = (Date) this.f16642a.b(aVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void d(a5.c cVar, Timestamp timestamp) {
        this.f16642a.d(cVar, timestamp);
    }

    private c(v vVar) {
        this.f16642a = vVar;
    }
}
