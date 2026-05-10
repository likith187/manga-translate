package androidx.databinding;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class f extends b implements Serializable {
    static final long serialVersionUID = 1;
    private Object mValue;

    public f(Object obj) {
        this.mValue = obj;
    }

    public Object get() {
        return this.mValue;
    }

    public void set(Object obj) {
        if (obj != this.mValue) {
            this.mValue = obj;
            notifyChange();
        }
    }

    public f() {
    }

    public f(e... eVarArr) {
        super(eVarArr);
    }
}
