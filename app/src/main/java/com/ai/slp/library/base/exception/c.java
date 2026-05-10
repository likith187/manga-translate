package com.ai.slp.library.base.exception;

/* JADX INFO: loaded from: classes.dex */
public class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f4481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4482b;

    public c(int i10, String str) {
        this.f4481a = i10;
        this.f4482b = str;
    }

    @Override // com.ai.slp.library.base.exception.d
    public int getCode() {
        return this.f4481a;
    }

    @Override // com.ai.slp.library.base.exception.d
    public String getName() {
        return this.f4482b;
    }

    public c(d dVar, String str, String str2) {
        this.f4481a = Integer.parseInt(dVar.getCode() + str);
        this.f4482b = str2;
    }
}
