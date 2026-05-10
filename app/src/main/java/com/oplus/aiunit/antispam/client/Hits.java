package com.oplus.aiunit.antispam.client;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Hits {
    private final Integer label;
    private final List<String> match;

    public Hits(List<String> list, Integer num) {
        this.match = list;
        this.label = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Hits copy$default(Hits hits, List list, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = hits.match;
        }
        if ((i10 & 2) != 0) {
            num = hits.label;
        }
        return hits.copy(list, num);
    }

    public final List<String> component1() {
        return this.match;
    }

    public final Integer component2() {
        return this.label;
    }

    public final Hits copy(List<String> list, Integer num) {
        return new Hits(list, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hits)) {
            return false;
        }
        Hits hits = (Hits) obj;
        return r.a(this.match, hits.match) && r.a(this.label, hits.label);
    }

    public final Integer getLabel() {
        return this.label;
    }

    public final List<String> getMatch() {
        return this.match;
    }

    public int hashCode() {
        List<String> list = this.match;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.label;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "Hits(match=" + this.match + ", label=" + this.label + ')';
    }
}
