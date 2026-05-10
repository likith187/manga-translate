package com.coloros.translate.engine.asr.audiofile;

import com.coloros.translate.engine.asr.voicetranslate.l;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: f */
    public static final a f4852f = new a(null);

    /* JADX INFO: renamed from: a */
    private final String f4853a;

    /* JADX INFO: renamed from: b */
    private final String f4854b;

    /* JADX INFO: renamed from: c */
    private boolean f4855c;

    /* JADX INFO: renamed from: d */
    private File f4856d;

    /* JADX INFO: renamed from: e */
    private FileOutputStream f4857e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f(String str, String fileName, boolean z10) {
        Object objM59constructorimpl;
        r.e(fileName, "fileName");
        this.f4853a = str;
        this.f4854b = fileName;
        this.f4855c = z10;
        try {
            r.a aVar = n8.r.Companion;
            this.f4856d = l.a((str == null || str.length() == 0) ? l.d(m.INSTANCE.a()) : str, fileName);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SaveFileInfo", "init file error: " + thM62exceptionOrNullimpl);
        }
    }

    public final void a() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        h0 h0Var;
        h0 h0Var2;
        c0.f7098a.d("SaveFileInfo", "closeStream");
        try {
            r.a aVar = n8.r.Companion;
            FileOutputStream fileOutputStream = this.f4857e;
            if (fileOutputStream != null) {
                fileOutputStream.flush();
                h0Var2 = h0.INSTANCE;
            } else {
                h0Var2 = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var2);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SaveFileInfo", "closeStream flush error: " + thM62exceptionOrNullimpl);
        }
        try {
            FileOutputStream fileOutputStream2 = this.f4857e;
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl2 = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.e("SaveFileInfo", "closeStream close error: " + thM62exceptionOrNullimpl2);
        }
        this.f4855c = false;
        this.f4857e = null;
    }

    public final File b() {
        return this.f4856d;
    }

    public final String c() {
        return this.f4854b;
    }

    public final String d() {
        return this.f4853a;
    }

    public final FileOutputStream e() {
        return this.f4857e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.r.a(this.f4853a, fVar.f4853a) && kotlin.jvm.internal.r.a(this.f4854b, fVar.f4854b) && this.f4855c == fVar.f4855c;
    }

    public final boolean f() {
        return this.f4855c;
    }

    public final void g() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            c0.f7098a.d("SaveFileInfo", "openStream " + this.f4857e);
            this.f4855c = true;
            if (this.f4857e == null) {
                this.f4857e = new FileOutputStream(this.f4856d, true);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SaveFileInfo", "openStream error: " + thM62exceptionOrNullimpl);
        }
    }

    public int hashCode() {
        String str = this.f4853a;
        return ((((str == null ? 0 : str.hashCode()) * 31) + this.f4854b.hashCode()) * 31) + Boolean.hashCode(this.f4855c);
    }

    public String toString() {
        return "SaveFileInfo(filePath=" + this.f4853a + ", fileName=" + this.f4854b + ", needSaveFile=" + this.f4855c + ")";
    }

    public /* synthetic */ f(String str, String str2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? false : z10);
    }
}
