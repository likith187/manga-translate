package n8;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements Serializable {
    public static final a Companion = new a(null);
    private final Object value;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Serializable {
        public final Throwable exception;

        public b(Throwable exception) {
            kotlin.jvm.internal.r.e(exception, "exception");
            this.exception = exception;
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && kotlin.jvm.internal.r.a(this.exception, ((b) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    private /* synthetic */ r(Object obj) {
        this.value = obj;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ r m58boximpl(Object obj) {
        return new r(obj);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m59constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m60equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof r) && kotlin.jvm.internal.r.a(obj, ((r) obj2).m68unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m61equalsimpl0(Object obj, Object obj2) {
        return kotlin.jvm.internal.r.a(obj, obj2);
    }

    /* JADX INFO: renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m62exceptionOrNullimpl(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).exception;
        }
        return null;
    }

    /* JADX INFO: renamed from: getOrNull-impl, reason: not valid java name */
    private static final Object m63getOrNullimpl(Object obj) {
        if (m65isFailureimpl(obj)) {
            return null;
        }
        return obj;
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m64hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: isFailure-impl, reason: not valid java name */
    public static final boolean m65isFailureimpl(Object obj) {
        return obj instanceof b;
    }

    /* JADX INFO: renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m66isSuccessimpl(Object obj) {
        return !(obj instanceof b);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m67toStringimpl(Object obj) {
        if (obj instanceof b) {
            return obj.toString();
        }
        return "Success(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m60equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m64hashCodeimpl(this.value);
    }

    public String toString() {
        return m67toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m68unboximpl() {
        return this.value;
    }
}
