package n8;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements j, Serializable {
    private final Object value;

    public h(Object obj) {
        this.value = obj;
    }

    @Override // n8.j
    public Object getValue() {
        return this.value;
    }

    public boolean isInitialized() {
        return true;
    }

    public String toString() {
        return String.valueOf(getValue());
    }
}
