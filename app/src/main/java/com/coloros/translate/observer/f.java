package com.coloros.translate.observer;

import androidx.lifecycle.a0;
import androidx.lifecycle.b0;
import androidx.lifecycle.s;
import com.coloros.translate.utils.c0;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends a0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f5337m = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicInteger f5338l = new AtomicInteger(0);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b0 f5339a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f5341c;

        public b(f fVar, b0 observer, int i10) {
            r.e(observer, "observer");
            this.f5341c = fVar;
            this.f5339a = observer;
            this.f5340b = i10;
        }

        @Override // androidx.lifecycle.b0
        public void b(Object obj) {
            c0.f7098a.d("SingleLiveData", "onChanged: observer is " + this.f5339a.hashCode() + ", version is " + this.f5340b + ", curVersion is " + this.f5341c.f5338l.get());
            if (this.f5341c.f5338l.get() > this.f5340b) {
                this.f5339a.b(obj);
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
            return r.a(bVar != null ? bVar.f5339a : null, this.f5339a);
        }

        public int hashCode() {
            return Objects.hash(this.f5339a);
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
        super.g(owner, p(observer, this.f5338l.get()));
    }

    @Override // androidx.lifecycle.y
    public void h(b0 observer) {
        r.e(observer, "observer");
        super.h(p(observer, this.f5338l.get()));
    }

    @Override // androidx.lifecycle.y
    public void l(b0 observer) {
        r.e(observer, "observer");
        if (observer.getClass().isAssignableFrom(b.class)) {
            super.l(observer);
        } else {
            super.l(p(observer, this.f5338l.get()));
        }
    }

    @Override // androidx.lifecycle.a0, androidx.lifecycle.y
    public void n(Object obj) {
        this.f5338l.getAndIncrement();
        super.n(obj);
    }
}
