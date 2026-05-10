package w4;

import com.google.gson.reflect.TypeToken;
import com.google.gson.t;
import com.google.gson.u;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final w f16054c = f(t.DOUBLE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.d f16055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f16056b;

    class a implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ u f16057a;

        a(u uVar) {
            this.f16057a = uVar;
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            a aVar = null;
            if (typeToken.getRawType() == Object.class) {
                return new j(dVar, this.f16057a, aVar);
            }
            return null;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f16058a;

        static {
            int[] iArr = new int[a5.b.values().length];
            f16058a = iArr;
            try {
                iArr[a5.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16058a[a5.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16058a[a5.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16058a[a5.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16058a[a5.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16058a[a5.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* synthetic */ j(com.google.gson.d dVar, u uVar, a aVar) {
        this(dVar, uVar);
    }

    public static w e(u uVar) {
        return uVar == t.DOUBLE ? f16054c : f(uVar);
    }

    private static w f(u uVar) {
        return new a(uVar);
    }

    private Object g(a5.a aVar, a5.b bVar) throws IOException {
        int i10 = b.f16058a[bVar.ordinal()];
        if (i10 == 3) {
            return aVar.J0();
        }
        if (i10 == 4) {
            return this.f16056b.readNumber(aVar);
        }
        if (i10 == 5) {
            return Boolean.valueOf(aVar.v0());
        }
        if (i10 == 6) {
            aVar.H0();
            return null;
        }
        throw new IllegalStateException("Unexpected token: " + bVar);
    }

    private Object h(a5.a aVar, a5.b bVar) throws IOException {
        int i10 = b.f16058a[bVar.ordinal()];
        if (i10 == 1) {
            aVar.c();
            return new ArrayList();
        }
        if (i10 != 2) {
            return null;
        }
        aVar.i();
        return new com.google.gson.internal.h();
    }

    @Override // com.google.gson.v
    public Object b(a5.a aVar) throws IOException {
        a5.b bVarL0 = aVar.L0();
        Object objH = h(aVar, bVarL0);
        if (objH == null) {
            return g(aVar, bVarL0);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.X()) {
                String strF0 = objH instanceof Map ? aVar.F0() : null;
                a5.b bVarL02 = aVar.L0();
                Object objH2 = h(aVar, bVarL02);
                boolean z10 = objH2 != null;
                if (objH2 == null) {
                    objH2 = g(aVar, bVarL02);
                }
                if (objH instanceof List) {
                    ((List) objH).add(objH2);
                } else {
                    ((Map) objH).put(strF0, objH2);
                }
                if (z10) {
                    arrayDeque.addLast(objH);
                    objH = objH2;
                }
            } else {
                if (objH instanceof List) {
                    aVar.B();
                } else {
                    aVar.D();
                }
                if (arrayDeque.isEmpty()) {
                    return objH;
                }
                objH = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.v
    public void d(a5.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.q0();
            return;
        }
        v vVarP = this.f16055a.p(obj.getClass());
        if (!(vVarP instanceof j)) {
            vVarP.d(cVar, obj);
        } else {
            cVar.v();
            cVar.D();
        }
    }

    private j(com.google.gson.d dVar, u uVar) {
        this.f16055a = dVar;
        this.f16056b = uVar;
    }
}
