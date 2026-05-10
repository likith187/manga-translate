package com.coloros.translate.screen.aiunit;

import androidx.lifecycle.a0;
import androidx.lifecycle.b0;
import androidx.lifecycle.s;
import com.coloros.translate.utils.c0;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends a0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f5509m = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicInteger f5510l = new AtomicInteger(0);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b0 f5511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d f5513c;

        public b(d dVar, b0 observer, int i10) {
            r.e(observer, "observer");
            this.f5513c = dVar;
            this.f5511a = observer;
            this.f5512b = i10;
        }

        @Override // androidx.lifecycle.b0
        public void b(Object obj) {
            c0.f7098a.d("SingleLiveData", "onChanged: observer is " + this.f5511a.hashCode() + ", version is " + this.f5512b + ", curVersion is " + this.f5513c.f5510l.get());
            if (this.f5513c.f5510l.get() > this.f5512b) {
                this.f5511a.b(obj);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !r.a(b.class, obj.getClass())) {
                return false;
            }
            b bVar = obj instanceof b ? (b) obj : null;
            return r.a(bVar != null ? bVar.f5511a : null, this.f5511a);
        }

        public int hashCode() {
            return Objects.hash(this.f5511a);
        }
    }

    private final b0 p(b0 b0Var, int i10) {
        c0.f7098a.d("SingleLiveData", "createObserverWrapper: observer is " + b0Var.hashCode() + ", version is " + i10);
        return new b(this, b0Var, i10);
    }

    @Override // androidx.lifecycle.y
    public void g(s owner, b0 observer) {
        r.e(owner, "owner");
        r.e(observer, "observer");
        super.g(owner, p(observer, this.f5510l.get()));
    }

    @Override // androidx.lifecycle.y
    public void h(b0 observer) {
        r.e(observer, "observer");
        super.h(p(observer, this.f5510l.get()));
    }

    @Override // androidx.lifecycle.y
    public void l(b0 observer) {
        r.e(observer, "observer");
        if (observer.getClass().isAssignableFrom(b.class)) {
            super.l(observer);
        } else {
            super.l(p(observer, this.f5510l.get()));
        }
    }

    @Override // androidx.lifecycle.a0, androidx.lifecycle.y
    public void n(Object obj) {
        this.f5510l.getAndIncrement();
        super.n(obj);
    }
}
