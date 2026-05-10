package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class qb extends jb implements Set {

    @CheckForNull
    private transient nb zza;

    qb() {
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
        return f.a(this);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: zzd */
    public abstract g iterator();

    public final nb zzf() {
        nb nbVar = this.zza;
        if (nbVar != null) {
            return nbVar;
        }
        nb nbVarZzg = zzg();
        this.zza = nbVarZzg;
        return nbVarZzg;
    }

    nb zzg() {
        return nb.zzg(toArray());
    }
}
