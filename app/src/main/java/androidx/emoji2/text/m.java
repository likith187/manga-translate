package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a */
    private final g0.b f2413a;

    /* JADX INFO: renamed from: b */
    private final char[] f2414b;

    /* JADX INFO: renamed from: c */
    private final a f2415c = new a(1024);

    /* JADX INFO: renamed from: d */
    private final Typeface f2416d;

    static class a {

        /* JADX INFO: renamed from: a */
        private final SparseArray f2417a;

        /* JADX INFO: renamed from: b */
        private o f2418b;

        private a() {
            this(1);
        }

        a a(int i10) {
            SparseArray sparseArray = this.f2417a;
            if (sparseArray == null) {
                return null;
            }
            return (a) sparseArray.get(i10);
        }

        final o b() {
            return this.f2418b;
        }

        void c(o oVar, int i10, int i11) {
            a aVarA = a(oVar.b(i10));
            if (aVarA == null) {
                aVarA = new a();
                this.f2417a.put(oVar.b(i10), aVarA);
            }
            if (i11 > i10) {
                aVarA.c(oVar, i10 + 1, i11);
            } else {
                aVarA.f2418b = oVar;
            }
        }

        a(int i10) {
            this.f2417a = new SparseArray(i10);
        }
    }

    private m(Typeface typeface, g0.b bVar) {
        this.f2416d = typeface;
        this.f2413a = bVar;
        this.f2414b = new char[bVar.k() * 2];
        a(bVar);
    }

    private void a(g0.b bVar) {
        int iK = bVar.k();
        for (int i10 = 0; i10 < iK; i10++) {
            o oVar = new o(this, i10);
            Character.toChars(oVar.f(), this.f2414b, i10 * 2);
            h(oVar);
        }
    }

    public static m b(Typeface typeface, ByteBuffer byteBuffer) {
        try {
            z.i.a("EmojiCompat.MetadataRepo.create");
            return new m(typeface, l.b(byteBuffer));
        } finally {
            z.i.b();
        }
    }

    public char[] c() {
        return this.f2414b;
    }

    public g0.b d() {
        return this.f2413a;
    }

    int e() {
        return this.f2413a.l();
    }

    a f() {
        return this.f2415c;
    }

    Typeface g() {
        return this.f2416d;
    }

    void h(o oVar) {
        c0.h.f(oVar, "emoji metadata cannot be null");
        c0.h.b(oVar.c() > 0, "invalid metadata codepoint length");
        this.f2415c.c(oVar, 0, oVar.c() - 1);
    }
}
