package com.google.gson;

import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Field f10647a;

    public a(Field field) {
        Objects.requireNonNull(field);
        this.f10647a = field;
    }

    public String toString() {
        return this.f10647a.toString();
    }
}
