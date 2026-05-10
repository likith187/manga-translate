package com.score.rahasak.utils;

/* JADX INFO: loaded from: classes2.dex */
public class a extends RuntimeException {
    public a() {
    }

    static int throwIfError(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        throw new a("Error from codec: " + i10);
    }

    public a(String str) {
        super(str);
    }
}
