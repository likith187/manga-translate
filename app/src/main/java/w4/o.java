package w4;

import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {
    public static final com.google.gson.v A;
    public static final com.google.gson.v B;
    public static final com.google.gson.w C;
    public static final com.google.gson.v D;
    public static final com.google.gson.w E;
    public static final com.google.gson.v F;
    public static final com.google.gson.w G;
    public static final com.google.gson.v H;
    public static final com.google.gson.w I;
    public static final com.google.gson.v J;
    public static final com.google.gson.w K;
    public static final com.google.gson.v L;
    public static final com.google.gson.w M;
    public static final com.google.gson.v N;
    public static final com.google.gson.w O;
    public static final com.google.gson.v P;
    public static final com.google.gson.w Q;
    public static final com.google.gson.v R;
    public static final com.google.gson.w S;
    public static final com.google.gson.v T;
    public static final com.google.gson.w U;
    public static final com.google.gson.v V;
    public static final com.google.gson.w W;
    public static final com.google.gson.w X;

    /* JADX INFO: renamed from: a */
    public static final com.google.gson.v f16099a;

    /* JADX INFO: renamed from: b */
    public static final com.google.gson.w f16100b;

    /* JADX INFO: renamed from: c */
    public static final com.google.gson.v f16101c;

    /* JADX INFO: renamed from: d */
    public static final com.google.gson.w f16102d;

    /* JADX INFO: renamed from: e */
    public static final com.google.gson.v f16103e;

    /* JADX INFO: renamed from: f */
    public static final com.google.gson.v f16104f;

    /* JADX INFO: renamed from: g */
    public static final com.google.gson.w f16105g;

    /* JADX INFO: renamed from: h */
    public static final com.google.gson.v f16106h;

    /* JADX INFO: renamed from: i */
    public static final com.google.gson.w f16107i;

    /* JADX INFO: renamed from: j */
    public static final com.google.gson.v f16108j;

    /* JADX INFO: renamed from: k */
    public static final com.google.gson.w f16109k;

    /* JADX INFO: renamed from: l */
    public static final com.google.gson.v f16110l;

    /* JADX INFO: renamed from: m */
    public static final com.google.gson.w f16111m;

    /* JADX INFO: renamed from: n */
    public static final com.google.gson.v f16112n;

    /* JADX INFO: renamed from: o */
    public static final com.google.gson.w f16113o;

    /* JADX INFO: renamed from: p */
    public static final com.google.gson.v f16114p;

    /* JADX INFO: renamed from: q */
    public static final com.google.gson.w f16115q;

    /* JADX INFO: renamed from: r */
    public static final com.google.gson.v f16116r;

    /* JADX INFO: renamed from: s */
    public static final com.google.gson.w f16117s;

    /* JADX INFO: renamed from: t */
    public static final com.google.gson.v f16118t;

    /* JADX INFO: renamed from: u */
    public static final com.google.gson.v f16119u;

    /* JADX INFO: renamed from: v */
    public static final com.google.gson.v f16120v;

    /* JADX INFO: renamed from: w */
    public static final com.google.gson.v f16121w;

    /* JADX INFO: renamed from: x */
    public static final com.google.gson.w f16122x;

    /* JADX INFO: renamed from: y */
    public static final com.google.gson.v f16123y;

    /* JADX INFO: renamed from: z */
    public static final com.google.gson.v f16124z;

    class a extends com.google.gson.v {
        a() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public AtomicIntegerArray b(a5.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.c();
            while (aVar.X()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.D0()));
                } catch (NumberFormatException e10) {
                    throw new com.google.gson.q(e10);
                }
            }
            aVar.B();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            cVar.k();
            int length = atomicIntegerArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                cVar.L0(atomicIntegerArray.get(i10));
            }
            cVar.B();
        }
    }

    class a0 implements com.google.gson.w {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Class f16125a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ com.google.gson.v f16126b;

        class a extends com.google.gson.v {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ Class f16127a;

            a(Class cls) {
                this.f16127a = cls;
            }

            @Override // com.google.gson.v
            public Object b(a5.a aVar) {
                Object objB = a0.this.f16126b.b(aVar);
                if (objB == null || this.f16127a.isInstance(objB)) {
                    return objB;
                }
                throw new com.google.gson.q("Expected a " + this.f16127a.getName() + " but was " + objB.getClass().getName() + "; at path " + aVar.N());
            }

            @Override // com.google.gson.v
            public void d(a5.c cVar, Object obj) {
                a0.this.f16126b.d(cVar, obj);
            }
        }

        a0(Class cls, com.google.gson.v vVar) {
            this.f16125a = cls;
            this.f16126b = vVar;
        }

        @Override // com.google.gson.w
        public com.google.gson.v a(com.google.gson.d dVar, TypeToken typeToken) {
            Class<?> rawType = typeToken.getRawType();
            if (this.f16125a.isAssignableFrom(rawType)) {
                return new a(rawType);
            }
            return null;
        }

        public String toString() {
            return "Factory[typeHierarchy=" + this.f16125a.getName() + ",adapter=" + this.f16126b + "]";
        }
    }

    class b extends com.google.gson.v {
        b() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            try {
                return Long.valueOf(aVar.E0());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
            } else {
                cVar.L0(number.longValue());
            }
        }
    }

    static /* synthetic */ class b0 {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f16129a;

        static {
            int[] iArr = new int[a5.b.values().length];
            f16129a = iArr;
            try {
                iArr[a5.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16129a[a5.b.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16129a[a5.b.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16129a[a5.b.BEGIN_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16129a[a5.b.BEGIN_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16129a[a5.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    class c extends com.google.gson.v {
        c() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return Float.valueOf((float) aVar.x0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
                return;
            }
            if (!(number instanceof Float)) {
                number = Float.valueOf(number.floatValue());
            }
            cVar.N0(number);
        }
    }

    class c0 extends com.google.gson.v {
        c0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Boolean b(a5.a aVar) throws IOException {
            a5.b bVarL0 = aVar.L0();
            if (bVarL0 != a5.b.NULL) {
                return bVarL0 == a5.b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.J0())) : Boolean.valueOf(aVar.v0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Boolean bool) throws IOException {
            cVar.M0(bool);
        }
    }

    class d extends com.google.gson.v {
        d() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return Double.valueOf(aVar.x0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
            } else {
                cVar.K0(number.doubleValue());
            }
        }
    }

    class d0 extends com.google.gson.v {
        d0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Boolean b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return Boolean.valueOf(aVar.J0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Boolean bool) throws IOException {
            cVar.O0(bool == null ? AbstractJsonLexerKt.NULL : bool.toString());
        }
    }

    class e extends com.google.gson.v {
        e() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Character b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            String strJ0 = aVar.J0();
            if (strJ0.length() == 1) {
                return Character.valueOf(strJ0.charAt(0));
            }
            throw new com.google.gson.q("Expecting character, got: " + strJ0 + "; at " + aVar.N());
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Character ch) throws IOException {
            cVar.O0(ch == null ? null : String.valueOf(ch));
        }
    }

    class e0 extends com.google.gson.v {
        e0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            try {
                int iD0 = aVar.D0();
                if (iD0 <= 255 && iD0 >= -128) {
                    return Byte.valueOf((byte) iD0);
                }
                throw new com.google.gson.q("Lossy conversion from " + iD0 + " to byte; at path " + aVar.N());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
            } else {
                cVar.L0(number.byteValue());
            }
        }
    }

    class f extends com.google.gson.v {
        f() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public String b(a5.a aVar) throws IOException {
            a5.b bVarL0 = aVar.L0();
            if (bVarL0 != a5.b.NULL) {
                return bVarL0 == a5.b.BOOLEAN ? Boolean.toString(aVar.v0()) : aVar.J0();
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, String str) throws IOException {
            cVar.O0(str);
        }
    }

    class f0 extends com.google.gson.v {
        f0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            try {
                int iD0 = aVar.D0();
                if (iD0 <= 65535 && iD0 >= -32768) {
                    return Short.valueOf((short) iD0);
                }
                throw new com.google.gson.q("Lossy conversion from " + iD0 + " to short; at path " + aVar.N());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
            } else {
                cVar.L0(number.shortValue());
            }
        }
    }

    class g extends com.google.gson.v {
        g() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public BigDecimal b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            String strJ0 = aVar.J0();
            try {
                return new BigDecimal(strJ0);
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q("Failed parsing '" + strJ0 + "' as BigDecimal; at path " + aVar.N(), e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.N0(bigDecimal);
        }
    }

    class g0 extends com.google.gson.v {
        g0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            try {
                return Integer.valueOf(aVar.D0());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
            } else {
                cVar.L0(number.intValue());
            }
        }
    }

    class h extends com.google.gson.v {
        h() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public BigInteger b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            String strJ0 = aVar.J0();
            try {
                return new BigInteger(strJ0);
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q("Failed parsing '" + strJ0 + "' as BigInteger; at path " + aVar.N(), e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, BigInteger bigInteger) throws IOException {
            cVar.N0(bigInteger);
        }
    }

    class h0 extends com.google.gson.v {
        h0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public AtomicInteger b(a5.a aVar) {
            try {
                return new AtomicInteger(aVar.D0());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.q(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, AtomicInteger atomicInteger) throws IOException {
            cVar.L0(atomicInteger.get());
        }
    }

    class i extends com.google.gson.v {
        i() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public com.google.gson.internal.g b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return new com.google.gson.internal.g(aVar.J0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, com.google.gson.internal.g gVar) throws IOException {
            cVar.N0(gVar);
        }
    }

    class i0 extends com.google.gson.v {
        i0() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public AtomicBoolean b(a5.a aVar) {
            return new AtomicBoolean(aVar.v0());
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, AtomicBoolean atomicBoolean) throws IOException {
            cVar.P0(atomicBoolean.get());
        }
    }

    class j extends com.google.gson.v {
        j() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public StringBuilder b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return new StringBuilder(aVar.J0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, StringBuilder sb) throws IOException {
            cVar.O0(sb == null ? null : sb.toString());
        }
    }

    private static final class j0 extends com.google.gson.v {

        /* JADX INFO: renamed from: a */
        private final Map f16130a = new HashMap();

        /* JADX INFO: renamed from: b */
        private final Map f16131b = new HashMap();

        /* JADX INFO: renamed from: c */
        private final Map f16132c = new HashMap();

        class a implements PrivilegedAction {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ Class f16133a;

            a(Class cls) {
                this.f16133a = cls;
            }

            @Override // java.security.PrivilegedAction
            /* JADX INFO: renamed from: a */
            public Field[] run() {
                Field[] declaredFields = this.f16133a.getDeclaredFields();
                ArrayList arrayList = new ArrayList(declaredFields.length);
                for (Field field : declaredFields) {
                    if (field.isEnumConstant()) {
                        arrayList.add(field);
                    }
                }
                Field[] fieldArr = (Field[]) arrayList.toArray(new Field[0]);
                AccessibleObject.setAccessible(fieldArr, true);
                return fieldArr;
            }
        }

        public j0(Class cls) {
            try {
                for (Field field : (Field[]) AccessController.doPrivileged(new a(cls))) {
                    Enum r42 = (Enum) field.get(null);
                    String strName = r42.name();
                    String string = r42.toString();
                    v4.c cVar = (v4.c) field.getAnnotation(v4.c.class);
                    if (cVar != null) {
                        strName = cVar.value();
                        for (String str : cVar.alternate()) {
                            this.f16130a.put(str, r42);
                        }
                    }
                    this.f16130a.put(strName, r42);
                    this.f16131b.put(string, r42);
                    this.f16132c.put(r42, strName);
                }
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Enum b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            String strJ0 = aVar.J0();
            Enum r02 = (Enum) this.f16130a.get(strJ0);
            return r02 == null ? (Enum) this.f16131b.get(strJ0) : r02;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Enum r22) throws IOException {
            cVar.O0(r22 == null ? null : (String) this.f16132c.get(r22));
        }
    }

    class k extends com.google.gson.v {
        k() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Class b(a5.a aVar) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Class cls) {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    class l extends com.google.gson.v {
        l() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public StringBuffer b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return new StringBuffer(aVar.J0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, StringBuffer stringBuffer) throws IOException {
            cVar.O0(stringBuffer == null ? null : stringBuffer.toString());
        }
    }

    class m extends com.google.gson.v {
        m() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public URL b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            String strJ0 = aVar.J0();
            if (AbstractJsonLexerKt.NULL.equals(strJ0)) {
                return null;
            }
            return new URL(strJ0);
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, URL url) throws IOException {
            cVar.O0(url == null ? null : url.toExternalForm());
        }
    }

    class n extends com.google.gson.v {
        n() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public URI b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            try {
                String strJ0 = aVar.J0();
                if (AbstractJsonLexerKt.NULL.equals(strJ0)) {
                    return null;
                }
                return new URI(strJ0);
            } catch (URISyntaxException e10) {
                throw new com.google.gson.j(e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, URI uri) throws IOException {
            cVar.O0(uri == null ? null : uri.toASCIIString());
        }
    }

    /* JADX INFO: renamed from: w4.o$o */
    class C0235o extends com.google.gson.v {
        C0235o() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public InetAddress b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return InetAddress.getByName(aVar.J0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, InetAddress inetAddress) throws IOException {
            cVar.O0(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    }

    class p extends com.google.gson.v {
        p() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public UUID b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            String strJ0 = aVar.J0();
            try {
                return UUID.fromString(strJ0);
            } catch (IllegalArgumentException e10) {
                throw new com.google.gson.q("Failed parsing '" + strJ0 + "' as UUID; at path " + aVar.N(), e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, UUID uuid) throws IOException {
            cVar.O0(uuid == null ? null : uuid.toString());
        }
    }

    class q extends com.google.gson.v {
        q() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Currency b(a5.a aVar) throws IOException {
            String strJ0 = aVar.J0();
            try {
                return Currency.getInstance(strJ0);
            } catch (IllegalArgumentException e10) {
                throw new com.google.gson.q("Failed parsing '" + strJ0 + "' as Currency; at path " + aVar.N(), e10);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Currency currency) throws IOException {
            cVar.O0(currency.getCurrencyCode());
        }
    }

    class r extends com.google.gson.v {
        r() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Calendar b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            aVar.i();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (aVar.L0() != a5.b.END_OBJECT) {
                String strF0 = aVar.F0();
                int iD0 = aVar.D0();
                if ("year".equals(strF0)) {
                    i10 = iD0;
                } else if ("month".equals(strF0)) {
                    i11 = iD0;
                } else if ("dayOfMonth".equals(strF0)) {
                    i12 = iD0;
                } else if ("hourOfDay".equals(strF0)) {
                    i13 = iD0;
                } else if ("minute".equals(strF0)) {
                    i14 = iD0;
                } else if ("second".equals(strF0)) {
                    i15 = iD0;
                }
            }
            aVar.D();
            return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                cVar.q0();
                return;
            }
            cVar.v();
            cVar.a0("year");
            cVar.L0(calendar.get(1));
            cVar.a0("month");
            cVar.L0(calendar.get(2));
            cVar.a0("dayOfMonth");
            cVar.L0(calendar.get(5));
            cVar.a0("hourOfDay");
            cVar.L0(calendar.get(11));
            cVar.a0("minute");
            cVar.L0(calendar.get(12));
            cVar.a0("second");
            cVar.L0(calendar.get(13));
            cVar.D();
        }
    }

    class s extends com.google.gson.v {
        s() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Locale b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.J0(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (strNextToken2 == null && strNextToken3 == null) ? new Locale(strNextToken) : strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Locale locale) throws IOException {
            cVar.O0(locale == null ? null : locale.toString());
        }
    }

    class t extends com.google.gson.v {
        t() {
        }

        private com.google.gson.i f(a5.a aVar, a5.b bVar) throws IOException {
            int i10 = b0.f16129a[bVar.ordinal()];
            if (i10 == 1) {
                return new com.google.gson.o(new com.google.gson.internal.g(aVar.J0()));
            }
            if (i10 == 2) {
                return new com.google.gson.o(aVar.J0());
            }
            if (i10 == 3) {
                return new com.google.gson.o(Boolean.valueOf(aVar.v0()));
            }
            if (i10 == 6) {
                aVar.H0();
                return com.google.gson.k.INSTANCE;
            }
            throw new IllegalStateException("Unexpected token: " + bVar);
        }

        private com.google.gson.i g(a5.a aVar, a5.b bVar) throws IOException {
            int i10 = b0.f16129a[bVar.ordinal()];
            if (i10 == 4) {
                aVar.c();
                return new com.google.gson.f();
            }
            if (i10 != 5) {
                return null;
            }
            aVar.i();
            return new com.google.gson.l();
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public com.google.gson.i b(a5.a aVar) throws IOException {
            if (aVar instanceof w4.f) {
                return ((w4.f) aVar).Y0();
            }
            a5.b bVarL0 = aVar.L0();
            com.google.gson.i iVarG = g(aVar, bVarL0);
            if (iVarG == null) {
                return f(aVar, bVarL0);
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            while (true) {
                if (aVar.X()) {
                    String strF0 = iVarG instanceof com.google.gson.l ? aVar.F0() : null;
                    a5.b bVarL02 = aVar.L0();
                    com.google.gson.i iVarG2 = g(aVar, bVarL02);
                    boolean z10 = iVarG2 != null;
                    if (iVarG2 == null) {
                        iVarG2 = f(aVar, bVarL02);
                    }
                    if (iVarG instanceof com.google.gson.f) {
                        ((com.google.gson.f) iVarG).m(iVarG2);
                    } else {
                        ((com.google.gson.l) iVarG).m(strF0, iVarG2);
                    }
                    if (z10) {
                        arrayDeque.addLast(iVarG);
                        iVarG = iVarG2;
                    }
                } else {
                    if (iVarG instanceof com.google.gson.f) {
                        aVar.B();
                    } else {
                        aVar.D();
                    }
                    if (arrayDeque.isEmpty()) {
                        return iVarG;
                    }
                    iVarG = (com.google.gson.i) arrayDeque.removeLast();
                }
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: h */
        public void d(a5.c cVar, com.google.gson.i iVar) throws IOException {
            if (iVar == null || iVar.j()) {
                cVar.q0();
                return;
            }
            if (iVar.l()) {
                com.google.gson.o oVarF = iVar.f();
                if (oVarF.p()) {
                    cVar.N0(oVarF.m());
                    return;
                } else if (oVarF.n()) {
                    cVar.P0(oVarF.a());
                    return;
                } else {
                    cVar.O0(oVarF.h());
                    return;
                }
            }
            if (iVar.i()) {
                cVar.k();
                Iterator it = iVar.d().iterator();
                while (it.hasNext()) {
                    d(cVar, (com.google.gson.i) it.next());
                }
                cVar.B();
                return;
            }
            if (!iVar.k()) {
                throw new IllegalArgumentException("Couldn't write " + iVar.getClass());
            }
            cVar.v();
            for (Map.Entry entry : iVar.e().o()) {
                cVar.a0((String) entry.getKey());
                d(cVar, (com.google.gson.i) entry.getValue());
            }
            cVar.D();
        }
    }

    class u implements com.google.gson.w {
        u() {
        }

        @Override // com.google.gson.w
        public com.google.gson.v a(com.google.gson.d dVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            if (!rawType.isEnum()) {
                rawType = rawType.getSuperclass();
            }
            return new j0(rawType);
        }
    }

    class v extends com.google.gson.v {
        v() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public BitSet b(a5.a aVar) throws IOException {
            BitSet bitSet = new BitSet();
            aVar.c();
            a5.b bVarL0 = aVar.L0();
            int i10 = 0;
            while (bVarL0 != a5.b.END_ARRAY) {
                int i11 = b0.f16129a[bVarL0.ordinal()];
                boolean zV0 = true;
                if (i11 == 1 || i11 == 2) {
                    int iD0 = aVar.D0();
                    if (iD0 == 0) {
                        zV0 = false;
                    } else if (iD0 != 1) {
                        throw new com.google.gson.q("Invalid bitset value " + iD0 + ", expected 0 or 1; at path " + aVar.N());
                    }
                } else {
                    if (i11 != 3) {
                        throw new com.google.gson.q("Invalid bitset value type: " + bVarL0 + "; at path " + aVar.a());
                    }
                    zV0 = aVar.v0();
                }
                if (zV0) {
                    bitSet.set(i10);
                }
                i10++;
                bVarL0 = aVar.L0();
            }
            aVar.B();
            return bitSet;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, BitSet bitSet) throws IOException {
            cVar.k();
            int length = bitSet.length();
            for (int i10 = 0; i10 < length; i10++) {
                cVar.L0(bitSet.get(i10) ? 1L : 0L);
            }
            cVar.B();
        }
    }

    class w implements com.google.gson.w {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ TypeToken f16135a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ com.google.gson.v f16136b;

        w(TypeToken typeToken, com.google.gson.v vVar) {
            this.f16135a = typeToken;
            this.f16136b = vVar;
        }

        @Override // com.google.gson.w
        public com.google.gson.v a(com.google.gson.d dVar, TypeToken typeToken) {
            if (typeToken.equals(this.f16135a)) {
                return this.f16136b;
            }
            return null;
        }
    }

    class x implements com.google.gson.w {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Class f16137a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ com.google.gson.v f16138b;

        x(Class cls, com.google.gson.v vVar) {
            this.f16137a = cls;
            this.f16138b = vVar;
        }

        @Override // com.google.gson.w
        public com.google.gson.v a(com.google.gson.d dVar, TypeToken typeToken) {
            if (typeToken.getRawType() == this.f16137a) {
                return this.f16138b;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f16137a.getName() + ",adapter=" + this.f16138b + "]";
        }
    }

    class y implements com.google.gson.w {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Class f16139a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Class f16140b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ com.google.gson.v f16141c;

        y(Class cls, Class cls2, com.google.gson.v vVar) {
            this.f16139a = cls;
            this.f16140b = cls2;
            this.f16141c = vVar;
        }

        @Override // com.google.gson.w
        public com.google.gson.v a(com.google.gson.d dVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            if (rawType == this.f16139a || rawType == this.f16140b) {
                return this.f16141c;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f16140b.getName() + "+" + this.f16139a.getName() + ",adapter=" + this.f16141c + "]";
        }
    }

    class z implements com.google.gson.w {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Class f16142a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Class f16143b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ com.google.gson.v f16144c;

        z(Class cls, Class cls2, com.google.gson.v vVar) {
            this.f16142a = cls;
            this.f16143b = cls2;
            this.f16144c = vVar;
        }

        @Override // com.google.gson.w
        public com.google.gson.v a(com.google.gson.d dVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            if (rawType == this.f16142a || rawType == this.f16143b) {
                return this.f16144c;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f16142a.getName() + "+" + this.f16143b.getName() + ",adapter=" + this.f16144c + "]";
        }
    }

    static {
        com.google.gson.v vVarA = new k().a();
        f16099a = vVarA;
        f16100b = b(Class.class, vVarA);
        com.google.gson.v vVarA2 = new v().a();
        f16101c = vVarA2;
        f16102d = b(BitSet.class, vVarA2);
        c0 c0Var = new c0();
        f16103e = c0Var;
        f16104f = new d0();
        f16105g = c(Boolean.TYPE, Boolean.class, c0Var);
        e0 e0Var = new e0();
        f16106h = e0Var;
        f16107i = c(Byte.TYPE, Byte.class, e0Var);
        f0 f0Var = new f0();
        f16108j = f0Var;
        f16109k = c(Short.TYPE, Short.class, f0Var);
        g0 g0Var = new g0();
        f16110l = g0Var;
        f16111m = c(Integer.TYPE, Integer.class, g0Var);
        com.google.gson.v vVarA3 = new h0().a();
        f16112n = vVarA3;
        f16113o = b(AtomicInteger.class, vVarA3);
        com.google.gson.v vVarA4 = new i0().a();
        f16114p = vVarA4;
        f16115q = b(AtomicBoolean.class, vVarA4);
        com.google.gson.v vVarA5 = new a().a();
        f16116r = vVarA5;
        f16117s = b(AtomicIntegerArray.class, vVarA5);
        f16118t = new b();
        f16119u = new c();
        f16120v = new d();
        e eVar = new e();
        f16121w = eVar;
        f16122x = c(Character.TYPE, Character.class, eVar);
        f fVar = new f();
        f16123y = fVar;
        f16124z = new g();
        A = new h();
        B = new i();
        C = b(String.class, fVar);
        j jVar = new j();
        D = jVar;
        E = b(StringBuilder.class, jVar);
        l lVar = new l();
        F = lVar;
        G = b(StringBuffer.class, lVar);
        m mVar = new m();
        H = mVar;
        I = b(URL.class, mVar);
        n nVar = new n();
        J = nVar;
        K = b(URI.class, nVar);
        C0235o c0235o = new C0235o();
        L = c0235o;
        M = e(InetAddress.class, c0235o);
        p pVar = new p();
        N = pVar;
        O = b(UUID.class, pVar);
        com.google.gson.v vVarA6 = new q().a();
        P = vVarA6;
        Q = b(Currency.class, vVarA6);
        r rVar = new r();
        R = rVar;
        S = d(Calendar.class, GregorianCalendar.class, rVar);
        s sVar = new s();
        T = sVar;
        U = b(Locale.class, sVar);
        t tVar = new t();
        V = tVar;
        W = e(com.google.gson.i.class, tVar);
        X = new u();
    }

    public static com.google.gson.w a(TypeToken typeToken, com.google.gson.v vVar) {
        return new w(typeToken, vVar);
    }

    public static com.google.gson.w b(Class cls, com.google.gson.v vVar) {
        return new x(cls, vVar);
    }

    public static com.google.gson.w c(Class cls, Class cls2, com.google.gson.v vVar) {
        return new y(cls, cls2, vVar);
    }

    public static com.google.gson.w d(Class cls, Class cls2, com.google.gson.v vVar) {
        return new z(cls, cls2, vVar);
    }

    public static com.google.gson.w e(Class cls, com.google.gson.v vVar) {
        return new a0(cls, vVar);
    }
}
