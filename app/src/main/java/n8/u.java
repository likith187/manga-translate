package n8;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
final class u implements j, Serializable {
    private volatile Object _value;
    private w8.a initializer;
    private final Object lock;

    public u(w8.a initializer, Object obj) {
        kotlin.jvm.internal.r.e(initializer, "initializer");
        this.initializer = initializer;
        this._value = d0.INSTANCE;
        this.lock = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new h(getValue());
    }

    @Override // n8.j
    public Object getValue() {
        Object objMo8invoke;
        Object obj = this._value;
        d0 d0Var = d0.INSTANCE;
        if (obj != d0Var) {
            return obj;
        }
        synchronized (this.lock) {
            objMo8invoke = this._value;
            if (objMo8invoke == d0Var) {
                w8.a aVar = this.initializer;
                kotlin.jvm.internal.r.b(aVar);
                objMo8invoke = aVar.mo8invoke();
                this._value = objMo8invoke;
                this.initializer = null;
            }
        }
        return objMo8invoke;
    }

    public boolean isInitialized() {
        return this._value != d0.INSTANCE;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ u(w8.a aVar, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, (i10 & 2) != 0 ? null : obj);
    }
}
