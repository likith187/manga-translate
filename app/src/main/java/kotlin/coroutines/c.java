package kotlin.coroutines;

import java.io.Serializable;
import kotlin.coroutines.g;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import n8.h0;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements g, Serializable {
    private final g.b element;
    private final g left;

    private static final class a implements Serializable {
        public static final C0163a Companion = new C0163a(null);
        private static final long serialVersionUID = 0;
        private final g[] elements;

        /* JADX INFO: renamed from: kotlin.coroutines.c$a$a, reason: collision with other inner class name */
        public static final class C0163a {
            public /* synthetic */ C0163a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0163a() {
            }
        }

        public a(g[] elements) {
            r.e(elements, "elements");
            this.elements = elements;
        }

        private final Object readResolve() {
            g[] gVarArr = this.elements;
            g gVarPlus = h.INSTANCE;
            for (g gVar : gVarArr) {
                gVarPlus = gVarPlus.plus(gVar);
            }
            return gVarPlus;
        }

        public final g[] getElements() {
            return this.elements;
        }
    }

    static final class b extends s implements p {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // w8.p
        public final String invoke(String acc, g.b element) {
            r.e(acc, "acc");
            r.e(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    /* JADX INFO: renamed from: kotlin.coroutines.c$c, reason: collision with other inner class name */
    static final class C0164c extends s implements p {
        final /* synthetic */ g[] $elements;
        final /* synthetic */ a0 $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0164c(g[] gVarArr, a0 a0Var) {
            super(2);
            this.$elements = gVarArr;
            this.$index = a0Var;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((h0) obj, (g.b) obj2);
            return h0.INSTANCE;
        }

        public final void invoke(h0 h0Var, g.b element) {
            r.e(h0Var, "<anonymous parameter 0>");
            r.e(element, "element");
            g[] gVarArr = this.$elements;
            a0 a0Var = this.$index;
            int i10 = a0Var.element;
            a0Var.element = i10 + 1;
            gVarArr[i10] = element;
        }
    }

    public c(g left, g.b element) {
        r.e(left, "left");
        r.e(element, "element");
        this.left = left;
        this.element = element;
    }

    private final boolean contains(g.b bVar) {
        return r.a(get(bVar.getKey()), bVar);
    }

    private final boolean containsAll(c cVar) {
        while (contains(cVar.element)) {
            g gVar = cVar.left;
            if (!(gVar instanceof c)) {
                r.c(gVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return contains((g.b) gVar);
            }
            cVar = (c) gVar;
        }
        return false;
    }

    private final int size() {
        int i10 = 2;
        while (true) {
            g gVar = this.left;
            this = gVar instanceof c ? (c) gVar : null;
            if (this == null) {
                return i10;
            }
            i10++;
        }
    }

    private final Object writeReplace() {
        int size = size();
        g[] gVarArr = new g[size];
        a0 a0Var = new a0();
        fold(h0.INSTANCE, new C0164c(gVarArr, a0Var));
        if (a0Var.element == size) {
            return new a(gVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (cVar.size() != size() || !cVar.containsAll(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.g
    public <R> R fold(R r10, p operation) {
        r.e(operation, "operation");
        return (R) operation.invoke(this.left.fold(r10, operation), this.element);
    }

    @Override // kotlin.coroutines.g
    public <E extends g.b> E get(g.c key) {
        r.e(key, "key");
        while (true) {
            E e10 = (E) this.element.get(key);
            if (e10 != null) {
                return e10;
            }
            g gVar = this.left;
            if (!(gVar instanceof c)) {
                return (E) gVar.get(key);
            }
            this = (c) gVar;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override // kotlin.coroutines.g
    public g minusKey(g.c key) {
        r.e(key, "key");
        if (this.element.get(key) != null) {
            return this.left;
        }
        g gVarMinusKey = this.left.minusKey(key);
        return gVarMinusKey == this.left ? this : gVarMinusKey == h.INSTANCE ? this.element : new c(gVarMinusKey, this.element);
    }

    @Override // kotlin.coroutines.g
    public g plus(g gVar) {
        return g.a.a(this, gVar);
    }

    public String toString() {
        return AbstractJsonLexerKt.BEGIN_LIST + ((String) fold("", b.INSTANCE)) + AbstractJsonLexerKt.END_LIST;
    }
}
