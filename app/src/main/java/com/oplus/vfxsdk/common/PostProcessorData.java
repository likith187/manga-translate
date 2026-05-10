package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class PostProcessorData {
    private final String id;
    private final HashMap<String, Uniform> properties;

    public PostProcessorData(String id, HashMap<String, Uniform> properties) {
        kotlin.jvm.internal.r.e(id, "id");
        kotlin.jvm.internal.r.e(properties, "properties");
        this.id = id;
        this.properties = properties;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostProcessorData copy$default(PostProcessorData postProcessorData, String str, HashMap map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = postProcessorData.id;
        }
        if ((i10 & 2) != 0) {
            map = postProcessorData.properties;
        }
        return postProcessorData.copy(str, map);
    }

    public final String component1() {
        return this.id;
    }

    public final HashMap<String, Uniform> component2() {
        return this.properties;
    }

    public final PostProcessorData copy(String id, HashMap<String, Uniform> properties) {
        kotlin.jvm.internal.r.e(id, "id");
        kotlin.jvm.internal.r.e(properties, "properties");
        return new PostProcessorData(id, properties);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PostProcessorData)) {
            return false;
        }
        PostProcessorData postProcessorData = (PostProcessorData) obj;
        return kotlin.jvm.internal.r.a(this.id, postProcessorData.id) && kotlin.jvm.internal.r.a(this.properties, postProcessorData.properties);
    }

    public final String getId() {
        return this.id;
    }

    public final HashMap<String, Uniform> getProperties() {
        return this.properties;
    }

    public int hashCode() {
        return (this.id.hashCode() * 31) + this.properties.hashCode();
    }

    public String toString() {
        return "PostProcessorData(id=" + this.id + ", properties=" + this.properties + ")";
    }
}
