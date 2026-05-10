package com.google.mlkit.nl.languageid;

import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.internal.mlkit_language_id_common.e3;
import com.google.android.gms.internal.mlkit_language_id_common.f4;
import com.google.android.gms.internal.mlkit_language_id_common.g5;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@UsedByNative("language_id_jni.cc")
public final class IdentifiedLanguage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f10763b;

    @UsedByNative("language_id_jni.cc")
    public IdentifiedLanguage(String str, float f10) {
        this.f10762a = str;
        this.f10763b = f10;
    }

    public float a() {
        return this.f10763b;
    }

    public String b() {
        return this.f10762a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdentifiedLanguage)) {
            return false;
        }
        IdentifiedLanguage identifiedLanguage = (IdentifiedLanguage) obj;
        return Float.compare(identifiedLanguage.f10763b, this.f10763b) == 0 && g5.a(this.f10762a, identifiedLanguage.f10762a);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10762a, Float.valueOf(this.f10763b)});
    }

    public String toString() {
        e3 e3VarA = f4.a(this);
        e3VarA.b("languageTag", this.f10762a);
        e3VarA.a("confidence", this.f10763b);
        return e3VarA.toString();
    }
}
