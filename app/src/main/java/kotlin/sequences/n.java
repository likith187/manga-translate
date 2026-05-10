package kotlin.sequences;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class n extends m {

    public static final class a implements Iterable, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f13105a;

        public a(f fVar) {
            this.f13105a = fVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return this.f13105a.iterator();
        }
    }

    static final class b extends s implements w8.l {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // w8.l
        public final Boolean invoke(Object obj) {
            return Boolean.valueOf(obj == null);
        }
    }

    public static Iterable g(f fVar) {
        r.e(fVar, "<this>");
        return new a(fVar);
    }

    public static f h(f fVar, int i10) {
        r.e(fVar, "<this>");
        if (i10 >= 0) {
            return i10 == 0 ? fVar : fVar instanceof c ? ((c) fVar).a(i10) : new kotlin.sequences.b(fVar, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final f i(f fVar, w8.l predicate) {
        r.e(fVar, "<this>");
        r.e(predicate, "predicate");
        return new d(fVar, false, predicate);
    }

    public static final f j(f fVar) {
        r.e(fVar, "<this>");
        f fVarI = i(fVar, b.INSTANCE);
        r.c(fVarI, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>");
        return fVarI;
    }

    public static Object k(f fVar) {
        r.e(fVar, "<this>");
        Iterator it = fVar.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final Appendable l(f fVar, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, w8.l lVar) throws IOException {
        r.e(fVar, "<this>");
        r.e(buffer, "buffer");
        r.e(separator, "separator");
        r.e(prefix, "prefix");
        r.e(postfix, "postfix");
        r.e(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (Object obj : fVar) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            kotlin.text.r.a(buffer, obj, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String m(f fVar, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, w8.l lVar) {
        r.e(fVar, "<this>");
        r.e(separator, "separator");
        r.e(prefix, "prefix");
        r.e(postfix, "postfix");
        r.e(truncated, "truncated");
        String string = ((StringBuilder) l(fVar, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        r.d(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String n(f fVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, w8.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return m(fVar, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static f o(f fVar, w8.l transform) {
        r.e(fVar, "<this>");
        r.e(transform, "transform");
        return new o(fVar, transform);
    }

    public static f p(f fVar, w8.l transform) {
        r.e(fVar, "<this>");
        r.e(transform, "transform");
        return j(new o(fVar, transform));
    }

    public static List q(f fVar) {
        r.e(fVar, "<this>");
        Iterator it = fVar.iterator();
        if (!it.hasNext()) {
            return kotlin.collections.o.h();
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return kotlin.collections.o.b(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
