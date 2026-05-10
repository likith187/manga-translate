package com.google.android.gms.internal.mlkit_language_id_common;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class pb implements Map, Serializable {

    @CheckForNull
    private transient qb zza;

    @CheckForNull
    private transient qb zzb;

    @CheckForNull
    private transient jb zzc;

    pb() {
    }

    public static pb zzc(Object obj, Object obj2) {
        gb.a("optional-module-barcode", "com.google.android.gms.vision.barcode");
        return e.zzg(1, new Object[]{"optional-module-barcode", "com.google.android.gms.vision.barcode"}, null);
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract Object get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final Object getOrDefault(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return f.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        qb qbVar = this.zzb;
        if (qbVar != null) {
            return qbVar;
        }
        qb qbVarZze = zze();
        this.zzb = qbVarZze;
        return qbVarZze;
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size < 0) {
            throw new IllegalArgumentException("size cannot be negative but was: " + size);
        }
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        boolean z10 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z10) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z10 = false;
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    abstract jb zza();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzb */
    public final jb values() {
        jb jbVar = this.zzc;
        if (jbVar != null) {
            return jbVar;
        }
        jb jbVarZza = zza();
        this.zzc = jbVarZza;
        return jbVarZza;
    }

    abstract qb zzd();

    abstract qb zze();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzf */
    public final qb entrySet() {
        qb qbVar = this.zza;
        if (qbVar != null) {
            return qbVar;
        }
        qb qbVarZzd = zzd();
        this.zza = qbVarZzd;
        return qbVarZzd;
    }
}
