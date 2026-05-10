package v1;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.r;
import n8.w;

/* JADX INFO: loaded from: classes.dex */
public final class d implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MathContext f15903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashMap f15904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f15905c;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15906a;

        static {
            int[] iArr = new int[o.values().length];
            try {
                iArr[o.BAR_BAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[o.AMP_AMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[o.PLUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[o.MINUS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[o.STAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[o.SLASH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[o.MODULO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[o.EXPONENT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[o.EQUAL_EQUAL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[o.NOT_EQUAL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[o.GREATER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[o.GREATER_EQUAL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[o.LESS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[o.LESS_EQUAL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[o.SQUARE_ROOT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            f15906a = iArr;
        }
    }

    public d() {
        MathContext DECIMAL64 = MathContext.DECIMAL64;
        r.d(DECIMAL64, "DECIMAL64");
        this.f15903a = DECIMAL64;
        this.f15904b = new LinkedHashMap();
        this.f15905c = new LinkedHashMap();
    }

    private final BigDecimal j(e eVar, e eVar2) {
        if (o(m(eVar))) {
            return r(o(m(eVar2)));
        }
        BigDecimal ZERO = BigDecimal.ZERO;
        r.d(ZERO, "ZERO");
        return ZERO;
    }

    private final void l(String str, BigDecimal bigDecimal) {
        LinkedHashMap linkedHashMap = this.f15904b;
        n8.q qVarA = w.a(str, bigDecimal);
        linkedHashMap.put(qVarA.getFirst(), qVarA.getSecond());
    }

    private final boolean o(BigDecimal bigDecimal) {
        return !r.a(bigDecimal, BigDecimal.ZERO);
    }

    private final BigDecimal p(e eVar, e eVar2) {
        if (!o(m(eVar))) {
            return r(o(m(eVar2)));
        }
        BigDecimal ONE = BigDecimal.ONE;
        r.d(ONE, "ONE");
        return ONE;
    }

    private final BigDecimal q(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        int iSignum = bigDecimal2.signum();
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(iSignum);
        r.d(bigDecimalValueOf, "valueOf(this.toLong())");
        BigDecimal bigDecimalMultiply = bigDecimal2.multiply(bigDecimalValueOf);
        r.d(bigDecimalMultiply, "multiply(...)");
        BigDecimal bigDecimal3 = BigDecimal.ONE;
        BigDecimal bigDecimalRemainder = bigDecimalMultiply.remainder(bigDecimal3);
        BigDecimal bigDecimalMultiply2 = bigDecimal.pow(bigDecimalMultiply.subtract(bigDecimalRemainder).intValueExact(), this.f15903a).multiply(new BigDecimal(Math.pow(bigDecimal.doubleValue(), bigDecimalRemainder.doubleValue())), this.f15903a);
        if (iSignum == -1) {
            bigDecimalMultiply2 = bigDecimal3.divide(bigDecimalMultiply2, this.f15903a.getPrecision(), RoundingMode.HALF_UP);
        }
        r.b(bigDecimalMultiply2);
        return bigDecimalMultiply2;
    }

    private final BigDecimal r(boolean z10) {
        BigDecimal bigDecimal;
        String str;
        if (z10) {
            bigDecimal = BigDecimal.ONE;
            str = "ONE";
        } else {
            bigDecimal = BigDecimal.ZERO;
            str = "ZERO";
        }
        r.d(bigDecimal, str);
        return bigDecimal;
    }

    public final d i(String name, g function) {
        r.e(name, "name");
        r.e(function, "function");
        Map map = this.f15905c;
        String lowerCase = name.toLowerCase();
        r.d(lowerCase, "this as java.lang.String).toLowerCase()");
        n8.q qVarA = w.a(lowerCase, function);
        map.put(qVarA.getFirst(), qVarA.getSecond());
        return this;
    }

    public final d k(String name, e expr) {
        r.e(name, "name");
        r.e(expr, "expr");
        String lowerCase = name.toLowerCase();
        r.d(lowerCase, "this as java.lang.String).toLowerCase()");
        l(lowerCase, m(expr));
        return this;
    }

    public final BigDecimal m(e expr) {
        r.e(expr, "expr");
        return (BigDecimal) expr.a(this);
    }

    public final MathContext n() {
        return this.f15903a;
    }

    @Override // v1.f
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public BigDecimal h(v1.a expr) {
        r.e(expr, "expr");
        BigDecimal bigDecimalM = m(expr.c());
        l(expr.b().a(), bigDecimalM);
        return bigDecimalM;
    }

    @Override // v1.f
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public BigDecimal c(b expr) {
        r.e(expr, "expr");
        BigDecimal bigDecimalM = m(expr.b());
        BigDecimal bigDecimalM2 = m(expr.d());
        switch (a.f15906a[expr.c().c().ordinal()]) {
            case 3:
                BigDecimal bigDecimalAdd = bigDecimalM.add(bigDecimalM2);
                r.d(bigDecimalAdd, "this.add(other)");
                return bigDecimalAdd;
            case 4:
                BigDecimal bigDecimalSubtract = bigDecimalM.subtract(bigDecimalM2);
                r.d(bigDecimalSubtract, "this.subtract(other)");
                return bigDecimalSubtract;
            case 5:
                BigDecimal bigDecimalMultiply = bigDecimalM.multiply(bigDecimalM2);
                r.d(bigDecimalMultiply, "this.multiply(other)");
                return bigDecimalMultiply;
            case 6:
                BigDecimal bigDecimalDivide = bigDecimalM.divide(bigDecimalM2, this.f15903a);
                r.d(bigDecimalDivide, "divide(...)");
                return bigDecimalDivide;
            case 7:
                BigDecimal bigDecimalRemainder = bigDecimalM.remainder(bigDecimalM2, this.f15903a);
                r.d(bigDecimalRemainder, "remainder(...)");
                return bigDecimalRemainder;
            case 8:
                return q(bigDecimalM, bigDecimalM2);
            case 9:
                return r(r.a(bigDecimalM, bigDecimalM2));
            case 10:
                return r(!r.a(bigDecimalM, bigDecimalM2));
            case 11:
                return r(bigDecimalM.compareTo(bigDecimalM2) > 0);
            case 12:
                return r(bigDecimalM.compareTo(bigDecimalM2) >= 0);
            case 13:
                return r(bigDecimalM.compareTo(bigDecimalM2) < 0);
            case 14:
                return r(bigDecimalM.compareTo(bigDecimalM2) <= 0);
            default:
                throw new u1.a("Invalid binary operator '" + expr.c().a() + '\'');
        }
    }

    @Override // v1.f
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public BigDecimal e(c expr) {
        r.e(expr, "expr");
        String strC = expr.c();
        Map map = this.f15905c;
        String lowerCase = strC.toLowerCase();
        r.d(lowerCase, "this as java.lang.String).toLowerCase()");
        g gVar = (g) map.get(lowerCase);
        if (gVar == null) {
            throw new u1.a("Undefined function '" + strC + '\'');
        }
        List listB = expr.b();
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(listB, 10));
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(m((e) it.next()));
        }
        return gVar.a(arrayList);
    }

    @Override // v1.f
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public BigDecimal a(h expr) {
        r.e(expr, "expr");
        return m(expr.b());
    }

    @Override // v1.f
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public BigDecimal b(i expr) {
        r.e(expr, "expr");
        return expr.b();
    }

    @Override // v1.f
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public BigDecimal d(j expr) {
        r.e(expr, "expr");
        e eVarB = expr.b();
        e eVarD = expr.d();
        int i10 = a.f15906a[expr.c().c().ordinal()];
        if (i10 == 1) {
            return p(eVarB, eVarD);
        }
        if (i10 == 2) {
            return j(eVarB, eVarD);
        }
        throw new u1.a("Invalid logical operator '" + expr.c().a() + '\'');
    }

    @Override // v1.f
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public BigDecimal g(p expr) {
        r.e(expr, "expr");
        BigDecimal bigDecimalM = m(expr.c());
        int i10 = a.f15906a[expr.b().c().ordinal()];
        if (i10 != 4) {
            if (i10 == 15) {
                return q(bigDecimalM, new BigDecimal(0.5d));
            }
            throw new u1.a("Invalid unary operator");
        }
        BigDecimal bigDecimalNegate = bigDecimalM.negate();
        r.b(bigDecimalNegate);
        return bigDecimalNegate;
    }

    @Override // v1.f
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public BigDecimal f(q expr) {
        r.e(expr, "expr");
        String strA = expr.b().a();
        LinkedHashMap linkedHashMap = this.f15904b;
        String lowerCase = strA.toLowerCase();
        r.d(lowerCase, "this as java.lang.String).toLowerCase()");
        BigDecimal bigDecimal = (BigDecimal) linkedHashMap.get(lowerCase);
        if (bigDecimal != null) {
            return bigDecimal;
        }
        throw new u1.a("Undefined variable '" + strA + '\'');
    }
}
