package com.coloros.translate.utils;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f7108b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7109a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d0(String message) {
        kotlin.jvm.internal.r.e(message, "message");
        this.f7109a = message;
    }

    public final String a() {
        return this.f7109a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d0) && kotlin.jvm.internal.r.a(this.f7109a, ((d0) obj).f7109a);
    }

    public int hashCode() {
        return this.f7109a.hashCode();
    }

    public String toString() {
        return "MessageEventFromTextTransActivity(message=" + this.f7109a + ")";
    }
}
