package androidx.databinding;

import androidx.databinding.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements e {
    private transient g mCallbacks;

    @Override // androidx.databinding.e
    public void addOnPropertyChangedCallback(e.a aVar) {
        synchronized (this) {
            try {
                if (this.mCallbacks == null) {
                    this.mCallbacks = new g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mCallbacks.a(aVar);
    }

    public void notifyChange() {
        synchronized (this) {
            try {
                g gVar = this.mCallbacks;
                if (gVar == null) {
                    return;
                }
                gVar.e(this, 0, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void notifyPropertyChanged(int i10) {
        synchronized (this) {
            try {
                g gVar = this.mCallbacks;
                if (gVar == null) {
                    return;
                }
                gVar.e(this, i10, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeOnPropertyChangedCallback(e.a aVar) {
        synchronized (this) {
            try {
                g gVar = this.mCallbacks;
                if (gVar == null) {
                    return;
                }
                gVar.j(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
