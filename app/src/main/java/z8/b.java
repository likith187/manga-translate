package z8;

import java.util.Random;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends z8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f16654a = new a();

    public static final class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // z8.a
    public Random a() {
        Object obj = this.f16654a.get();
        r.d(obj, "get(...)");
        return (Random) obj;
    }
}
