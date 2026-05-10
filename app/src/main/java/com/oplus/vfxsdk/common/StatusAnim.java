package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class StatusAnim {
    private final Anim[] anims;
    private final String name;

    public StatusAnim(String name, Anim[] anims) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(anims, "anims");
        this.name = name;
        this.anims = anims;
    }

    public static /* synthetic */ StatusAnim copy$default(StatusAnim statusAnim, String str, Anim[] animArr, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = statusAnim.name;
        }
        if ((i10 & 2) != 0) {
            animArr = statusAnim.anims;
        }
        return statusAnim.copy(str, animArr);
    }

    public final String component1() {
        return this.name;
    }

    public final Anim[] component2() {
        return this.anims;
    }

    public final StatusAnim copy(String name, Anim[] anims) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(anims, "anims");
        return new StatusAnim(name, anims);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StatusAnim)) {
            return false;
        }
        StatusAnim statusAnim = (StatusAnim) obj;
        return kotlin.jvm.internal.r.a(this.name, statusAnim.name) && kotlin.jvm.internal.r.a(this.anims, statusAnim.anims);
    }

    public final Anim[] getAnims() {
        return this.anims;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + Arrays.hashCode(this.anims);
    }

    public String toString() {
        return "StatusAnim(name=" + this.name + ", anims=" + Arrays.toString(this.anims) + ")";
    }
}
