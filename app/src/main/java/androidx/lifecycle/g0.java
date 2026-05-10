package androidx.lifecycle;

import androidx.lifecycle.l;
import kotlinx.coroutines.f1;
import kotlinx.coroutines.p1;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ w8.p $block;
        final /* synthetic */ l.b $state;
        final /* synthetic */ l $this_repeatOnLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.lifecycle.g0$a$a */
        static final class C0029a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ kotlinx.coroutines.c0 $$this$coroutineScope;
            final /* synthetic */ w8.p $block;
            final /* synthetic */ l.b $state;
            final /* synthetic */ l $this_repeatOnLifecycle;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            int label;

            /* JADX INFO: renamed from: androidx.lifecycle.g0$a$a$a */
            static final class C0030a implements p {

                /* JADX INFO: renamed from: a */
                final /* synthetic */ l.a f2777a;

                /* JADX INFO: renamed from: b */
                final /* synthetic */ kotlin.jvm.internal.c0 f2778b;

                /* JADX INFO: renamed from: c */
                final /* synthetic */ kotlinx.coroutines.c0 f2779c;

                /* JADX INFO: renamed from: f */
                final /* synthetic */ l.a f2780f;

                /* JADX INFO: renamed from: h */
                final /* synthetic */ kotlinx.coroutines.i f2781h;

                /* JADX INFO: renamed from: i */
                final /* synthetic */ kotlinx.coroutines.sync.a f2782i;

                /* JADX INFO: renamed from: j */
                final /* synthetic */ w8.p f2783j;

                /* JADX INFO: renamed from: androidx.lifecycle.g0$a$a$a$a */
                static final class C0031a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                    final /* synthetic */ w8.p $block;
                    final /* synthetic */ kotlinx.coroutines.sync.a $mutex;
                    Object L$0;
                    Object L$1;
                    int label;

                    /* JADX INFO: renamed from: androidx.lifecycle.g0$a$a$a$a$a */
                    static final class C0032a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                        final /* synthetic */ w8.p $block;
                        private /* synthetic */ Object L$0;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C0032a(w8.p pVar, kotlin.coroutines.d dVar) {
                            super(2, dVar);
                            this.$block = pVar;
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                            C0032a c0032a = new C0032a(this.$block, dVar);
                            c0032a.L$0 = obj;
                            return c0032a;
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        public final Object invokeSuspend(Object obj) {
                            Object objF = kotlin.coroutines.intrinsics.b.f();
                            int i10 = this.label;
                            if (i10 == 0) {
                                n8.s.b(obj);
                                kotlinx.coroutines.c0 c0Var = (kotlinx.coroutines.c0) this.L$0;
                                w8.p pVar = this.$block;
                                this.label = 1;
                                if (pVar.invoke(c0Var, this) == objF) {
                                    return objF;
                                }
                            } else {
                                if (i10 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                n8.s.b(obj);
                            }
                            return n8.h0.INSTANCE;
                        }

                        @Override // w8.p
                        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                            return ((C0032a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0031a(kotlinx.coroutines.sync.a aVar, w8.p pVar, kotlin.coroutines.d dVar) {
                        super(2, dVar);
                        this.$mutex = aVar;
                        this.$block = pVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                        return new C0031a(this.$mutex, this.$block, dVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        kotlinx.coroutines.sync.a aVar;
                        w8.p pVar;
                        Throwable th;
                        kotlinx.coroutines.sync.a aVar2;
                        Object objF = kotlin.coroutines.intrinsics.b.f();
                        int i10 = this.label;
                        try {
                            if (i10 == 0) {
                                n8.s.b(obj);
                                aVar = this.$mutex;
                                pVar = this.$block;
                                this.L$0 = aVar;
                                this.L$1 = pVar;
                                this.label = 1;
                                if (aVar.a(null, this) == objF) {
                                    return objF;
                                }
                            } else {
                                if (i10 != 1) {
                                    if (i10 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    aVar2 = (kotlinx.coroutines.sync.a) this.L$0;
                                    try {
                                        n8.s.b(obj);
                                        n8.h0 h0Var = n8.h0.INSTANCE;
                                        aVar2.b(null);
                                        return n8.h0.INSTANCE;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        aVar2.b(null);
                                        throw th;
                                    }
                                }
                                pVar = (w8.p) this.L$1;
                                kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) this.L$0;
                                n8.s.b(obj);
                                aVar = aVar3;
                            }
                            C0032a c0032a = new C0032a(pVar, null);
                            this.L$0 = aVar;
                            this.L$1 = null;
                            this.label = 2;
                            if (kotlinx.coroutines.d0.d(c0032a, this) == objF) {
                                return objF;
                            }
                            aVar2 = aVar;
                            n8.h0 h0Var2 = n8.h0.INSTANCE;
                            aVar2.b(null);
                            return n8.h0.INSTANCE;
                        } catch (Throwable th3) {
                            kotlinx.coroutines.sync.a aVar4 = aVar;
                            th = th3;
                            aVar2 = aVar4;
                            aVar2.b(null);
                            throw th;
                        }
                    }

                    @Override // w8.p
                    public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                        return ((C0031a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                    }
                }

                C0030a(l.a aVar, kotlin.jvm.internal.c0 c0Var, kotlinx.coroutines.c0 c0Var2, l.a aVar2, kotlinx.coroutines.i iVar, kotlinx.coroutines.sync.a aVar3, w8.p pVar) {
                    this.f2777a = aVar;
                    this.f2778b = c0Var;
                    this.f2779c = c0Var2;
                    this.f2780f = aVar2;
                    this.f2781h = iVar;
                    this.f2782i = aVar3;
                    this.f2783j = pVar;
                }

                @Override // androidx.lifecycle.p
                public final void onStateChanged(s sVar, l.a event) {
                    kotlin.jvm.internal.r.e(sVar, "<unused var>");
                    kotlin.jvm.internal.r.e(event, "event");
                    if (event == this.f2777a) {
                        this.f2778b.element = kotlinx.coroutines.g.b(this.f2779c, null, null, new C0031a(this.f2782i, this.f2783j, null), 3, null);
                        return;
                    }
                    if (event == this.f2780f) {
                        f1 f1Var = (f1) this.f2778b.element;
                        if (f1Var != null) {
                            f1.a.a(f1Var, null, 1, null);
                        }
                        this.f2778b.element = null;
                    }
                    if (event == l.a.ON_DESTROY) {
                        kotlinx.coroutines.i iVar = this.f2781h;
                        r.a aVar = n8.r.Companion;
                        iVar.resumeWith(n8.r.m59constructorimpl(n8.h0.INSTANCE));
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0029a(l lVar, l.b bVar, kotlinx.coroutines.c0 c0Var, w8.p pVar, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.$this_repeatOnLifecycle = lVar;
                this.$state = bVar;
                this.$$this$coroutineScope = c0Var;
                this.$block = pVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new C0029a(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, dVar);
            }

            /* JADX WARN: Removed duplicated region for block: B:73:0x00b7  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x00c1  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x00cf  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x00d9  */
            @Override // kotlin.coroutines.jvm.internal.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 223
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.g0.a.C0029a.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((C0029a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l lVar, l.b bVar, w8.p pVar, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$this_repeatOnLifecycle = lVar;
            this.$state = bVar;
            this.$block = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            a aVar = new a(this.$this_repeatOnLifecycle, this.$state, this.$block, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.c0 c0Var = (kotlinx.coroutines.c0) this.L$0;
                p1 p1VarF0 = kotlinx.coroutines.o0.c().F0();
                C0029a c0029a = new C0029a(this.$this_repeatOnLifecycle, this.$state, c0Var, this.$block, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(p1VarF0, c0029a, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    public static final Object a(l lVar, l.b bVar, w8.p pVar, kotlin.coroutines.d dVar) {
        Object objD;
        if (bVar != l.b.INITIALIZED) {
            return (lVar.b() != l.b.DESTROYED && (objD = kotlinx.coroutines.d0.d(new a(lVar, bVar, pVar, null), dVar)) == kotlin.coroutines.intrinsics.b.f()) ? objD : n8.h0.INSTANCE;
        }
        throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
    }
}
