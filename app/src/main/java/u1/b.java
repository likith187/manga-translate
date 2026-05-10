package u1;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a */
    private final v1.d f15820a;

    /* JADX INFO: renamed from: b */
    private final HashMap f15821b;

    public static final class a extends v1.g {
        a() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.cos(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("cos requires one argument");
        }
    }

    public static final class a0 extends v1.g {
        a0() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.asin(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("asin requires one argument");
        }
    }

    /* JADX INFO: renamed from: u1.b$b */
    public static final class C0228b extends v1.g {
        C0228b() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.cosh(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("cosh requires one argument");
        }
    }

    public static final class b0 extends v1.g {
        b0() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.log(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue() + Math.sqrt(Math.pow(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue(), 2) + ((double) 1))));
            }
            throw new u1.a("asinh requires one argument");
        }
    }

    public static final class c extends v1.g {
        c() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.exp(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("exp requires one argument");
        }
    }

    public static final class c0 extends v1.g {
        c0() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.atan(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("atan requires one argument");
        }
    }

    public static final class d extends v1.g {
        d() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.expm1(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("expm1 requires one argument");
        }
    }

    public static final class d0 extends v1.g {
        d0() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("atanh requires one argument");
            }
            double d10 = 1;
            return new BigDecimal(Math.log((((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue() + d10) / (d10 - ((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue())) * 0.5d);
        }
    }

    public static final class e extends v1.g {
        e() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("floor requires one argument");
            }
            BigDecimal scale = ((BigDecimal) kotlin.collections.o.Q(arguments)).setScale(0, RoundingMode.FLOOR);
            kotlin.jvm.internal.r.d(scale, "setScale(...)");
            return scale;
        }
    }

    public static final class e0 extends v1.g {
        e0() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.cbrt(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("cbrt requires one argument");
        }
    }

    public static final class f extends v1.g {
        f() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.log(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("ln requires one argument");
        }
    }

    public static final class f0 extends v1.g {
        f0() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("ceil requires one argument");
            }
            BigDecimal scale = ((BigDecimal) kotlin.collections.o.Q(arguments)).setScale(0, RoundingMode.CEILING);
            kotlin.jvm.internal.r.d(scale, "setScale(...)");
            return scale;
        }
    }

    public static final class g extends v1.g {
        g() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.log10(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("log10 requires one argument");
        }
    }

    public static final class h extends v1.g {
        h() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.log(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()) / Math.log(2.0d));
            }
            throw new u1.a("log2 requires one argument");
        }
    }

    public static final class i extends v1.g {
        i() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.log1p(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("log1p requires one argument");
        }
    }

    public static final class j extends v1.g {
        j() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            String str;
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("not requires one argument");
            }
            Object objQ = kotlin.collections.o.Q(arguments);
            BigDecimal bigDecimal = BigDecimal.ZERO;
            if (kotlin.jvm.internal.r.a(objQ, bigDecimal)) {
                bigDecimal = BigDecimal.ONE;
                str = "ONE";
            } else {
                str = "ZERO";
            }
            kotlin.jvm.internal.r.d(bigDecimal, str);
            return bigDecimal;
        }
    }

    public static final class k extends v1.g {
        k() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("abs requires one argument");
            }
            BigDecimal bigDecimalAbs = ((BigDecimal) kotlin.collections.o.Q(arguments)).abs();
            kotlin.jvm.internal.r.d(bigDecimalAbs, "abs(...)");
            return bigDecimalAbs;
        }
    }

    public static final class l extends v1.g {
        l() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (!kotlin.collections.o.k(1, 2).contains(Integer.valueOf(arguments.size()))) {
                throw new u1.a("round requires either one or two arguments");
            }
            BigDecimal scale = ((BigDecimal) kotlin.collections.o.Q(arguments)).setScale(arguments.size() == 2 ? ((BigDecimal) kotlin.collections.o.c0(arguments)).intValue() : 0, RoundingMode.HALF_UP);
            kotlin.jvm.internal.r.d(scale, "setScale(...)");
            return scale;
        }
    }

    public static final class m extends v1.g {
        m() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("sign requires one argument");
            }
            BigDecimal bigDecimal = (BigDecimal) kotlin.collections.o.Q(arguments);
            BigDecimal ZERO = BigDecimal.ZERO;
            if (bigDecimal.compareTo(ZERO) > 0) {
                BigDecimal ONE = BigDecimal.ONE;
                kotlin.jvm.internal.r.d(ONE, "ONE");
                return ONE;
            }
            if (((BigDecimal) kotlin.collections.o.Q(arguments)).compareTo(ZERO) < 0) {
                return new BigDecimal(-1);
            }
            kotlin.jvm.internal.r.d(ZERO, "ZERO");
            return ZERO;
        }
    }

    public static final class n extends v1.g {
        n() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.sin(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("sin requires one argument");
        }
    }

    public static final class o extends v1.g {
        o() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.sinh(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("sinh requires one argument");
        }
    }

    public static final class p extends v1.g {
        p() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.sqrt(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("sqrt requires one argument");
        }
    }

    public static final class q extends v1.g {
        q() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.tan(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("tan requires one argument");
        }
    }

    public static final class r extends v1.g {
        r() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.tanh(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("tanh requires one argument");
        }
    }

    public static final class s extends v1.g {
        s() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() != 1) {
                throw new u1.a("trunc requires one argument");
            }
            BigDecimal scale = ((BigDecimal) kotlin.collections.o.Q(arguments)).setScale(0, RoundingMode.DOWN);
            kotlin.jvm.internal.r.d(scale, "setScale(...)");
            return scale;
        }
    }

    public static final class t extends v1.g {
        t() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.isEmpty()) {
                throw new u1.a("sum requires at least one argument");
            }
            Iterator it = arguments.iterator();
            if (!it.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it.next();
            while (it.hasNext()) {
                next = ((BigDecimal) next).add((BigDecimal) it.next());
                kotlin.jvm.internal.r.d(next, "add(...)");
            }
            return (BigDecimal) next;
        }
    }

    public static final class u extends v1.g {
        u() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.isEmpty()) {
                throw new u1.a("min requires at least one argument");
            }
            Comparable comparableF0 = kotlin.collections.o.f0(arguments);
            kotlin.jvm.internal.r.b(comparableF0);
            return (BigDecimal) comparableF0;
        }
    }

    public static final class v extends v1.g {
        v() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.acos(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue()));
            }
            throw new u1.a("acos requires one argument");
        }
    }

    public static final class w extends v1.g {
        w() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.isEmpty()) {
                throw new u1.a("max requires at least one argument");
            }
            Comparable comparableE0 = kotlin.collections.o.e0(arguments);
            kotlin.jvm.internal.r.b(comparableE0);
            return (BigDecimal) comparableE0;
        }
    }

    public static final class x extends v1.g {
        x() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            return !kotlin.jvm.internal.r.a((BigDecimal) arguments.get(0), BigDecimal.ZERO) ? (BigDecimal) arguments.get(1) : (BigDecimal) arguments.get(2);
        }
    }

    public static final class y extends v1.g {
        y() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            BigDecimal scale = new BigDecimal(Math.random()).multiply((arguments.isEmpty() || ((BigDecimal) kotlin.collections.o.Q(arguments)).compareTo(BigDecimal.ZERO) == 0) ? BigDecimal.ONE : (BigDecimal) kotlin.collections.o.Q(arguments)).setScale(b.this.f15820a.n().getPrecision(), b.this.f15820a.n().getRoundingMode());
            kotlin.jvm.internal.r.d(scale, "setScale(...)");
            return scale;
        }
    }

    public static final class z extends v1.g {
        z() {
        }

        @Override // v1.g
        public BigDecimal a(List arguments) {
            kotlin.jvm.internal.r.e(arguments, "arguments");
            if (arguments.size() == 1) {
                return new BigDecimal(Math.log(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue() + Math.sqrt(Math.pow(((BigDecimal) kotlin.collections.o.Q(arguments)).doubleValue(), 2) - ((double) 1))));
            }
            throw new u1.a("acosh requires one argument");
        }
    }

    public b() {
        v1.d dVar = new v1.d();
        this.f15820a = dVar;
        this.f15821b = new HashMap();
        b("pi", 3.141592653589793d);
        b("e", 2.718281828459045d);
        dVar.i("abs", new k());
        dVar.i("acos", new v());
        dVar.i("acosh", new z());
        dVar.i("asin", new a0());
        dVar.i("asinh", new b0());
        dVar.i("atan", new c0());
        dVar.i("atanh", new d0());
        dVar.i("cbrt", new e0());
        dVar.i("ceil", new f0());
        dVar.i("cos", new a());
        dVar.i("cosh", new C0228b());
        dVar.i("exp", new c());
        dVar.i("expm1", new d());
        dVar.i("floor", new e());
        dVar.i("ln", new f());
        dVar.i("log10", new g());
        dVar.i("log2", new h());
        dVar.i("log1p", new i());
        dVar.i("not", new j());
        dVar.i("round", new l());
        dVar.i("sign", new m());
        dVar.i("sin", new n());
        dVar.i("sinh", new o());
        dVar.i("sqrt", new p());
        dVar.i("tan", new q());
        dVar.i("tanh", new r());
        dVar.i("trunc", new s());
        dVar.i("sum", new t());
        dVar.i("min", new u());
        dVar.i("max", new w());
        dVar.i("if", new x());
        dVar.i("random", new y());
    }

    private final v1.e e(String str) {
        if (this.f15821b.get(str) != null) {
            Object obj = this.f15821b.get(str);
            kotlin.jvm.internal.r.b(obj);
            return (v1.e) obj;
        }
        v1.e eVarF = f(str);
        this.f15821b.put(str, eVarF);
        return eVarF;
    }

    private final v1.e f(String str) {
        return g(h(str));
    }

    private final v1.e g(List list) {
        return new v1.k(list).q();
    }

    private final List h(String str) {
        return new v1.l(str, this.f15820a.n()).p();
    }

    public final b b(String name, double d10) {
        kotlin.jvm.internal.r.e(name, "name");
        c(name, String.valueOf(d10));
        return this;
    }

    public final b c(String name, String expression) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(expression, "expression");
        this.f15820a.k(name, f(expression));
        return this;
    }

    public final BigDecimal d(String expression) {
        kotlin.jvm.internal.r.e(expression, "expression");
        return this.f15820a.m(e(expression));
    }
}
