package s4;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import q4.f;
import q4.g;

/* JADX INFO: loaded from: classes.dex */
final class e implements q4.e, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f15550a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15551b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JsonWriter f15552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f15553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f15554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q4.d f15555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15556g;

    e(Writer writer, Map map, Map map2, q4.d dVar, boolean z10) {
        this.f15552c = new JsonWriter(writer);
        this.f15553d = map;
        this.f15554e = map2;
        this.f15555f = dVar;
        this.f15556g = z10;
    }

    private boolean l(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private e o(String str, Object obj) throws IOException {
        q();
        this.f15552c.name(str);
        if (obj != null) {
            return f(obj, false);
        }
        this.f15552c.nullValue();
        return this;
    }

    private e p(String str, Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        q();
        this.f15552c.name(str);
        return f(obj, false);
    }

    private void q() throws IOException {
        if (!this.f15551b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        e eVar = this.f15550a;
        if (eVar != null) {
            eVar.q();
            this.f15550a.f15551b = false;
            this.f15550a = null;
            this.f15552c.endObject();
        }
    }

    @Override // q4.e
    public q4.e a(q4.c cVar, long j10) {
        return h(cVar.b(), j10);
    }

    @Override // q4.e
    public q4.e d(q4.c cVar, Object obj) {
        return i(cVar.b(), obj);
    }

    public e e(long j10) throws IOException {
        q();
        this.f15552c.value(j10);
        return this;
    }

    e f(Object obj, boolean z10) {
        if (z10 && l(obj)) {
            throw new q4.b(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        }
        if (obj == null) {
            this.f15552c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.f15552c.value((Number) obj);
            return this;
        }
        int i10 = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.f15552c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    f(it.next(), false);
                }
                this.f15552c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.f15552c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        i((String) key, entry.getValue());
                    } catch (ClassCastException e10) {
                        throw new q4.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                    }
                }
                this.f15552c.endObject();
                return this;
            }
            q4.d dVar = (q4.d) this.f15553d.get(obj.getClass());
            if (dVar != null) {
                return n(dVar, obj, z10);
            }
            f fVar = (f) this.f15554e.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return n(this.f15555f, obj, z10);
            }
            b(((Enum) obj).name());
            return this;
        }
        if (obj instanceof byte[]) {
            return k((byte[]) obj);
        }
        this.f15552c.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i10 < length) {
                this.f15552c.value(r6[i10]);
                i10++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i10 < length2) {
                e(jArr[i10]);
                i10++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i10 < length3) {
                this.f15552c.value(dArr[i10]);
                i10++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i10 < length4) {
                this.f15552c.value(zArr[i10]);
                i10++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                f(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                f(obj2, false);
            }
        }
        this.f15552c.endArray();
        return this;
    }

    @Override // q4.g
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public e b(String str) throws IOException {
        q();
        this.f15552c.value(str);
        return this;
    }

    public e h(String str, long j10) throws IOException {
        q();
        this.f15552c.name(str);
        return e(j10);
    }

    public e i(String str, Object obj) {
        return this.f15556g ? p(str, obj) : o(str, obj);
    }

    @Override // q4.g
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public e c(boolean z10) throws IOException {
        q();
        this.f15552c.value(z10);
        return this;
    }

    public e k(byte[] bArr) throws IOException {
        q();
        if (bArr == null) {
            this.f15552c.nullValue();
        } else {
            this.f15552c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    void m() {
        q();
        this.f15552c.flush();
    }

    e n(q4.d dVar, Object obj, boolean z10) throws IOException {
        if (!z10) {
            this.f15552c.beginObject();
        }
        dVar.a(obj, this);
        if (!z10) {
            this.f15552c.endObject();
        }
        return this;
    }
}
