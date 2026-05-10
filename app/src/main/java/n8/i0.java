package n8;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class i0 implements j, Serializable {
    private Object _value;
    private w8.a initializer;

    public i0(w8.a initializer) {
        kotlin.jvm.internal.r.e(initializer, "initializer");
        this.initializer = initializer;
        this._value = d0.INSTANCE;
    }

    private final Object writeReplace() {
        return new h(getValue());
    }

    @Override // n8.j
    public Object getValue() {
        if (this._value == d0.INSTANCE) {
            w8.a aVar = this.initializer;
            kotlin.jvm.internal.r.b(aVar);
            this._value = aVar.mo8invoke();
            this.initializer = null;
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
