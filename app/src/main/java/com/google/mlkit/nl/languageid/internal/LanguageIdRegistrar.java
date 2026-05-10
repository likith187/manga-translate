package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.internal.mlkit_language_id_common.nb;
import com.google.mlkit.nl.languageid.internal.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import o4.g;
import o4.h;
import o4.o;

/* JADX INFO: loaded from: classes.dex */
public class LanguageIdRegistrar implements h {
    @Override // o4.h
    public final List a() {
        return nb.zzi(o4.c.a(d.class).b(o.g(Context.class)).b(o.i(j5.a.class)).d(new g() { // from class: j5.c
            @Override // o4.g
            public final Object a(o4.d dVar) {
                ArrayList arrayList = new ArrayList(dVar.b(a.class));
                k.k(!arrayList.isEmpty(), "No delegate creator registered.");
                Collections.sort(arrayList, new Comparator() { // from class: j5.e
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ((a) obj2).a() - ((a) obj).a();
                    }
                });
                return new com.google.mlkit.nl.languageid.internal.d((Context) dVar.a(Context.class), (a) arrayList.get(0));
            }
        }).c(), o4.c.a(a.C0122a.class).b(o.g(d.class)).b(o.g(f5.d.class)).d(new g() { // from class: j5.d
            @Override // o4.g
            public final Object a(o4.d dVar) {
                return new a.C0122a((com.google.mlkit.nl.languageid.internal.d) dVar.a(com.google.mlkit.nl.languageid.internal.d.class), (f5.d) dVar.a(f5.d.class));
            }
        }).c());
    }
}
