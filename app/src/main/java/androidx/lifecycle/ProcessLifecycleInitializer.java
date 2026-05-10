package androidx.lifecycle;

import android.content.Context;
import androidx.lifecycle.e0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements u0.a {
    @Override // u0.a
    public List a() {
        return kotlin.collections.o.h();
    }

    @Override // u0.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public s b(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        androidx.startup.a aVarE = androidx.startup.a.e(context);
        kotlin.jvm.internal.r.d(aVarE, "getInstance(...)");
        if (!aVarE.g(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        o.a(context);
        e0.b bVar = e0.f2761l;
        bVar.b(context);
        return bVar.a();
    }
}
