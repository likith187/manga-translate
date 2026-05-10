package w4;

import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.t;
import com.google.gson.u;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class i extends v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final w f16050b = f(t.LAZILY_PARSED_NUMBER);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f16051a;

    class a implements w {
        a() {
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            if (typeToken.getRawType() == Number.class) {
                return i.this;
            }
            return null;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f16053a;

        static {
            int[] iArr = new int[a5.b.values().length];
            f16053a = iArr;
            try {
                iArr[a5.b.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16053a[a5.b.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16053a[a5.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private i(u uVar) {
        this.f16051a = uVar;
    }

    public static w e(u uVar) {
        return uVar == t.LAZILY_PARSED_NUMBER ? f16050b : f(uVar);
    }

    private static w f(u uVar) {
        return new i(uVar).new a();
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Number b(a5.a aVar) throws IOException {
        a5.b bVarL0 = aVar.L0();
        int i10 = b.f16053a[bVarL0.ordinal()];
        if (i10 == 1) {
            aVar.H0();
            return null;
        }
        if (i10 == 2 || i10 == 3) {
            return this.f16051a.readNumber(aVar);
        }
        throw new q("Expecting number, got: " + bVarL0 + "; at path " + aVar.a());
    }

    @Override // com.google.gson.v
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void d(a5.c cVar, Number number) throws IOException {
        cVar.N0(number);
    }
}
