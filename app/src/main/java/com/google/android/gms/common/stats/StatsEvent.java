package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract int D0();

    public abstract long E0();

    public abstract String F0();

    public final String toString() {
        return E0() + "\t" + D0() + "\t-1" + F0();
    }
}
