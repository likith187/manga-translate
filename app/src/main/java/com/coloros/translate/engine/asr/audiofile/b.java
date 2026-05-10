package com.coloros.translate.engine.asr.audiofile;

import android.os.Bundle;
import com.coloros.translate.utils.c0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;
import w8.p;
import x1.q;

/* JADX INFO: loaded from: classes.dex */
public final class b implements e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4842d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CopyOnWriteArrayList f4844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private q f4845c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.engine.asr.audiofile.b$b, reason: collision with other inner class name */
    static final class C0062b extends s implements p {
        C0062b() {
            super(2);
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws IOException {
            invoke((byte[]) obj, ((Number) obj2).intValue());
            return h0.INSTANCE;
        }

        public final void invoke(byte[] bArr, int i10) throws IOException {
            FileOutputStream fileOutputStreamE;
            for (f fVar : b.this.f4844b) {
                if (fVar.f() && (fileOutputStreamE = fVar.e()) != null) {
                    fileOutputStreamE.write(bArr, 0, i10);
                }
            }
        }
    }

    public b(String audioType) {
        r.e(audioType, "audioType");
        this.f4843a = audioType;
        this.f4844b = new CopyOnWriteArrayList();
    }

    private final f g(String str, String str2) {
        Object next;
        if (str == null && str2 == null) {
            return (f) o.T(this.f4844b, 0);
        }
        Iterator it = this.f4844b.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            f fVar = (f) next;
            if (r.a(fVar.d(), str) && r.a(fVar.c(), str2)) {
                break;
            }
        }
        return (f) next;
    }

    @Override // com.coloros.translate.engine.asr.audiofile.e
    public void a(Bundle bundle) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            int i10 = bundle != null ? bundle.getInt("param_buffer_size", 0) : 0;
            int i11 = bundle != null ? bundle.getInt("param_sample_rate", 0) : 0;
            int i12 = bundle != null ? bundle.getInt("param_channel_count", 0) : 0;
            c0.f7098a.d("AudioFileMp3Helper", "initParams, bufferSize = " + i10 + ", sampleRate = " + i11 + ", channel = " + i12);
            q qVar = new q();
            q.e(qVar, i10, i11, i12, 0, 0, 24, null);
            this.f4845c = qVar;
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AudioFileMp3Helper", "initParams error: " + thM62exceptionOrNullimpl);
        }
    }

    @Override // com.coloros.translate.engine.asr.audiofile.e
    public File b(String str, String str2) {
        Object obj = null;
        if ((str == null || str.length() == 0) && (str2 == null || str2.length() == 0)) {
            c0.f7098a.q("AudioFileMp3Helper", "addSaveFile but null");
            return null;
        }
        c0.f7098a.d("AudioFileMp3Helper", "addSaveFile fileName = " + str2);
        Iterator it = this.f4844b.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            f fVar = (f) next;
            if (kotlin.jvm.internal.r.a(fVar.d(), str) && kotlin.jvm.internal.r.a(fVar.c(), str2)) {
                obj = next;
                break;
            }
        }
        f fVar2 = (f) obj;
        if (fVar2 == null) {
            kotlin.jvm.internal.r.b(str2);
            fVar2 = new f(str, str2, false, 4, null);
            this.f4844b.add(fVar2);
        }
        fVar2.g();
        return fVar2.b();
    }

    @Override // com.coloros.translate.engine.asr.audiofile.e
    public File c(String str, String str2) {
        f fVarG = g(str, str2);
        if (fVarG != null) {
            return fVarG.b();
        }
        return null;
    }

    @Override // com.coloros.translate.engine.asr.audiofile.e
    public void d() {
        Iterator it = this.f4844b.iterator();
        while (it.hasNext()) {
            ((f) it.next()).a();
        }
        this.f4844b.clear();
    }

    @Override // com.coloros.translate.engine.asr.audiofile.e
    public void destroy() {
        d();
        q qVar = this.f4845c;
        if (qVar != null) {
            qVar.h();
        }
        this.f4845c = null;
    }

    @Override // com.coloros.translate.engine.asr.audiofile.e
    public void e(byte[] bArr, byte[] bArr2) {
        Object objM59constructorimpl;
        h0 h0Var;
        if (bArr2 != null) {
            c0.f7098a.q("AudioFileMp3Helper", "saveAudioFile, but data1 is not null");
            return;
        }
        if (this.f4844b.isEmpty()) {
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            q qVar = this.f4845c;
            if (qVar != null) {
                qVar.b(bArr, new C0062b());
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AudioFileMp3Helper", "saveAudioFile error: " + thM62exceptionOrNullimpl);
        }
    }
}
