package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.j;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class t extends j {

    /* JADX INFO: renamed from: c */
    int f3721c;

    /* JADX INFO: renamed from: a */
    ArrayList f3719a = new ArrayList();

    /* JADX INFO: renamed from: b */
    private boolean f3720b = true;

    /* JADX INFO: renamed from: f */
    boolean f3722f = false;

    /* JADX INFO: renamed from: h */
    private int f3723h = 0;

    class a extends p {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ j f3724a;

        a(j jVar) {
            this.f3724a = jVar;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void g(j jVar) {
            this.f3724a.runAnimators();
            jVar.removeListener(this);
        }
    }

    class b extends p {
        b() {
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void b(j jVar) {
            t.this.f3719a.remove(jVar);
            if (t.this.hasAnimators()) {
                return;
            }
            t.this.notifyListeners(j.InterfaceC0045j.f3709c, false);
            t tVar = t.this;
            tVar.mEnded = true;
            tVar.notifyListeners(j.InterfaceC0045j.f3708b, false);
        }
    }

    static class c extends p {

        /* JADX INFO: renamed from: a */
        t f3727a;

        c(t tVar) {
            this.f3727a = tVar;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void a(j jVar) {
            t tVar = this.f3727a;
            if (tVar.f3722f) {
                return;
            }
            tVar.start();
            this.f3727a.f3722f = true;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void g(j jVar) {
            t tVar = this.f3727a;
            int i10 = tVar.f3721c - 1;
            tVar.f3721c = i10;
            if (i10 == 0) {
                tVar.f3722f = false;
                tVar.end();
            }
            jVar.removeListener(this);
        }
    }

    private int C(long j10) {
        for (int i10 = 1; i10 < this.f3719a.size(); i10++) {
            if (((j) this.f3719a.get(i10)).mSeekOffsetInParent > j10) {
                return i10 - 1;
            }
        }
        return this.f3719a.size() - 1;
    }

    private void M() {
        c cVar = new c(this);
        Iterator it = this.f3719a.iterator();
        while (it.hasNext()) {
            ((j) it.next()).addListener(cVar);
        }
        this.f3721c = this.f3719a.size();
    }

    private void z(j jVar) {
        this.f3719a.add(jVar);
        jVar.mParent = this;
    }

    public j A(int i10) {
        if (i10 < 0 || i10 >= this.f3719a.size()) {
            return null;
        }
        return (j) this.f3719a.get(i10);
    }

    public int B() {
        return this.f3719a.size();
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: D */
    public t removeListener(j.i iVar) {
        return (t) super.removeListener(iVar);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: E */
    public t removeTarget(int i10) {
        for (int i11 = 0; i11 < this.f3719a.size(); i11++) {
            ((j) this.f3719a.get(i11)).removeTarget(i10);
        }
        return (t) super.removeTarget(i10);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: F */
    public t removeTarget(View view) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).removeTarget(view);
        }
        return (t) super.removeTarget(view);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: G */
    public t removeTarget(Class cls) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).removeTarget((Class<?>) cls);
        }
        return (t) super.removeTarget((Class<?>) cls);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: H */
    public t removeTarget(String str) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).removeTarget(str);
        }
        return (t) super.removeTarget(str);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: I */
    public t setDuration(long j10) {
        ArrayList arrayList;
        super.setDuration(j10);
        if (this.mDuration >= 0 && (arrayList = this.f3719a) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((j) this.f3719a.get(i10)).setDuration(j10);
            }
        }
        return this;
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: J */
    public t setInterpolator(TimeInterpolator timeInterpolator) {
        this.f3723h |= 1;
        ArrayList arrayList = this.f3719a;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((j) this.f3719a.get(i10)).setInterpolator(timeInterpolator);
            }
        }
        return (t) super.setInterpolator(timeInterpolator);
    }

    public t K(int i10) {
        if (i10 == 0) {
            this.f3720b = true;
        } else {
            if (i10 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
            }
            this.f3720b = false;
        }
        return this;
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: L */
    public t setStartDelay(long j10) {
        return (t) super.setStartDelay(j10);
    }

    @Override // androidx.transition.j
    protected void cancel() {
        super.cancel();
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).cancel();
        }
    }

    @Override // androidx.transition.j
    public void captureEndValues(v vVar) {
        if (isValidTarget(vVar.f3730b)) {
            for (j jVar : this.f3719a) {
                if (jVar.isValidTarget(vVar.f3730b)) {
                    jVar.captureEndValues(vVar);
                    vVar.f3731c.add(jVar);
                }
            }
        }
    }

    @Override // androidx.transition.j
    void capturePropagationValues(v vVar) {
        super.capturePropagationValues(vVar);
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).capturePropagationValues(vVar);
        }
    }

    @Override // androidx.transition.j
    public void captureStartValues(v vVar) {
        if (isValidTarget(vVar.f3730b)) {
            for (j jVar : this.f3719a) {
                if (jVar.isValidTarget(vVar.f3730b)) {
                    jVar.captureStartValues(vVar);
                    vVar.f3731c.add(jVar);
                }
            }
        }
    }

    @Override // androidx.transition.j
    void createAnimators(ViewGroup viewGroup, w wVar, w wVar2, ArrayList arrayList, ArrayList arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            j jVar = (j) this.f3719a.get(i10);
            if (startDelay > 0 && (this.f3720b || i10 == 0)) {
                long startDelay2 = jVar.getStartDelay();
                if (startDelay2 > 0) {
                    jVar.setStartDelay(startDelay2 + startDelay);
                } else {
                    jVar.setStartDelay(startDelay);
                }
            }
            jVar.createAnimators(viewGroup, wVar, wVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.j
    public j excludeTarget(View view, boolean z10) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).excludeTarget(view, z10);
        }
        return super.excludeTarget(view, z10);
    }

    @Override // androidx.transition.j
    void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).forceToEnd(viewGroup);
        }
    }

    @Override // androidx.transition.j
    boolean hasAnimators() {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            if (((j) this.f3719a.get(i10)).hasAnimators()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.transition.j
    public boolean isSeekingSupported() {
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!((j) this.f3719a.get(i10)).isSeekingSupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.transition.j
    public void pause(View view) {
        super.pause(view);
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).pause(view);
        }
    }

    @Override // androidx.transition.j
    void prepareAnimatorsForSeeking() {
        this.mTotalDuration = 0L;
        b bVar = new b();
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            j jVar = (j) this.f3719a.get(i10);
            jVar.addListener(bVar);
            jVar.prepareAnimatorsForSeeking();
            long totalDurationMillis = jVar.getTotalDurationMillis();
            if (this.f3720b) {
                this.mTotalDuration = Math.max(this.mTotalDuration, totalDurationMillis);
            } else {
                long j10 = this.mTotalDuration;
                jVar.mSeekOffsetInParent = j10;
                this.mTotalDuration = j10 + totalDurationMillis;
            }
        }
    }

    @Override // androidx.transition.j
    public void resume(View view) {
        super.resume(view);
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).resume(view);
        }
    }

    @Override // androidx.transition.j
    protected void runAnimators() {
        if (this.f3719a.isEmpty()) {
            start();
            end();
            return;
        }
        M();
        if (this.f3720b) {
            Iterator it = this.f3719a.iterator();
            while (it.hasNext()) {
                ((j) it.next()).runAnimators();
            }
            return;
        }
        for (int i10 = 1; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10 - 1)).addListener(new a((j) this.f3719a.get(i10)));
        }
        j jVar = (j) this.f3719a.get(0);
        if (jVar != null) {
            jVar.runAnimators();
        }
    }

    @Override // androidx.transition.j
    void setCanRemoveViews(boolean z10) {
        super.setCanRemoveViews(z10);
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).setCanRemoveViews(z10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void setCurrentPlayTimeMillis(long r19, long r21) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r3 = r21
            long r5 = r18.getTotalDurationMillis()
            androidx.transition.t r7 = r0.mParent
            r8 = 0
            if (r7 == 0) goto L21
            int r7 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r7 >= 0) goto L18
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 < 0) goto L20
        L18:
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 <= 0) goto L21
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L21
        L20:
            return
        L21:
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r10 = 0
            if (r7 >= 0) goto L28
            r12 = 1
            goto L29
        L28:
            r12 = r10
        L29:
            int r13 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r13 < 0) goto L31
            int r14 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r14 < 0) goto L39
        L31:
            int r14 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r14 > 0) goto L40
            int r14 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r14 <= 0) goto L40
        L39:
            r0.mEnded = r10
            androidx.transition.j$j r14 = androidx.transition.j.InterfaceC0045j.f3707a
            r0.notifyListeners(r14, r12)
        L40:
            boolean r14 = r0.f3720b
            if (r14 == 0) goto L5d
        L44:
            java.util.ArrayList r7 = r0.f3719a
            int r7 = r7.size()
            if (r10 >= r7) goto L5a
            java.util.ArrayList r7 = r0.f3719a
            java.lang.Object r7 = r7.get(r10)
            androidx.transition.j r7 = (androidx.transition.j) r7
            r7.setCurrentPlayTimeMillis(r1, r3)
            int r10 = r10 + 1
            goto L44
        L5a:
            r16 = r12
            goto La5
        L5d:
            int r10 = r0.C(r3)
            if (r7 < 0) goto L88
        L63:
            java.util.ArrayList r7 = r0.f3719a
            int r7 = r7.size()
            if (r10 >= r7) goto L5a
            java.util.ArrayList r7 = r0.f3719a
            java.lang.Object r7 = r7.get(r10)
            androidx.transition.j r7 = (androidx.transition.j) r7
            long r14 = r7.mSeekOffsetInParent
            r16 = r12
            long r11 = r1 - r14
            int r17 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
            if (r17 >= 0) goto L7e
            goto La5
        L7e:
            long r14 = r3 - r14
            r7.setCurrentPlayTimeMillis(r11, r14)
            int r10 = r10 + 1
            r12 = r16
            goto L63
        L88:
            r16 = r12
        L8a:
            if (r10 < 0) goto La5
            java.util.ArrayList r7 = r0.f3719a
            java.lang.Object r7 = r7.get(r10)
            androidx.transition.j r7 = (androidx.transition.j) r7
            long r11 = r7.mSeekOffsetInParent
            long r14 = r1 - r11
            long r11 = r3 - r11
            r7.setCurrentPlayTimeMillis(r14, r11)
            int r7 = (r14 > r8 ? 1 : (r14 == r8 ? 0 : -1))
            if (r7 < 0) goto La2
            goto La5
        La2:
            int r10 = r10 + (-1)
            goto L8a
        La5:
            androidx.transition.t r7 = r0.mParent
            if (r7 == 0) goto Lc3
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 <= 0) goto Lb1
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 <= 0) goto Lb7
        Lb1:
            if (r13 >= 0) goto Lc3
            int r2 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r2 < 0) goto Lc3
        Lb7:
            if (r1 <= 0) goto Lbc
            r1 = 1
            r0.mEnded = r1
        Lbc:
            androidx.transition.j$j r1 = androidx.transition.j.InterfaceC0045j.f3708b
            r11 = r16
            r0.notifyListeners(r1, r11)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.t.setCurrentPlayTimeMillis(long, long):void");
    }

    @Override // androidx.transition.j
    public void setEpicenterCallback(j.f fVar) {
        super.setEpicenterCallback(fVar);
        this.f3723h |= 8;
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).setEpicenterCallback(fVar);
        }
    }

    @Override // androidx.transition.j
    public void setPathMotion(g gVar) {
        super.setPathMotion(gVar);
        this.f3723h |= 4;
        if (this.f3719a != null) {
            for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
                ((j) this.f3719a.get(i10)).setPathMotion(gVar);
            }
        }
    }

    @Override // androidx.transition.j
    public void setPropagation(r rVar) {
        super.setPropagation(rVar);
        this.f3723h |= 2;
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.f3719a.get(i10)).setPropagation(rVar);
        }
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: t */
    public t addListener(j.i iVar) {
        return (t) super.addListener(iVar);
    }

    @Override // androidx.transition.j
    String toString(String str) {
        String string = super.toString(str);
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append("\n");
            sb.append(((j) this.f3719a.get(i10)).toString(str + "  "));
            string = sb.toString();
        }
        return string;
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: u */
    public t addTarget(int i10) {
        for (int i11 = 0; i11 < this.f3719a.size(); i11++) {
            ((j) this.f3719a.get(i11)).addTarget(i10);
        }
        return (t) super.addTarget(i10);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: v */
    public t addTarget(View view) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).addTarget(view);
        }
        return (t) super.addTarget(view);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: w */
    public t addTarget(Class cls) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).addTarget((Class<?>) cls);
        }
        return (t) super.addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: x */
    public t addTarget(String str) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).addTarget(str);
        }
        return (t) super.addTarget(str);
    }

    public t y(j jVar) {
        z(jVar);
        long j10 = this.mDuration;
        if (j10 >= 0) {
            jVar.setDuration(j10);
        }
        if ((this.f3723h & 1) != 0) {
            jVar.setInterpolator(getInterpolator());
        }
        if ((this.f3723h & 2) != 0) {
            getPropagation();
            jVar.setPropagation(null);
        }
        if ((this.f3723h & 4) != 0) {
            jVar.setPathMotion(getPathMotion());
        }
        if ((this.f3723h & 8) != 0) {
            jVar.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override // androidx.transition.j
    /* JADX INFO: renamed from: clone */
    public j mo6clone() {
        t tVar = (t) super.mo6clone();
        tVar.f3719a = new ArrayList();
        int size = this.f3719a.size();
        for (int i10 = 0; i10 < size; i10++) {
            tVar.z(((j) this.f3719a.get(i10)).mo6clone());
        }
        return tVar;
    }

    @Override // androidx.transition.j
    public j excludeTarget(String str, boolean z10) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).excludeTarget(str, z10);
        }
        return super.excludeTarget(str, z10);
    }

    @Override // androidx.transition.j
    public j excludeTarget(int i10, boolean z10) {
        for (int i11 = 0; i11 < this.f3719a.size(); i11++) {
            ((j) this.f3719a.get(i11)).excludeTarget(i10, z10);
        }
        return super.excludeTarget(i10, z10);
    }

    @Override // androidx.transition.j
    public j excludeTarget(Class cls, boolean z10) {
        for (int i10 = 0; i10 < this.f3719a.size(); i10++) {
            ((j) this.f3719a.get(i10)).excludeTarget((Class<?>) cls, z10);
        }
        return super.excludeTarget((Class<?>) cls, z10);
    }
}
