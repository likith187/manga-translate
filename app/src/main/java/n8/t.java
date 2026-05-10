package n8;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
final class t implements j, Serializable {
    public static final a Companion = new a(null);
    private static final AtomicReferenceFieldUpdater<t, Object> valueUpdater = AtomicReferenceFieldUpdater.newUpdater(t.class, Object.class, "_value");
    private volatile Object _value;

    /* JADX INFO: renamed from: final, reason: not valid java name */
    private final Object f1final;
    private volatile w8.a initializer;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public t(w8.a initializer) {
        kotlin.jvm.internal.r.e(initializer, "initializer");
        this.initializer = initializer;
        d0 d0Var = d0.INSTANCE;
        this._value = d0Var;
        this.f1final = d0Var;
    }

    private final Object writeReplace() {
        return new h(getValue());
    }

    @Override // n8.j
    public Object getValue() {
        Object obj = this._value;
        d0 d0Var = d0.INSTANCE;
        if (obj != d0Var) {
            return obj;
        }
        w8.a aVar = this.initializer;
        if (aVar != null) {
            Object objMo8invoke = aVar.mo8invoke();
            if (androidx.concurrent.futures.b.a(valueUpdater, this, d0Var, objMo8invoke)) {
                this.initializer = null;
                return objMo8invoke;
            }
        }
        return this._value;
    }

    public boolean isInitialized() {
        return this._value != d0.INSTANCE;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
