package com.google.android.gms.internal.mlkit_common;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends b implements Set {

    @CheckForNull
    private transient e zza;

    i() {
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return q.a(this);
    }

    @Override // com.google.android.gms.internal.mlkit_common.b, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzd */
    public abstract r iterator();

    public final e zzf() {
        e eVar = this.zza;
        if (eVar != null) {
            return eVar;
        }
        e eVarZzg = zzg();
        this.zza = eVarZzg;
        return eVarZzg;
    }

    e zzg() {
        Object[] array = toArray();
        int i10 = e.zzd;
        return e.zzg(array, array.length);
    }
}
