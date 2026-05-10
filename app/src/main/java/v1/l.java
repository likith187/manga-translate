package v1;

import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MathContext f15915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f15916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f15917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15918e;

    public l(String source, MathContext mathContext) {
        r.e(source, "source");
        r.e(mathContext, "mathContext");
        this.f15914a = source;
        this.f15915b = mathContext;
        this.f15916c = new ArrayList();
    }

    private final void a(o oVar) {
        b(oVar, null);
    }

    private final void b(o oVar, Object obj) {
        String strSubstring = this.f15914a.substring(this.f15917d, this.f15918e);
        r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        this.f15916c.add(new n(oVar, strSubstring, obj));
    }

    private final char c() {
        String str = this.f15914a;
        int i10 = this.f15918e;
        this.f15918e = i10 + 1;
        return str.charAt(i10);
    }

    private final void d() {
        while (f(l())) {
            c();
        }
        a(o.IDENTIFIER);
    }

    private final boolean e(char c10) {
        return ('a' <= c10 && c10 < '{') || ('A' <= c10 && c10 < '[') || c10 == '_';
    }

    private final boolean f(char c10) {
        return e(c10) || h(c10);
    }

    private final boolean g() {
        return this.f15918e >= this.f15914a.length();
    }

    private final boolean h(char c10) {
        return c10 == '.' || ('0' <= c10 && c10 < ':');
    }

    private final boolean i(char c10, char c11, char c12) {
        return h(c10) || c10 == '.' || (!(c10 == 'e' || c10 == 'E') ? !((c10 == '+' || c10 == '-') && ((c11 == 'e' || c11 == 'E') && h(c12))) : !(h(c11) && (h(c12) || c12 == '+' || c12 == '-')));
    }

    private final boolean j(char c10) {
        if (g() || this.f15914a.charAt(this.f15918e) != c10) {
            return false;
        }
        this.f15918e++;
        return true;
    }

    private final void k() {
        while (h(l())) {
            c();
        }
        if (i(l(), n(), m())) {
            c();
            while (i(l(), n(), m())) {
                c();
            }
        }
        String strSubstring = this.f15914a.substring(this.f15917d, this.f15918e);
        r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        b(o.NUMBER, new BigDecimal(strSubstring, this.f15915b));
    }

    private final char l() {
        if (g()) {
            return (char) 0;
        }
        return this.f15914a.charAt(this.f15918e);
    }

    private final char m() {
        if (this.f15918e + 1 >= this.f15914a.length()) {
            return (char) 0;
        }
        return this.f15914a.charAt(this.f15918e + 1);
    }

    private final char n() {
        int i10 = this.f15918e;
        if (i10 > 0) {
            return this.f15914a.charAt(i10 - 1);
        }
        return (char) 0;
    }

    private final void o() {
        this.f15917d = this.f15918e;
        char c10 = c();
        if (c10 == ' ' || c10 == '\r' || c10 == '\t') {
            return;
        }
        if (c10 == '+') {
            a(o.PLUS);
            return;
        }
        if (c10 == '-') {
            a(o.MINUS);
            return;
        }
        if (c10 == '*') {
            a(o.STAR);
            return;
        }
        if (c10 == '/') {
            a(o.SLASH);
            return;
        }
        if (c10 == '%') {
            a(o.MODULO);
            return;
        }
        if (c10 == '^') {
            a(o.EXPONENT);
            return;
        }
        if (c10 == 8730) {
            a(o.SQUARE_ROOT);
            return;
        }
        if (c10 == '=') {
            a(j('=') ? o.EQUAL_EQUAL : o.ASSIGN);
            return;
        }
        if (c10 == '!') {
            if (j('=')) {
                a(o.NOT_EQUAL);
                return;
            } else {
                m.b(c10);
                return;
            }
        }
        if (c10 == '>') {
            a(j('=') ? o.GREATER_EQUAL : o.GREATER);
            return;
        }
        if (c10 == '<') {
            a(j('=') ? o.LESS_EQUAL : o.LESS);
            return;
        }
        if (c10 == '|') {
            if (j('|')) {
                a(o.BAR_BAR);
                return;
            } else {
                m.b(c10);
                return;
            }
        }
        if (c10 == '&') {
            if (j('&')) {
                a(o.AMP_AMP);
                return;
            } else {
                m.b(c10);
                return;
            }
        }
        if (c10 == ',') {
            a(o.COMMA);
            return;
        }
        if (c10 == '(') {
            a(o.LEFT_PAREN);
            return;
        }
        if (c10 == ')') {
            a(o.RIGHT_PAREN);
            return;
        }
        if (h(c10)) {
            k();
        } else if (e(c10)) {
            d();
        } else {
            m.b(c10);
        }
    }

    public final List p() {
        while (!g()) {
            o();
        }
        this.f15916c.add(new n(o.EOF, "", null));
        return this.f15916c;
    }
}
