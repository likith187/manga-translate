package v1;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f15912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f15913b;

    public k(List tokens) {
        r.e(tokens, "tokens");
        this.f15912a = tokens;
    }

    private final e a() {
        e eVarO = o();
        while (m(o.PLUS, o.MINUS)) {
            eVarO = new b(eVarO, s(), o());
        }
        return eVarO;
    }

    private final n b() {
        if (!l()) {
            this.f15913b++;
        }
        return s();
    }

    private final e c() {
        e eVarI = i();
        while (m(o.AMP_AMP)) {
            eVarI = new j(eVarI, s(), i());
        }
        return eVarI;
    }

    private final e d() {
        e eVarP = p();
        if (!m(o.ASSIGN)) {
            return eVarP;
        }
        e eVarD = d();
        if (eVarP instanceof q) {
            return new a(((q) eVarP).b(), eVarD);
        }
        throw new u1.a("Invalid assignment target");
    }

    private final e e() {
        if (!n(o.IDENTIFIER, o.LEFT_PAREN)) {
            return u();
        }
        n nVar = (n) t().component1();
        ArrayList arrayList = new ArrayList();
        if (!f(o.RIGHT_PAREN)) {
            do {
                arrayList.add(k());
            } while (m(o.COMMA));
        }
        h(o.RIGHT_PAREN, "Expected ')' after function arguments");
        return new c(nVar.a(), arrayList);
    }

    private final boolean f(o oVar) {
        return !l() && r().c() == oVar;
    }

    private final e g() {
        e eVarA = a();
        while (m(o.GREATER, o.GREATER_EQUAL, o.LESS, o.LESS_EQUAL)) {
            eVarA = new b(eVarA, s(), a());
        }
        return eVarA;
    }

    private final n h(o oVar, String str) {
        if (f(oVar)) {
            return b();
        }
        throw new u1.a(str);
    }

    private final e i() {
        e eVarG = g();
        while (m(o.EQUAL_EQUAL, o.NOT_EQUAL)) {
            eVarG = new b(eVarG, s(), g());
        }
        return eVarG;
    }

    private final e j() {
        e eVarE = e();
        return m(o.EXPONENT) ? new b(eVarE, s(), w()) : eVarE;
    }

    private final e k() {
        return d();
    }

    private final boolean l() {
        return r().c() == o.EOF;
    }

    private final boolean m(o... oVarArr) {
        for (o oVar : oVarArr) {
            if (f(oVar)) {
                b();
                return true;
            }
        }
        return false;
    }

    private final boolean n(o oVar, o oVar2) {
        int i10 = this.f15913b;
        if (m(oVar) && m(oVar2)) {
            return true;
        }
        this.f15913b = i10;
        return false;
    }

    private final e o() {
        e eVarW = w();
        while (m(o.STAR, o.SLASH, o.MODULO)) {
            eVarW = new b(eVarW, s(), w());
        }
        return eVarW;
    }

    private final e p() {
        e eVarC = c();
        while (m(o.BAR_BAR)) {
            eVarC = new j(eVarC, s(), c());
        }
        return eVarC;
    }

    private final n r() {
        return (n) this.f15912a.get(this.f15913b);
    }

    private final n s() {
        return (n) this.f15912a.get(this.f15913b - 1);
    }

    private final n8.q t() {
        return new n8.q(this.f15912a.get(this.f15913b - 2), this.f15912a.get(this.f15913b - 1));
    }

    private final e u() {
        if (m(o.NUMBER)) {
            Object objB = s().b();
            r.c(objB, "null cannot be cast to non-null type java.math.BigDecimal");
            return new i((BigDecimal) objB);
        }
        if (m(o.IDENTIFIER)) {
            return new q(s());
        }
        if (!m(o.LEFT_PAREN)) {
            throw new u1.a("Expected expression after '" + s().a() + "'.");
        }
        e eVarK = k();
        h(o.RIGHT_PAREN, "Expected ')' after '" + s().a() + "'.");
        return new h(eVarK);
    }

    private final e v() {
        return m(o.SQUARE_ROOT) ? new p(s(), w()) : j();
    }

    private final e w() {
        return m(o.MINUS) ? new p(s(), w()) : v();
    }

    public final e q() {
        e eVarK = k();
        if (l()) {
            return eVarK;
        }
        throw new u1.a("Expected end of expression, found '" + r().a() + '\'');
    }
}
