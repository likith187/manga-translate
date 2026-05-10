package com.coui.appcompat.opensource;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class StatementSegment {
    private final String content;
    private final int id;

    public StatementSegment(String content, int i10) {
        r.e(content, "content");
        this.content = content;
        this.id = i10;
    }

    public static /* synthetic */ StatementSegment copy$default(StatementSegment statementSegment, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = statementSegment.content;
        }
        if ((i11 & 2) != 0) {
            i10 = statementSegment.id;
        }
        return statementSegment.copy(str, i10);
    }

    public final String component1() {
        return this.content;
    }

    public final int component2() {
        return this.id;
    }

    public final StatementSegment copy(String content, int i10) {
        r.e(content, "content");
        return new StatementSegment(content, i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StatementSegment)) {
            return false;
        }
        StatementSegment statementSegment = (StatementSegment) obj;
        return r.a(this.content, statementSegment.content) && this.id == statementSegment.id;
    }

    public final String getContent() {
        return this.content;
    }

    public final int getId() {
        return this.id;
    }

    public int hashCode() {
        return (this.content.hashCode() * 31) + Integer.hashCode(this.id);
    }

    public String toString() {
        return "StatementSegment(content=" + this.content + ", id=" + this.id + ')';
    }
}
