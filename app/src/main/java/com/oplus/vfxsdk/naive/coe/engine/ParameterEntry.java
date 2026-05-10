package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;
import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class ParameterEntry<T> {
    private final String paraName;
    private final int passIndex;
    private final T[] values;

    public ParameterEntry(int i10, String paraName, T[] values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        this.passIndex = i10;
        this.paraName = paraName;
        this.values = values;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ParameterEntry copy$default(ParameterEntry parameterEntry, int i10, String str, Object[] objArr, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = parameterEntry.passIndex;
        }
        if ((i11 & 2) != 0) {
            str = parameterEntry.paraName;
        }
        if ((i11 & 4) != 0) {
            objArr = parameterEntry.values;
        }
        return parameterEntry.copy(i10, str, objArr);
    }

    public final int component1() {
        return this.passIndex;
    }

    public final String component2() {
        return this.paraName;
    }

    public final T[] component3() {
        return this.values;
    }

    public final ParameterEntry<T> copy(int i10, String paraName, T[] values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        return new ParameterEntry<>(i10, paraName, values);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParameterEntry)) {
            return false;
        }
        ParameterEntry parameterEntry = (ParameterEntry) obj;
        return this.passIndex == parameterEntry.passIndex && r.a(this.paraName, parameterEntry.paraName) && r.a(this.values, parameterEntry.values);
    }

    public final String getParaName() {
        return this.paraName;
    }

    public final int getPassIndex() {
        return this.passIndex;
    }

    public final T[] getValues() {
        return this.values;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.passIndex) * 31) + this.paraName.hashCode()) * 31) + Arrays.hashCode(this.values);
    }

    public String toString() {
        return "ParameterEntry(passIndex=" + this.passIndex + ", paraName=" + this.paraName + ", values=" + Arrays.toString(this.values) + ")";
    }
}
