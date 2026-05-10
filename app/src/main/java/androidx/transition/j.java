package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.core.view.m0;
import androidx.dynamicanimation.animation.c;
import androidx.transition.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class j implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<v> mEndValuesList;
    private f mEpicenterCallback;
    private i[] mListenersCache;
    private androidx.collection.a mNameOverrides;
    r mPropagation;
    h mSeekController;
    long mSeekOffsetInParent;
    private ArrayList<v> mStartValuesList;
    long mTotalDuration;
    private static final Animator[] EMPTY_ANIMATOR_ARRAY = new Animator[0];
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final androidx.transition.g STRAIGHT_PATH_MOTION = new a();
    private static ThreadLocal<androidx.collection.a> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private w mStartValues = new w();
    private w mEndValues = new w();
    t mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private Animator[] mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
    int mNumInstances = 0;
    private boolean mPaused = false;
    boolean mEnded = false;
    private j mCloneParent = null;
    private ArrayList<i> mListeners = null;
    ArrayList<Animator> mAnimators = new ArrayList<>();
    private androidx.transition.g mPathMotion = STRAIGHT_PATH_MOTION;

    class a extends androidx.transition.g {
        a() {
        }

        @Override // androidx.transition.g
        public Path a(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.collection.a f3690a;

        b(androidx.collection.a aVar) {
            this.f3690a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3690a.remove(animator);
            j.this.mCurrentAnimators.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.mCurrentAnimators.add(animator);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.end();
            animator.removeListener(this);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f3693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f3694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        v f3695c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        WindowId f3696d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        j f3697e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Animator f3698f;

        d(View view, String str, j jVar, WindowId windowId, v vVar, Animator animator) {
            this.f3693a = view;
            this.f3694b = str;
            this.f3695c = vVar;
            this.f3696d = windowId;
            this.f3697e = jVar;
            this.f3698f = animator;
        }
    }

    private static class e {
        static ArrayList a(ArrayList arrayList, Object obj) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (!arrayList.contains(obj)) {
                arrayList.add(obj);
            }
            return arrayList;
        }

        static ArrayList b(ArrayList arrayList, Object obj) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(obj);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    public static abstract class f {
        public abstract Rect a(j jVar);
    }

    private static class g {
        static long a(Animator animator) {
            return animator.getTotalDuration();
        }

        static void b(Animator animator, long j10) {
            ((AnimatorSet) animator).setCurrentPlayTime(j10);
        }
    }

    class h extends p implements s, c.r {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f3702f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f3703h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f3699a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList f3700b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ArrayList f3701c = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private c0.a[] f3704i = null;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final x f3705j = new x();

        h() {
        }

        private void h() {
            ArrayList arrayList = this.f3701c;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            int size = this.f3701c.size();
            if (this.f3704i == null) {
                this.f3704i = new c0.a[size];
            }
            c0.a[] aVarArr = (c0.a[]) this.f3701c.toArray(this.f3704i);
            this.f3704i = null;
            for (int i10 = 0; i10 < size; i10++) {
                aVarArr[i10].accept(this);
                aVarArr[i10] = null;
            }
            this.f3704i = aVarArr;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void b(j jVar) {
            this.f3703h = true;
        }

        public long i() {
            return j.this.getTotalDurationMillis();
        }

        void j() {
            long j10 = i() == 0 ? 1L : 0L;
            j.this.setCurrentPlayTimeMillis(j10, this.f3699a);
            this.f3699a = j10;
        }

        public void k() {
            this.f3702f = true;
            ArrayList arrayList = this.f3700b;
            if (arrayList != null) {
                this.f3700b = null;
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ((c0.a) arrayList.get(i10)).accept(this);
                }
            }
            h();
        }

        @Override // androidx.dynamicanimation.animation.c.r
        public void onAnimationUpdate(androidx.dynamicanimation.animation.c cVar, float f10, float f11) {
            long jMax = Math.max(-1L, Math.min(i() + 1, Math.round(f10)));
            j.this.setCurrentPlayTimeMillis(jMax, this.f3699a);
            this.f3699a = jMax;
            h();
        }
    }

    public interface i {
        void a(j jVar);

        void b(j jVar);

        default void c(j jVar, boolean z10) {
            a(jVar);
        }

        void d(j jVar);

        void e(j jVar);

        default void f(j jVar, boolean z10) {
            g(jVar);
        }

        void g(j jVar);
    }

    /* JADX INFO: renamed from: androidx.transition.j$j, reason: collision with other inner class name */
    interface InterfaceC0045j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final InterfaceC0045j f3707a = new InterfaceC0045j() { // from class: androidx.transition.k
            @Override // androidx.transition.j.InterfaceC0045j
            public final void a(j.i iVar, j jVar, boolean z10) {
                iVar.c(jVar, z10);
            }
        };

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final InterfaceC0045j f3708b = new InterfaceC0045j() { // from class: androidx.transition.l
            @Override // androidx.transition.j.InterfaceC0045j
            public final void a(j.i iVar, j jVar, boolean z10) {
                iVar.f(jVar, z10);
            }
        };

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final InterfaceC0045j f3709c = new InterfaceC0045j() { // from class: androidx.transition.m
            @Override // androidx.transition.j.InterfaceC0045j
            public final void a(j.i iVar, j jVar, boolean z10) {
                iVar.b(jVar);
            }
        };

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final InterfaceC0045j f3710d = new InterfaceC0045j() { // from class: androidx.transition.n
            @Override // androidx.transition.j.InterfaceC0045j
            public final void a(j.i iVar, j jVar, boolean z10) {
                iVar.d(jVar);
            }
        };

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final InterfaceC0045j f3711e = new InterfaceC0045j() { // from class: androidx.transition.o
            @Override // androidx.transition.j.InterfaceC0045j
            public final void a(j.i iVar, j jVar, boolean z10) {
                iVar.e(jVar);
            }
        };

        void a(i iVar, j jVar, boolean z10);
    }

    private void a(androidx.collection.a aVar, androidx.collection.a aVar2) {
        for (int i10 = 0; i10 < aVar.size(); i10++) {
            v vVar = (v) aVar.k(i10);
            if (isValidTarget(vVar.f3730b)) {
                this.mStartValuesList.add(vVar);
                this.mEndValuesList.add(null);
            }
        }
        for (int i11 = 0; i11 < aVar2.size(); i11++) {
            v vVar2 = (v) aVar2.k(i11);
            if (isValidTarget(vVar2.f3730b)) {
                this.mEndValuesList.add(vVar2);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void b(w wVar, View view, v vVar) {
        wVar.f3732a.put(view, vVar);
        int id = view.getId();
        if (id >= 0) {
            if (wVar.f3733b.indexOfKey(id) >= 0) {
                wVar.f3733b.put(id, null);
            } else {
                wVar.f3733b.put(id, view);
            }
        }
        String strE = m0.E(view);
        if (strE != null) {
            if (wVar.f3735d.containsKey(strE)) {
                wVar.f3735d.put(strE, null);
            } else {
                wVar.f3735d.put(strE, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (wVar.f3734c.f(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    wVar.f3734c.i(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) wVar.f3734c.e(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    wVar.f3734c.i(itemIdAtPosition, null);
                }
            }
        }
    }

    private static boolean d(int[] iArr, int i10) {
        int i11 = iArr[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return true;
            }
        }
        return false;
    }

    private void e(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.mTargetExcludes;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    v vVar = new v(view);
                    if (z10) {
                        captureStartValues(vVar);
                    } else {
                        captureEndValues(vVar);
                    }
                    vVar.f3731c.add(this);
                    capturePropagationValues(vVar);
                    if (z10) {
                        b(this.mStartValues, view, vVar);
                    } else {
                        b(this.mEndValues, view, vVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i11 = 0; i11 < size2; i11++) {
                                    if (this.mTargetTypeChildExcludes.get(i11).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                                e(viewGroup.getChildAt(i12), z10);
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList f(ArrayList arrayList, int i10, boolean z10) {
        return i10 > 0 ? z10 ? e.a(arrayList, Integer.valueOf(i10)) : e.b(arrayList, Integer.valueOf(i10)) : arrayList;
    }

    private static ArrayList g(ArrayList arrayList, Object obj, boolean z10) {
        return obj != null ? z10 ? e.a(arrayList, obj) : e.b(arrayList, obj) : arrayList;
    }

    private ArrayList h(ArrayList arrayList, Class cls, boolean z10) {
        return cls != null ? z10 ? e.a(arrayList, cls) : e.b(arrayList, cls) : arrayList;
    }

    private ArrayList i(ArrayList arrayList, View view, boolean z10) {
        return view != null ? z10 ? e.a(arrayList, view) : e.b(arrayList, view) : arrayList;
    }

    private static androidx.collection.a j() {
        androidx.collection.a aVar = sRunningAnimators.get();
        if (aVar != null) {
            return aVar;
        }
        androidx.collection.a aVar2 = new androidx.collection.a();
        sRunningAnimators.set(aVar2);
        return aVar2;
    }

    private static boolean k(int i10) {
        return i10 >= 1 && i10 <= 4;
    }

    private static boolean l(v vVar, v vVar2, String str) {
        Object obj = vVar.f3729a.get(str);
        Object obj2 = vVar2.f3729a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    private void m(androidx.collection.a aVar, androidx.collection.a aVar2, SparseArray sparseArray, SparseArray sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) sparseArray.valueAt(i10);
            if (view2 != null && isValidTarget(view2) && (view = (View) sparseArray2.get(sparseArray.keyAt(i10))) != null && isValidTarget(view)) {
                v vVar = (v) aVar.get(view2);
                v vVar2 = (v) aVar2.get(view);
                if (vVar != null && vVar2 != null) {
                    this.mStartValuesList.add(vVar);
                    this.mEndValuesList.add(vVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void n(androidx.collection.a aVar, androidx.collection.a aVar2) {
        v vVar;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.g(size);
            if (view != null && isValidTarget(view) && (vVar = (v) aVar2.remove(view)) != null && isValidTarget(vVar.f3730b)) {
                this.mStartValuesList.add((v) aVar.i(size));
                this.mEndValuesList.add(vVar);
            }
        }
    }

    private void o(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.f fVar, androidx.collection.f fVar2) {
        View view;
        int iL = fVar.l();
        for (int i10 = 0; i10 < iL; i10++) {
            View view2 = (View) fVar.m(i10);
            if (view2 != null && isValidTarget(view2) && (view = (View) fVar2.e(fVar.h(i10))) != null && isValidTarget(view)) {
                v vVar = (v) aVar.get(view2);
                v vVar2 = (v) aVar2.get(view);
                if (vVar != null && vVar2 != null) {
                    this.mStartValuesList.add(vVar);
                    this.mEndValuesList.add(vVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void p(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3, androidx.collection.a aVar4) {
        View view;
        int size = aVar3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) aVar3.k(i10);
            if (view2 != null && isValidTarget(view2) && (view = (View) aVar4.get(aVar3.g(i10))) != null && isValidTarget(view)) {
                v vVar = (v) aVar.get(view2);
                v vVar2 = (v) aVar2.get(view);
                if (vVar != null && vVar2 != null) {
                    this.mStartValuesList.add(vVar);
                    this.mEndValuesList.add(vVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void q(w wVar, w wVar2) {
        androidx.collection.a aVar = new androidx.collection.a(wVar.f3732a);
        androidx.collection.a aVar2 = new androidx.collection.a(wVar2.f3732a);
        int i10 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i10 >= iArr.length) {
                a(aVar, aVar2);
                return;
            }
            int i11 = iArr[i10];
            if (i11 == 1) {
                n(aVar, aVar2);
            } else if (i11 == 2) {
                p(aVar, aVar2, wVar.f3735d, wVar2.f3735d);
            } else if (i11 == 3) {
                m(aVar, aVar2, wVar.f3733b, wVar2.f3733b);
            } else if (i11 == 4) {
                o(aVar, aVar2, wVar.f3734c, wVar2.f3734c);
            }
            i10++;
        }
    }

    private void r(j jVar, InterfaceC0045j interfaceC0045j, boolean z10) {
        j jVar2 = this.mCloneParent;
        if (jVar2 != null) {
            jVar2.r(jVar, interfaceC0045j, z10);
        }
        ArrayList<i> arrayList = this.mListeners;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.mListeners.size();
        i[] iVarArr = this.mListenersCache;
        if (iVarArr == null) {
            iVarArr = new i[size];
        }
        this.mListenersCache = null;
        i[] iVarArr2 = (i[]) this.mListeners.toArray(iVarArr);
        for (int i10 = 0; i10 < size; i10++) {
            interfaceC0045j.a(iVarArr2[i10], jVar, z10);
            iVarArr2[i10] = null;
        }
        this.mListenersCache = iVarArr2;
    }

    private void s(Animator animator, androidx.collection.a aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            animate(animator);
        }
    }

    public j addListener(i iVar) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(iVar);
        return this;
    }

    public j addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    protected void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new c());
        animator.start();
    }

    protected void cancel() {
        int size = this.mCurrentAnimators.size();
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            animator.cancel();
        }
        this.mAnimatorCache = animatorArr;
        notifyListeners(InterfaceC0045j.f3709c, false);
    }

    public abstract void captureEndValues(v vVar);

    void capturePropagationValues(v vVar) {
    }

    public abstract void captureStartValues(v vVar);

    void captureValues(ViewGroup viewGroup, boolean z10) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        androidx.collection.a aVar;
        clearValues(z10);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                View viewFindViewById = viewGroup.findViewById(this.mTargetIds.get(i10).intValue());
                if (viewFindViewById != null) {
                    v vVar = new v(viewFindViewById);
                    if (z10) {
                        captureStartValues(vVar);
                    } else {
                        captureEndValues(vVar);
                    }
                    vVar.f3731c.add(this);
                    capturePropagationValues(vVar);
                    if (z10) {
                        b(this.mStartValues, viewFindViewById, vVar);
                    } else {
                        b(this.mEndValues, viewFindViewById, vVar);
                    }
                }
            }
            for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                View view = this.mTargets.get(i11);
                v vVar2 = new v(view);
                if (z10) {
                    captureStartValues(vVar2);
                } else {
                    captureEndValues(vVar2);
                }
                vVar2.f3731c.add(this);
                capturePropagationValues(vVar2);
                if (z10) {
                    b(this.mStartValues, view, vVar2);
                } else {
                    b(this.mEndValues, view, vVar2);
                }
            }
        } else {
            e(viewGroup, z10);
        }
        if (z10 || (aVar = this.mNameOverrides) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            arrayList3.add((View) this.mStartValues.f3735d.remove((String) this.mNameOverrides.g(i12)));
        }
        for (int i13 = 0; i13 < size; i13++) {
            View view2 = (View) arrayList3.get(i13);
            if (view2 != null) {
                this.mStartValues.f3735d.put((String) this.mNameOverrides.k(i13), view2);
            }
        }
    }

    void clearValues(boolean z10) {
        if (z10) {
            this.mStartValues.f3732a.clear();
            this.mStartValues.f3733b.clear();
            this.mStartValues.f3734c.a();
        } else {
            this.mEndValues.f3732a.clear();
            this.mEndValues.f3733b.clear();
            this.mEndValues.f3734c.a();
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, v vVar, v vVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void createAnimators(android.view.ViewGroup r19, androidx.transition.w r20, androidx.transition.w r21, java.util.ArrayList<androidx.transition.v> r22, java.util.ArrayList<androidx.transition.v> r23) {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.j.createAnimators(android.view.ViewGroup, androidx.transition.w, androidx.transition.w, java.util.ArrayList, java.util.ArrayList):void");
    }

    s createSeekController() {
        h hVar = new h();
        this.mSeekController = hVar;
        addListener(hVar);
        return this.mSeekController;
    }

    protected void end() {
        int i10 = this.mNumInstances - 1;
        this.mNumInstances = i10;
        if (i10 == 0) {
            notifyListeners(InterfaceC0045j.f3708b, false);
            for (int i11 = 0; i11 < this.mStartValues.f3734c.l(); i11++) {
                View view = (View) this.mStartValues.f3734c.m(i11);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i12 = 0; i12 < this.mEndValues.f3734c.l(); i12++) {
                View view2 = (View) this.mEndValues.f3734c.m(i12);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
    }

    public j excludeChildren(View view, boolean z10) {
        this.mTargetChildExcludes = i(this.mTargetChildExcludes, view, z10);
        return this;
    }

    public j excludeTarget(View view, boolean z10) {
        this.mTargetExcludes = i(this.mTargetExcludes, view, z10);
        return this;
    }

    void forceToEnd(ViewGroup viewGroup) {
        androidx.collection.a aVarJ = j();
        int size = aVarJ.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        WindowId windowId = viewGroup.getWindowId();
        androidx.collection.a aVar = new androidx.collection.a(aVarJ);
        aVarJ.clear();
        for (int i10 = size - 1; i10 >= 0; i10--) {
            d dVar = (d) aVar.k(i10);
            if (dVar.f3693a != null && windowId.equals(dVar.f3696d)) {
                ((Animator) aVar.g(i10)).end();
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        f fVar = this.mEpicenterCallback;
        if (fVar == null) {
            return null;
        }
        return fVar.a(this);
    }

    public f getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        if (r3 < 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002f, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0031, code lost:
    
        r5 = r5.mEndValuesList;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        r5 = r5.mStartValuesList;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        return r5.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.transition.v getMatchedTransitionValues(android.view.View r6, boolean r7) {
        /*
            r5 = this;
            androidx.transition.t r0 = r5.mParent
            if (r0 == 0) goto L9
            androidx.transition.v r5 = r0.getMatchedTransitionValues(r6, r7)
            return r5
        L9:
            if (r7 == 0) goto Le
            java.util.ArrayList<androidx.transition.v> r0 = r5.mStartValuesList
            goto L10
        Le:
            java.util.ArrayList<androidx.transition.v> r0 = r5.mEndValuesList
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = 0
        L19:
            if (r3 >= r2) goto L2c
            java.lang.Object r4 = r0.get(r3)
            androidx.transition.v r4 = (androidx.transition.v) r4
            if (r4 != 0) goto L24
            return r1
        L24:
            android.view.View r4 = r4.f3730b
            if (r4 != r6) goto L29
            goto L2d
        L29:
            int r3 = r3 + 1
            goto L19
        L2c:
            r3 = -1
        L2d:
            if (r3 < 0) goto L3d
            if (r7 == 0) goto L34
            java.util.ArrayList<androidx.transition.v> r5 = r5.mEndValuesList
            goto L36
        L34:
            java.util.ArrayList<androidx.transition.v> r5 = r5.mStartValuesList
        L36:
            java.lang.Object r5 = r5.get(r3)
            r1 = r5
            androidx.transition.v r1 = (androidx.transition.v) r1
        L3d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.j.getMatchedTransitionValues(android.view.View, boolean):androidx.transition.v");
    }

    public String getName() {
        return this.mName;
    }

    public androidx.transition.g getPathMotion() {
        return this.mPathMotion;
    }

    public r getPropagation() {
        return null;
    }

    public final j getRootTransition() {
        t tVar = this.mParent;
        return tVar != null ? tVar.getRootTransition() : this;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class<?>> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    final long getTotalDurationMillis() {
        return this.mTotalDuration;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public v getTransitionValues(View view, boolean z10) {
        t tVar = this.mParent;
        if (tVar != null) {
            return tVar.getTransitionValues(view, z10);
        }
        return (v) (z10 ? this.mStartValues : this.mEndValues).f3732a.get(view);
    }

    boolean hasAnimators() {
        return !this.mCurrentAnimators.isEmpty();
    }

    public boolean isSeekingSupported() {
        return false;
    }

    public boolean isTransitionRequired(v vVar, v vVar2) {
        if (vVar == null || vVar2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties == null) {
            Iterator it = vVar.f3729a.keySet().iterator();
            while (it.hasNext()) {
                if (l(vVar, vVar2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : transitionProperties) {
            if (!l(vVar, vVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean isValidTarget(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && m0.E(view) != null && this.mTargetNameExcludes.contains(m0.E(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(m0.E(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i11 = 0; i11 < this.mTargetTypes.size(); i11++) {
                if (this.mTargetTypes.get(i11).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    void notifyListeners(InterfaceC0045j interfaceC0045j, boolean z10) {
        r(this, interfaceC0045j, z10);
    }

    public void pause(View view) {
        if (this.mEnded) {
            return;
        }
        int size = this.mCurrentAnimators.size();
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            animator.pause();
        }
        this.mAnimatorCache = animatorArr;
        notifyListeners(InterfaceC0045j.f3710d, false);
        this.mPaused = true;
    }

    void playTransition(ViewGroup viewGroup) {
        d dVar;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        q(this.mStartValues, this.mEndValues);
        androidx.collection.a aVarJ = j();
        int size = aVarJ.size();
        WindowId windowId = viewGroup.getWindowId();
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = (Animator) aVarJ.g(i10);
            if (animator != null && (dVar = (d) aVarJ.get(animator)) != null && dVar.f3693a != null && windowId.equals(dVar.f3696d)) {
                v vVar = dVar.f3695c;
                View view = dVar.f3693a;
                v transitionValues = getTransitionValues(view, true);
                v matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (transitionValues == null && matchedTransitionValues == null) {
                    matchedTransitionValues = (v) this.mEndValues.f3732a.get(view);
                }
                if ((transitionValues != null || matchedTransitionValues != null) && dVar.f3697e.isTransitionRequired(vVar, matchedTransitionValues)) {
                    j jVar = dVar.f3697e;
                    if (jVar.getRootTransition().mSeekController != null) {
                        animator.cancel();
                        jVar.mCurrentAnimators.remove(animator);
                        aVarJ.remove(animator);
                        if (jVar.mCurrentAnimators.size() == 0) {
                            jVar.notifyListeners(InterfaceC0045j.f3709c, false);
                            if (!jVar.mEnded) {
                                jVar.mEnded = true;
                                jVar.notifyListeners(InterfaceC0045j.f3708b, false);
                            }
                        }
                    } else if (animator.isRunning() || animator.isStarted()) {
                        animator.cancel();
                    } else {
                        aVarJ.remove(animator);
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        if (this.mSeekController == null) {
            runAnimators();
        } else if (Build.VERSION.SDK_INT >= 34) {
            prepareAnimatorsForSeeking();
            this.mSeekController.j();
            this.mSeekController.k();
        }
    }

    void prepareAnimatorsForSeeking() {
        androidx.collection.a aVarJ = j();
        this.mTotalDuration = 0L;
        for (int i10 = 0; i10 < this.mAnimators.size(); i10++) {
            Animator animator = this.mAnimators.get(i10);
            d dVar = (d) aVarJ.get(animator);
            if (animator != null && dVar != null) {
                if (getDuration() >= 0) {
                    dVar.f3698f.setDuration(getDuration());
                }
                if (getStartDelay() >= 0) {
                    dVar.f3698f.setStartDelay(getStartDelay() + dVar.f3698f.getStartDelay());
                }
                if (getInterpolator() != null) {
                    dVar.f3698f.setInterpolator(getInterpolator());
                }
                this.mCurrentAnimators.add(animator);
                this.mTotalDuration = Math.max(this.mTotalDuration, g.a(animator));
            }
        }
        this.mAnimators.clear();
    }

    public j removeListener(i iVar) {
        j jVar;
        ArrayList<i> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(iVar) && (jVar = this.mCloneParent) != null) {
            jVar.removeListener(iVar);
        }
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public j removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                int size = this.mCurrentAnimators.size();
                Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
                this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
                for (int i10 = size - 1; i10 >= 0; i10--) {
                    Animator animator = animatorArr[i10];
                    animatorArr[i10] = null;
                    animator.resume();
                }
                this.mAnimatorCache = animatorArr;
                notifyListeners(InterfaceC0045j.f3711e, false);
            }
            this.mPaused = false;
        }
    }

    protected void runAnimators() {
        start();
        androidx.collection.a aVarJ = j();
        for (Animator animator : this.mAnimators) {
            if (aVarJ.containsKey(animator)) {
                start();
                s(animator, aVarJ);
            }
        }
        this.mAnimators.clear();
        end();
    }

    void setCanRemoveViews(boolean z10) {
        this.mCanRemoveViews = z10;
    }

    void setCurrentPlayTimeMillis(long j10, long j11) {
        long totalDurationMillis = getTotalDurationMillis();
        int i10 = 0;
        boolean z10 = j10 < j11;
        int i11 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if ((i11 < 0 && j10 >= 0) || (j11 > totalDurationMillis && j10 <= totalDurationMillis)) {
            this.mEnded = false;
            notifyListeners(InterfaceC0045j.f3707a, z10);
        }
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int size = this.mCurrentAnimators.size(); i10 < size; size = size) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            g.b(animator, Math.min(Math.max(0L, j10), g.a(animator)));
            i10++;
            i11 = i11;
        }
        int i12 = i11;
        this.mAnimatorCache = animatorArr;
        if ((j10 <= totalDurationMillis || j11 > totalDurationMillis) && (j10 >= 0 || i12 < 0)) {
            return;
        }
        if (j10 > totalDurationMillis) {
            this.mEnded = true;
        }
        notifyListeners(InterfaceC0045j.f3708b, z10);
    }

    public j setDuration(long j10) {
        this.mDuration = j10;
        return this;
    }

    public void setEpicenterCallback(f fVar) {
        this.mEpicenterCallback = fVar;
    }

    public j setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (!k(iArr[i10])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (d(iArr, i10)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    public void setPathMotion(androidx.transition.g gVar) {
        if (gVar == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = gVar;
        }
    }

    public void setPropagation(r rVar) {
    }

    public j setStartDelay(long j10) {
        this.mStartDelay = j10;
        return this;
    }

    protected void start() {
        if (this.mNumInstances == 0) {
            notifyListeners(InterfaceC0045j.f3707a, false);
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString() {
        return toString("");
    }

    public j addTarget(int i10) {
        if (i10 != 0) {
            this.mTargetIds.add(Integer.valueOf(i10));
        }
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public j mo6clone() {
        try {
            j jVar = (j) super.clone();
            jVar.mAnimators = new ArrayList<>();
            jVar.mStartValues = new w();
            jVar.mEndValues = new w();
            jVar.mStartValuesList = null;
            jVar.mEndValuesList = null;
            jVar.mSeekController = null;
            jVar.mCloneParent = this;
            jVar.mListeners = null;
            return jVar;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public j excludeChildren(int i10, boolean z10) {
        this.mTargetIdChildExcludes = f(this.mTargetIdChildExcludes, i10, z10);
        return this;
    }

    public j excludeTarget(int i10, boolean z10) {
        this.mTargetIdExcludes = f(this.mTargetIdExcludes, i10, z10);
        return this;
    }

    public j removeTarget(int i10) {
        if (i10 != 0) {
            this.mTargetIds.remove(Integer.valueOf(i10));
        }
        return this;
    }

    String toString(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.mDuration != -1) {
            sb.append("dur(");
            sb.append(this.mDuration);
            sb.append(") ");
        }
        if (this.mStartDelay != -1) {
            sb.append("dly(");
            sb.append(this.mStartDelay);
            sb.append(") ");
        }
        if (this.mInterpolator != null) {
            sb.append("interp(");
            sb.append(this.mInterpolator);
            sb.append(") ");
        }
        if (this.mTargetIds.size() > 0 || this.mTargets.size() > 0) {
            sb.append("tgts(");
            if (this.mTargetIds.size() > 0) {
                for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                    if (i10 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.mTargetIds.get(i10));
                }
            }
            if (this.mTargets.size() > 0) {
                for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                    if (i11 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.mTargets.get(i11));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public j addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    public j excludeChildren(Class<?> cls, boolean z10) {
        this.mTargetTypeChildExcludes = h(this.mTargetTypeChildExcludes, cls, z10);
        return this;
    }

    public j excludeTarget(String str, boolean z10) {
        this.mTargetNameExcludes = g(this.mTargetNameExcludes, str, z10);
        return this;
    }

    public j removeTarget(String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public j excludeTarget(Class<?> cls, boolean z10) {
        this.mTargetTypeExcludes = h(this.mTargetTypeExcludes, cls, z10);
        return this;
    }

    public j removeTarget(Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    public j addTarget(Class<?> cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }
}
