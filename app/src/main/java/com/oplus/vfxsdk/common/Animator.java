package com.oplus.vfxsdk.common;

import android.animation.TimeInterpolator;
import android.view.Choreographer;
import android.view.animation.PathInterpolator;
import androidx.annotation.Keep;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class Animator implements d8.c {
    public static final d Companion = new d(null);
    public static final String TAG = "VFX:Animator";
    private final k coeExpressions;
    private final AnimatorValue data;
    private final e frameCb;
    private final d8.b iLinkProxy;
    private boolean isAnimEnd;
    private boolean isPlayMainLooper;
    private w8.a mAnimEndListener;
    private CopyOnWriteArrayList<com.oplus.vfxsdk.common.c> mAnimEndListenerList;
    private ArrayList<c> mAnimLines;
    private a mAnimMode;
    private float mAnimSpeed;
    private w8.a mAnimStartListener;
    private b mAnimStatus;
    private boolean mAnimStatusChanged;
    private w8.l mAnimUpdateListener;
    private double mCurrTime;
    private int mDirection;
    private double mEndTime;
    private boolean mPlayToDirty;
    private double mPlayToTime;
    private double mStartTime;
    private double mSyncPreTime;

    public static final class a extends Enum {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ a[] $VALUES;
        public static final a LOOP = new a("LOOP", 0);
        public static final a REVERSE_LOOP = new a("REVERSE_LOOP", 1);
        public static final a ONCE = new a("ONCE", 2);

        private static final /* synthetic */ a[] $values() {
            return new a[]{LOOP, REVERSE_LOOP, ONCE};
        }

        static {
            a[] aVarArr$values = $values();
            $VALUES = aVarArr$values;
            $ENTRIES = r8.b.a(aVarArr$values);
        }

        private a(String str, int i10) {
            super(str, i10);
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public static final class b extends Enum {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ b[] $VALUES;
        public static final b Play = new b("Play", 0);
        public static final b Pause = new b("Pause", 1);
        public static final b Stop = new b("Stop", 2);

        private static final /* synthetic */ b[] $values() {
            return new b[]{Play, Pause, Stop};
        }

        static {
            b[] bVarArr$values = $values();
            $VALUES = bVarArr$values;
            $ENTRIES = r8.b.a(bVarArr$values);
        }

        private b(String str, int i10) {
            super(str, i10);
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public final class c {

        /* JADX INFO: renamed from: a */
        private final AnimLine f11217a;

        /* JADX INFO: renamed from: b */
        private float f11218b;

        /* JADX INFO: renamed from: c */
        private float f11219c;

        /* JADX INFO: renamed from: d */
        private float f11220d;

        /* JADX INFO: renamed from: e */
        private String f11221e;

        /* JADX INFO: renamed from: f */
        private e8.e f11222f;

        /* JADX INFO: renamed from: g */
        private e8.d f11223g;

        /* JADX INFO: renamed from: h */
        private r[] f11224h;

        /* JADX INFO: renamed from: i */
        private Object f11225i;

        /* JADX INFO: renamed from: j */
        private float f11226j;

        /* JADX INFO: renamed from: k */
        private float f11227k;

        /* JADX INFO: renamed from: l */
        final /* synthetic */ Animator f11228l;

        static final class a extends kotlin.jvm.internal.s implements w8.l {
            public static final a INSTANCE = new a();

            a() {
                super(1);
            }

            @Override // w8.l
            public final Float invoke(r it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Float.valueOf(it.getTime());
            }
        }

        public static final class b implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return q8.a.a(Float.valueOf(((r) obj).getTime()), Float.valueOf(((r) obj2).getTime()));
            }
        }

        public c(Animator animator, AnimLine mAnimLine) {
            kotlin.jvm.internal.r.e(mAnimLine, "mAnimLine");
            this.f11228l = animator;
            this.f11217a = mAnimLine;
            this.f11218b = -1.0f;
            this.f11219c = -1.0f;
            this.f11221e = mAnimLine.getName();
            this.f11222f = mAnimLine.getUpdate();
            this.f11223g = mAnimLine.getPop();
            r[] animKeys = mAnimLine.getAnimKeys();
            this.f11224h = animKeys;
            if (animKeys.length > 1) {
                kotlin.collections.i.s(animKeys, new b());
            }
            this.f11226j = ((r) kotlin.collections.i.D(this.f11224h)).getTime();
            this.f11227k = ((r) kotlin.collections.i.O(this.f11224h)).getTime();
            this.f11220d = ((r) kotlin.collections.i.D(this.f11224h)).getValue();
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private final void a(EventKey eventKey) {
            String custom;
            String custom2;
            ArrayList<d8.c> arrayList = new ArrayList();
            if (this.f11228l.getILinkProxy() == null) {
                return;
            }
            Integer[] linkIds = eventKey.getLinkIds();
            if (linkIds != null) {
                Animator animator = this.f11228l;
                for (Integer num : linkIds) {
                    d8.c cVarA = animator.getILinkProxy().a(num.intValue());
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                    }
                }
            }
            for (d8.c cVar : arrayList) {
                String action = eventKey.getAction();
                if (action != null) {
                    switch (action.hashCode()) {
                        case -906224877:
                            if (action.equals("seekTo") && (custom = eventKey.getCustom()) != null && custom.length() != 0) {
                                cVar.seekTo(Double.parseDouble(eventKey.getCustom()));
                            }
                            break;
                        case 3443508:
                            if (action.equals("play")) {
                                cVar.play();
                            }
                            break;
                        case 3540994:
                            if (action.equals("stop")) {
                                cVar.stop();
                            }
                            break;
                        case 106440182:
                            if (action.equals("pause")) {
                                cVar.pause();
                            }
                            break;
                        case 109641799:
                            if (action.equals("speed") && (custom2 = eventKey.getCustom()) != null && custom2.length() != 0) {
                                cVar.setSpeed(Float.parseFloat(eventKey.getCustom()));
                            }
                            break;
                    }
                }
            }
        }

        private final void g(boolean z10) {
            d8.b iLinkProxy;
            r[] rVarArr = this.f11224h;
            int iA = com.oplus.vfxsdk.common.e.a(rVarArr, Float.valueOf(this.f11218b), a.INSTANCE);
            float interpolation = 0.0f;
            if (this.f11218b == 0.0f) {
                this.f11219c = 0.0f;
            }
            e8.d dVar = this.f11223g;
            Object objA = dVar != null ? dVar.a(this.f11217a.getChannelData(), this.f11221e, this.f11217a.getIndex()) : null;
            if ((z10 || iA <= 0) && (objA instanceof Float)) {
                b(((Number) objA).floatValue());
            }
            if (this.f11217a.getType() == u.Event) {
                if (iA > 0) {
                    r rVar = rVarArr[iA - 1];
                    if ((rVar instanceof EventKey) && rVar.getTime() >= this.f11219c && rVar.getTime() <= this.f11218b) {
                        EventKey eventKey = (EventKey) rVar;
                        if (kotlin.jvm.internal.r.a(eventKey.getEventType(), "anim")) {
                            a(eventKey);
                        } else if (kotlin.jvm.internal.r.a(eventKey.getEventType(), "notify") && eventKey.getAction() != null && (iLinkProxy = this.f11228l.getILinkProxy()) != null) {
                            iLinkProxy.b(eventKey.getAction(), eventKey.getCustom());
                        }
                    }
                }
                this.f11219c = this.f11218b;
                return;
            }
            if (iA >= rVarArr.length) {
                r rVar2 = (r) kotlin.collections.i.O(rVarArr);
                if (rVar2 instanceof AnimKey) {
                    this.f11220d = rVar2.getCacheValue();
                    e8.e eVar = this.f11222f;
                    if (eVar != null) {
                        eVar.a(this.f11217a.getChannelData(), this.f11221e, Float.valueOf(this.f11220d), this.f11217a.getIndex());
                        return;
                    }
                    return;
                }
                return;
            }
            r rVar3 = rVarArr[iA];
            if (iA == 0) {
                this.f11220d = rVarArr[0].getCacheValue();
                e8.e eVar2 = this.f11222f;
                if (eVar2 != null) {
                    eVar2.a(this.f11217a.getChannelData(), this.f11221e, Float.valueOf(this.f11220d), this.f11217a.getIndex());
                    return;
                }
                return;
            }
            if ((rVar3 instanceof AnimKey) && kotlin.jvm.internal.r.a(((AnimKey) rVar3).getExpr(), "origin") && this.f11225i != null && !kotlin.jvm.internal.r.a(Float.valueOf(rVar3.getValue()), this.f11225i)) {
                Object obj = this.f11225i;
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Float");
                rVar3.setValue(((Float) obj).floatValue());
            }
            float cacheValue = rVar3.getCacheValue();
            r rVar4 = rVarArr[iA - 1];
            kotlin.jvm.internal.r.c(rVar4, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimKey");
            AnimKey animKey = (AnimKey) rVar4;
            float time = animKey.getTime();
            float cacheValue2 = animKey.getCacheValue();
            float time2 = rVar3.getTime() - time;
            String ipol = animKey.getIpol();
            if (kotlin.jvm.internal.r.a(ipol, "bezier")) {
                if (animKey.getInterpolator() == null) {
                    animKey.setInterpolator(new PathInterpolator(animKey.getBezier()[0], animKey.getBezier()[1], animKey.getBezier()[2], animKey.getBezier()[3]));
                }
                TimeInterpolator interpolator = animKey.getInterpolator();
                kotlin.jvm.internal.r.b(interpolator);
                interpolation = interpolator.getInterpolation((this.f11218b - time) / time2);
            } else if (kotlin.jvm.internal.r.a(ipol, "spring")) {
                if (animKey.getInterpolator() == null) {
                    animKey.setInterpolator(com.oplus.vfxsdk.common.b.a(animKey.getSpring()[0], animKey.getSpring()[1], animKey.getSpring()[2]));
                }
                TimeInterpolator interpolator2 = animKey.getInterpolator();
                kotlin.jvm.internal.r.c(interpolator2, "null cannot be cast to non-null type <root>.COUISpringAnimation");
                defpackage.a aVar = (defpackage.a) interpolator2;
                if (aVar.a() == 100.0f) {
                    aVar.c();
                }
                float time3 = this.f11218b - animKey.getTime();
                TimeInterpolator interpolator3 = animKey.getInterpolator();
                kotlin.jvm.internal.r.b(interpolator3);
                interpolation = interpolator3.getInterpolation(time3 * 1000.0f);
            }
            this.f11220d = cacheValue2 + (interpolation * (cacheValue - cacheValue2));
            e8.e eVar3 = this.f11222f;
            if (eVar3 != null) {
                eVar3.a(this.f11217a.getChannelData(), this.f11221e, Float.valueOf(this.f11220d), this.f11217a.getIndex());
            }
        }

        public static /* synthetic */ void i(c cVar, double d10, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            cVar.h(d10, z10);
        }

        public final void b(float f10) {
            this.f11225i = Float.valueOf(f10);
            for (r rVar : this.f11224h) {
                rVar.setCacheValue(c(rVar));
            }
        }

        public final float c(r animKey) {
            AnimKey animKey2;
            String expr;
            float fFloatValue;
            kotlin.jvm.internal.r.e(animKey, "animKey");
            if (!(animKey instanceof AnimKey) || (expr = (animKey2 = (AnimKey) animKey).getExpr()) == null || expr.length() == 0) {
                return animKey.getValue();
            }
            Object obj = this.f11225i;
            if (obj == null || !(obj instanceof Float)) {
                fFloatValue = 0.0f;
            } else {
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Float");
                fFloatValue = ((Float) obj).floatValue();
            }
            k coeExpressions = this.f11228l.getCoeExpressions();
            String expr2 = animKey2.getExpr();
            kotlin.jvm.internal.r.b(expr2);
            return coeExpressions.a(expr2, animKey.getValue(), fFloatValue).floatValue();
        }

        public final AnimLine d() {
            return this.f11217a;
        }

        public final float e() {
            return this.f11227k;
        }

        public final float f() {
            return this.f11226j;
        }

        public final void h(double d10, boolean z10) {
            float f10 = (float) d10;
            if (this.f11218b != f10 || z10) {
                this.f11218b = f10;
                g(z10);
            }
        }

        public final void j(int i10, float f10) {
            this.f11224h[i10].setValue(f10);
        }

        public final void k(e8.d dVar) {
            this.f11223g = dVar;
        }

        public final void l(e8.e eVar) {
            this.f11222f = eVar;
        }

        public final void m(int i10) {
            this.f11228l.getCoeExpressions().b(i10);
        }
    }

    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private d() {
        }
    }

    private static final class e implements Choreographer.FrameCallback {

        /* JADX INFO: renamed from: a */
        private final WeakReference f11229a;

        public e(Animator animator) {
            kotlin.jvm.internal.r.e(animator, "animator");
            this.f11229a = new WeakReference(animator);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            Animator animator = (Animator) this.f11229a.get();
            if (animator == null) {
                return;
            }
            animator.frameUpdate(j10 / 1.0E9d);
            if (animator.isPlay()) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    public Animator(AnimatorValue data, k coeExpressions, d8.b bVar) {
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(coeExpressions, "coeExpressions");
        this.data = data;
        this.coeExpressions = coeExpressions;
        this.iLinkProxy = bVar;
        this.mStartTime = Double.MAX_VALUE;
        this.mEndTime = Double.MIN_VALUE;
        this.mAnimLines = new ArrayList<>();
        this.mAnimSpeed = 1.0f;
        this.mSyncPreTime = -1.0d;
        this.mDirection = 1;
        this.mAnimMode = a.ONCE;
        this.mAnimStatus = b.Pause;
        this.isPlayMainLooper = true;
        this.frameCb = new e(this);
        this.mAnimEndListenerList = new CopyOnWriteArrayList<>();
    }

    private final void addAnimLine(AnimLine animLine) {
        if (animLine.getAnimKeys().length == 0) {
            return;
        }
        c cVar = new c(this, animLine);
        if (cVar.f() < this.mStartTime) {
            this.mStartTime = cVar.f();
        }
        if (cVar.e() > this.mEndTime) {
            this.mEndTime = cVar.e();
        }
        this.mAnimLines.add(cVar);
    }

    private final double clampValue(double d10, double d11, double d12) {
        return d10 > d12 ? d12 : d10 < d11 ? d11 : d10;
    }

    public final void frameUpdate(double d10) {
        b bVar;
        w8.l lVar;
        if (this.mSyncPreTime < 0.0d) {
            this.mSyncPreTime = d10;
        }
        if (d10 - this.mSyncPreTime > 0.1d) {
            this.mSyncPreTime = d10;
        }
        if (this.mAnimStatusChanged && this.mAnimStatus == b.Play) {
            this.mAnimStatusChanged = false;
            w8.a aVar = this.mAnimStartListener;
            if (aVar != null) {
            }
        }
        for (c cVar : this.mAnimLines) {
            kotlin.jvm.internal.r.b(cVar);
            c.i(cVar, this.mCurrTime, false, 2, null);
        }
        b bVar2 = this.mAnimStatus;
        b bVar3 = b.Play;
        if (bVar2 == bVar3 && (lVar = this.mAnimUpdateListener) != null) {
        }
        double d11 = this.mAnimStatus == bVar3 ? d10 - this.mSyncPreTime : 0.0d;
        double d12 = this.mCurrTime;
        double d13 = ((double) this.mAnimSpeed) * d11;
        int i10 = this.mDirection;
        double d14 = d12 + (d13 * ((double) i10));
        this.mCurrTime = d14;
        double d15 = this.mEndTime;
        if (d14 > d15 || d14 < 0.0d) {
            a aVar2 = this.mAnimMode;
            if (aVar2 == a.LOOP) {
                this.mCurrTime = 0.0d;
            } else if (aVar2 == a.REVERSE_LOOP) {
                this.mDirection = -i10;
            } else if (aVar2 == a.ONCE) {
                this.mCurrTime = d14 > d15 ? d15 : 0.0d;
                boolean z10 = this.mPlayToDirty;
                if (z10) {
                    bVar = b.Pause;
                } else {
                    if (z10) {
                        throw new n8.o();
                    }
                    bVar = b.Stop;
                }
                this.mAnimStatus = bVar;
                this.isAnimEnd = true;
            }
        }
        if (this.mPlayToDirty && Math.abs(this.mCurrTime - this.mPlayToTime) < d11 * ((double) this.mAnimSpeed) * 2.0d) {
            this.mPlayToDirty = false;
            this.mDirection = 1;
            this.mAnimStatus = b.Pause;
            this.mCurrTime = this.mPlayToTime;
            this.isAnimEnd = true;
        }
        if (this.isAnimEnd) {
            w8.a aVar3 = this.mAnimEndListener;
            if (aVar3 != null) {
            }
            Iterator<com.oplus.vfxsdk.common.c> it = this.mAnimEndListenerList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.isAnimEnd = false;
            if (this.mAnimMode == a.ONCE && this.mAnimStatus == b.Stop) {
                reset();
            }
        }
        this.mSyncPreTime = d10;
    }

    private final void reset() {
        this.mCurrTime = 0.0d;
        this.mDirection = 1;
        this.mPlayToDirty = false;
    }

    public final void addAnimEndListener(com.oplus.vfxsdk.common.c cb) {
        kotlin.jvm.internal.r.e(cb, "cb");
        this.mAnimEndListenerList.add(cb);
    }

    public final k getCoeExpressions() {
        return this.coeExpressions;
    }

    public final AnimatorValue getData() {
        return this.data;
    }

    public final d8.b getILinkProxy() {
        return this.iLinkProxy;
    }

    public final a getMAnimMode() {
        return this.mAnimMode;
    }

    public final b getMAnimStatus() {
        return this.mAnimStatus;
    }

    public final void init() {
        for (AnimLine animLine : this.data.getAnimLines()) {
            addAnimLine(animLine);
        }
        AnimLine eventLine = this.data.getEventLine();
        if (eventLine != null) {
            addAnimLine(eventLine);
        }
        this.mCurrTime = 0.0d;
    }

    public final boolean isPause() {
        return this.mAnimStatus == b.Pause;
    }

    public final boolean isPlay() {
        return this.mAnimStatus == b.Play;
    }

    public final boolean isPlayMainLooper() {
        return this.isPlayMainLooper;
    }

    public void onUpdate(double d10) {
        frameUpdate(d10);
    }

    @Override // d8.c
    public void pause() {
        this.mAnimStatus = b.Pause;
    }

    @Override // d8.c
    public void play() {
        b bVar = this.mAnimStatus;
        b bVar2 = b.Play;
        if (bVar != bVar2) {
            Choreographer.getInstance().postFrameCallback(this.frameCb);
            this.mAnimStatusChanged = true;
        }
        this.mAnimStatus = bVar2;
    }

    public final void playTo(double d10) {
        double dClampValue = clampValue(d10, 0.0d, this.mEndTime);
        play(this.isPlayMainLooper);
        this.mDirection = this.mCurrTime < dClampValue ? 1 : -1;
        this.mPlayToDirty = true;
        this.mPlayToTime = dClampValue;
    }

    public final void removeAnimEndListener(com.oplus.vfxsdk.common.c cb) {
        kotlin.jvm.internal.r.e(cb, "cb");
        this.mAnimEndListenerList.remove(cb);
    }

    public final void restart(boolean z10) {
        reset();
        play(z10);
    }

    public final void seekNext() {
        pause();
        double d10 = this.mCurrTime + 0.016666666666666666d;
        this.mCurrTime = d10;
        if (d10 > this.mEndTime) {
            this.mCurrTime = 0.0d;
        }
        Iterator<c> it = this.mAnimLines.iterator();
        while (it.hasNext()) {
            it.next().h(this.mCurrTime, true);
        }
    }

    @Override // d8.c
    public void seekTo(double d10) {
        this.mAnimStatus = b.Play;
        this.mCurrTime = d10;
        Iterator<c> it = this.mAnimLines.iterator();
        while (it.hasNext()) {
            it.next().h(d10, true);
        }
        pause();
    }

    public final void seekToEnd() {
        Iterator<c> it = this.mAnimLines.iterator();
        float fMax = 0.0f;
        while (it.hasNext()) {
            fMax = Math.max(fMax, it.next().e());
        }
        seekTo(fMax);
    }

    public final void setAnimEndListener(w8.a cb) {
        kotlin.jvm.internal.r.e(cb, "cb");
        this.mAnimEndListener = cb;
    }

    public final void setAnimKeyValue(String lineName, int i10, float f10) {
        kotlin.jvm.internal.r.e(lineName, "lineName");
        for (c cVar : this.mAnimLines) {
            if (kotlin.jvm.internal.r.a(cVar.d().getName(), lineName)) {
                cVar.j(i10, f10);
            }
        }
    }

    public final void setAnimLinePop(int i10, e8.d dVar) {
        for (c cVar : this.mAnimLines) {
            if (cVar.d().hashCode() == i10) {
                cVar.k(dVar);
            }
        }
    }

    public final void setAnimLineUpdate(int i10, e8.e eVar) {
        for (c cVar : this.mAnimLines) {
            if (cVar.d().hashCode() == i10) {
                cVar.l(eVar);
            }
        }
    }

    public final void setAnimStartListener(w8.a cb) {
        kotlin.jvm.internal.r.e(cb, "cb");
        this.mAnimStartListener = cb;
    }

    public final void setAnimUpdateListener(w8.l cb) {
        kotlin.jvm.internal.r.e(cb, "cb");
        this.mAnimUpdateListener = cb;
    }

    public void setLoop(boolean z10) {
        this.mAnimMode = z10 ? a.LOOP : a.ONCE;
    }

    public final void setMAnimMode(a aVar) {
        kotlin.jvm.internal.r.e(aVar, "<set-?>");
        this.mAnimMode = aVar;
    }

    public final void setMAnimStatus(b bVar) {
        kotlin.jvm.internal.r.e(bVar, "<set-?>");
        this.mAnimStatus = bVar;
    }

    public final void setPlayMainLooper(boolean z10) {
        this.isPlayMainLooper = z10;
    }

    @Override // d8.c
    public void setSpeed(float f10) {
        this.mAnimSpeed = f10;
    }

    @Override // d8.c
    public void stop() {
        this.mAnimStatus = b.Stop;
        reset();
    }

    public final void switchAnimIndex(int i10) {
        this.mAnimStatus = b.Play;
        Iterator<c> it = this.mAnimLines.iterator();
        while (it.hasNext()) {
            it.next().m(i10);
        }
        pause();
    }

    public final void play(boolean z10) {
        b bVar = this.mAnimStatus;
        b bVar2 = b.Play;
        if (bVar != bVar2) {
            if (z10) {
                Choreographer.getInstance().postFrameCallback(this.frameCb);
            }
            this.mAnimStatusChanged = true;
        }
        this.mAnimStatus = bVar2;
    }

    public /* synthetic */ Animator(AnimatorValue animatorValue, k kVar, d8.b bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(animatorValue, kVar, (i10 & 4) != 0 ? null : bVar);
    }
}
