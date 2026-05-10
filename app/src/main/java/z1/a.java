package z1;

import android.media.AudioPlaybackCaptureConfiguration;
import android.media.projection.MediaProjection;
import com.coloros.translate.utils.c0;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0246a f16586e = new C0246a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f16587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f16588b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MediaProjection.Callback f16589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioPlaybackCaptureConfiguration f16590d;

    /* JADX INFO: renamed from: z1.a$a, reason: collision with other inner class name */
    public static final class C0246a {
        public /* synthetic */ C0246a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0246a() {
        }
    }

    public interface b {
        void e(c cVar);
    }

    public a(b bVar) {
        this.f16587a = bVar;
    }

    private final void b(String str, int i10, ArrayList arrayList) {
        c cVarA = z1.b.a(str, i10, arrayList);
        c0.f7098a.d("AudioRecordManager", "createAudioRecorder, audio = " + cVarA);
        b bVar = this.f16587a;
        if (bVar != null) {
            bVar.e(cVarA);
        }
        d();
    }

    private final void d() {
        for (Map.Entry entry : this.f16588b.entrySet()) {
            String str = (String) entry.getKey();
            w8.a aVar = (w8.a) entry.getValue();
            c0.f7098a.d("AudioRecordManager", "doAudioCreatedTask, taskName = " + str);
            aVar.mo8invoke();
        }
        this.f16588b.clear();
    }

    public static /* synthetic */ void f(a aVar, String str, int i10, ArrayList arrayList, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            arrayList = null;
        }
        aVar.e(str, i10, arrayList);
    }

    private final void h() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        h0 h0Var;
        MediaProjection mediaProjection;
        h0 h0Var2;
        MediaProjection mediaProjection2;
        MediaProjection.Callback callback = this.f16589c;
        if (callback != null) {
            try {
                r.a aVar = r.Companion;
                AudioPlaybackCaptureConfiguration audioPlaybackCaptureConfiguration = this.f16590d;
                if (audioPlaybackCaptureConfiguration == null || (mediaProjection2 = audioPlaybackCaptureConfiguration.getMediaProjection()) == null) {
                    h0Var2 = null;
                } else {
                    mediaProjection2.unregisterCallback(callback);
                    h0Var2 = h0.INSTANCE;
                }
                objM59constructorimpl = r.m59constructorimpl(h0Var2);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("AudioRecordManager", "unRegisterMediaProjectionCallback() , unregisterCallback error");
            }
            try {
                AudioPlaybackCaptureConfiguration audioPlaybackCaptureConfiguration2 = this.f16590d;
                if (audioPlaybackCaptureConfiguration2 == null || (mediaProjection = audioPlaybackCaptureConfiguration2.getMediaProjection()) == null) {
                    h0Var = null;
                } else {
                    mediaProjection.stop();
                    h0Var = h0.INSTANCE;
                }
                objM59constructorimpl2 = r.m59constructorimpl(h0Var);
            } catch (Throwable th2) {
                r.a aVar3 = r.Companion;
                objM59constructorimpl2 = r.m59constructorimpl(s.a(th2));
            }
            if (r.m62exceptionOrNullimpl(objM59constructorimpl2) != null) {
                c0.f7098a.e("AudioRecordManager", "unRegisterMediaProjectionCallback() , stop error");
            }
            this.f16589c = null;
            this.f16590d = null;
        }
    }

    public final void a(String taskName, w8.a function) {
        kotlin.jvm.internal.r.e(taskName, "taskName");
        kotlin.jvm.internal.r.e(function, "function");
        c0.f7098a.d("AudioRecordManager", "addAudioCreatedTask, taskName = " + taskName + ", oldSize = " + this.f16588b.size());
        this.f16588b.put(taskName, function);
    }

    public final void c() {
        h();
        this.f16588b.clear();
    }

    public final void e(String str, int i10, ArrayList arrayList) {
        b(str, i10, arrayList);
    }

    public final void g(String taskName) {
        kotlin.jvm.internal.r.e(taskName, "taskName");
        c0.f7098a.d("AudioRecordManager", "removeAudioCreatedTask, taskName = " + taskName + ", oldSize = " + this.f16588b.size());
        this.f16588b.remove(taskName);
    }
}
