package androidx.activity;

import android.window.BackEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f159e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f162c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f163d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(float f10, float f11, float f12, int i10) {
        this.f160a = f10;
        this.f161b = f11;
        this.f162c = f12;
        this.f163d = i10;
    }

    public final float a() {
        return this.f162c;
    }

    public final int b() {
        return this.f163d;
    }

    public final float c() {
        return this.f161b;
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.f160a + ", touchY=" + this.f161b + ", progress=" + this.f162c + ", swipeEdge=" + this.f163d + AbstractJsonLexerKt.END_OBJ;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(BackEvent backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
        androidx.activity.a aVar = androidx.activity.a.INSTANCE;
        this(aVar.d(backEvent), aVar.e(backEvent), aVar.b(backEvent), aVar.c(backEvent));
    }
}
