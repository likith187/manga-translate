package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.e;
import androidx.emoji2.text.m;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e.j f2377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f2378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e.InterfaceC0026e f2379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f2380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f2381e;

    private static final class a {
        static int a(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                    } else {
                        if (Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return i10;
            }
        }

        static int b(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                        i10++;
                    } else {
                        if (Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i10++;
                        z10 = true;
                    }
                }
                return i10;
            }
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public q f2382a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.j f2383b;

        b(q qVar, e.j jVar) {
            this.f2382a = qVar;
            this.f2383b = jVar;
        }

        @Override // androidx.emoji2.text.h.c
        public boolean b(CharSequence charSequence, int i10, int i11, o oVar) {
            if (oVar.k()) {
                return true;
            }
            if (this.f2382a == null) {
                this.f2382a = new q(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            this.f2382a.setSpan(this.f2383b.a(oVar), i10, i11, 33);
            return true;
        }

        @Override // androidx.emoji2.text.h.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public q a() {
            return this.f2382a;
        }
    }

    private interface c {
        Object a();

        boolean b(CharSequence charSequence, int i10, int i11, o oVar);
    }

    private static class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f2384a;

        d(String str) {
            this.f2384a = str;
        }

        @Override // androidx.emoji2.text.h.c
        public boolean b(CharSequence charSequence, int i10, int i11, o oVar) {
            if (!TextUtils.equals(charSequence.subSequence(i10, i11), this.f2384a)) {
                return true;
            }
            oVar.l(true);
            return false;
        }

        @Override // androidx.emoji2.text.h.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public d a() {
            return this;
        }
    }

    static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2385a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final m.a f2386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private m.a f2387c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private m.a f2388d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2389e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f2390f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f2391g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int[] f2392h;

        e(m.a aVar, boolean z10, int[] iArr) {
            this.f2386b = aVar;
            this.f2387c = aVar;
            this.f2391g = z10;
            this.f2392h = iArr;
        }

        private static boolean d(int i10) {
            return i10 == 65039;
        }

        private static boolean f(int i10) {
            return i10 == 65038;
        }

        private int g() {
            this.f2385a = 1;
            this.f2387c = this.f2386b;
            this.f2390f = 0;
            return 1;
        }

        private boolean h() {
            if (this.f2387c.b().j() || d(this.f2389e)) {
                return true;
            }
            if (this.f2391g) {
                if (this.f2392h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f2392h, this.f2387c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i10) {
            m.a aVarA = this.f2387c.a(i10);
            int iG = 2;
            if (this.f2385a != 2) {
                if (aVarA == null) {
                    iG = g();
                } else {
                    this.f2385a = 2;
                    this.f2387c = aVarA;
                    this.f2390f = 1;
                }
            } else if (aVarA != null) {
                this.f2387c = aVarA;
                this.f2390f++;
            } else if (f(i10)) {
                iG = g();
            } else if (!d(i10)) {
                if (this.f2387c.b() != null) {
                    iG = 3;
                    if (this.f2390f != 1 || h()) {
                        this.f2388d = this.f2387c;
                        g();
                    } else {
                        iG = g();
                    }
                } else {
                    iG = g();
                }
            }
            this.f2389e = i10;
            return iG;
        }

        o b() {
            return this.f2387c.b();
        }

        o c() {
            return this.f2388d.b();
        }

        boolean e() {
            return this.f2385a == 2 && this.f2387c.b() != null && (this.f2390f > 1 || h());
        }
    }

    h(m mVar, e.j jVar, e.InterfaceC0026e interfaceC0026e, boolean z10, int[] iArr, Set set) {
        this.f2377a = jVar;
        this.f2378b = mVar;
        this.f2379c = interfaceC0026e;
        this.f2380d = z10;
        this.f2381e = iArr;
        g(set);
    }

    private static boolean a(Editable editable, KeyEvent keyEvent, boolean z10) {
        i[] iVarArr;
        if (f(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!e(selectionStart, selectionEnd) && (iVarArr = (i[]) editable.getSpans(selectionStart, selectionEnd, i.class)) != null && iVarArr.length > 0) {
            for (i iVar : iVarArr) {
                int spanStart = editable.getSpanStart(iVar);
                int spanEnd = editable.getSpanEnd(iVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    static boolean b(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        int iMax;
        int iMin;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (e(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                iMax = a.a(editable, selectionStart, Math.max(i10, 0));
                iMin = a.b(editable, selectionEnd, Math.max(i11, 0));
                if (iMax == -1 || iMin == -1) {
                    return false;
                }
            } else {
                iMax = Math.max(selectionStart - i10, 0);
                iMin = Math.min(selectionEnd + i11, editable.length());
            }
            i[] iVarArr = (i[]) editable.getSpans(iMax, iMin, i.class);
            if (iVarArr != null && iVarArr.length > 0) {
                for (i iVar : iVarArr) {
                    int spanStart = editable.getSpanStart(iVar);
                    int spanEnd = editable.getSpanEnd(iVar);
                    iMax = Math.min(spanStart, iMax);
                    iMin = Math.max(spanEnd, iMin);
                }
                int iMax2 = Math.max(iMax, 0);
                int iMin2 = Math.min(iMin, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(iMax2, iMin2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    static boolean c(Editable editable, int i10, KeyEvent keyEvent) {
        if (!(i10 != 67 ? i10 != 112 ? false : a(editable, keyEvent, true) : a(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean d(CharSequence charSequence, int i10, int i11, o oVar) {
        if (oVar.d() == 0) {
            oVar.m(this.f2379c.a(charSequence, i10, i11, oVar.h()));
        }
        return oVar.d() == 2;
    }

    private static boolean e(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    private static boolean f(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    private void g(Set set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            i(str, 0, str.length(), 1, true, new d(str));
        }
    }

    private Object i(CharSequence charSequence, int i10, int i11, int i12, boolean z10, c cVar) {
        int iCharCount;
        e eVar = new e(this.f2378b.f(), this.f2380d, this.f2381e);
        int i13 = 0;
        boolean zB = true;
        int iCodePointAt = Character.codePointAt(charSequence, i10);
        loop0: while (true) {
            iCharCount = i10;
            while (i10 < i11 && i13 < i12 && zB) {
                int iA = eVar.a(iCodePointAt);
                if (iA == 1) {
                    iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                    if (iCharCount < i11) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                    }
                    i10 = iCharCount;
                } else if (iA == 2) {
                    i10 += Character.charCount(iCodePointAt);
                    if (i10 < i11) {
                        iCodePointAt = Character.codePointAt(charSequence, i10);
                    }
                } else if (iA == 3) {
                    if (z10 || !d(charSequence, iCharCount, i10, eVar.c())) {
                        zB = cVar.b(charSequence, iCharCount, i10, eVar.c());
                        i13++;
                    }
                }
            }
            break loop0;
        }
        if (eVar.e() && i13 < i12 && zB && (z10 || !d(charSequence, iCharCount, i10, eVar.b()))) {
            cVar.b(charSequence, iCharCount, i10, eVar.b());
        }
        return cVar.a();
    }

    CharSequence h(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
        q qVar;
        i[] iVarArr;
        boolean z11 = charSequence instanceof n;
        if (z11) {
            ((n) charSequence).a();
        }
        if (!z11) {
            try {
                qVar = charSequence instanceof Spannable ? new q((Spannable) charSequence) : (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i10 + (-1), i11 + 1, i.class) > i11) ? null : new q(charSequence);
            } finally {
                if (z11) {
                    ((n) charSequence).d();
                }
            }
        }
        if (qVar != null && (iVarArr = (i[]) qVar.getSpans(i10, i11, i.class)) != null && iVarArr.length > 0) {
            for (i iVar : iVarArr) {
                int spanStart = qVar.getSpanStart(iVar);
                int spanEnd = qVar.getSpanEnd(iVar);
                if (spanStart != i11) {
                    qVar.removeSpan(iVar);
                }
                i10 = Math.min(spanStart, i10);
                i11 = Math.max(spanEnd, i11);
            }
        }
        int i13 = i11;
        if (i10 != i13 && i10 < charSequence.length()) {
            if (i12 != Integer.MAX_VALUE && qVar != null) {
                i12 -= ((i[]) qVar.getSpans(0, qVar.length(), i.class)).length;
            }
            q qVar2 = (q) i(charSequence, i10, i13, i12, z10, new b(qVar, this.f2377a));
            if (qVar2 == null) {
                if (z11) {
                    ((n) charSequence).d();
                }
                return charSequence;
            }
            Spannable spannableB = qVar2.b();
            if (z11) {
                ((n) charSequence).d();
            }
            return spannableB;
        }
        return charSequence;
    }
}
