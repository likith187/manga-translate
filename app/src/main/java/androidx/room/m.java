package androidx.room;

import java.io.File;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
class m implements c.InterfaceC0215c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f3601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.InterfaceC0215c f3602c;

    m(String str, File file, c.InterfaceC0215c interfaceC0215c) {
        this.f3600a = str;
        this.f3601b = file;
        this.f3602c = interfaceC0215c;
    }

    @Override // s0.c.InterfaceC0215c
    public s0.c a(c.b bVar) {
        return new l(bVar.f15497a, this.f3600a, this.f3601b, bVar.f15499c.f15496a, this.f3602c.a(bVar));
    }
}
