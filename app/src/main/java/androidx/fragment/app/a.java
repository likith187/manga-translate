package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.z;
import androidx.lifecycle.l;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class a extends z implements FragmentManager.l {

    /* JADX INFO: renamed from: t */
    final FragmentManager f2560t;

    /* JADX INFO: renamed from: u */
    boolean f2561u;

    /* JADX INFO: renamed from: v */
    int f2562v;

    /* JADX INFO: renamed from: w */
    boolean f2563w;

    a(FragmentManager fragmentManager) {
        super(fragmentManager.s0(), fragmentManager.u0() != null ? fragmentManager.u0().f().getClassLoader() : null);
        this.f2562v = -1;
        this.f2563w = false;
        this.f2560t = fragmentManager;
    }

    public void A(String str, PrintWriter printWriter, boolean z10) {
        String str2;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2727k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2562v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2561u);
            if (this.f2724h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2724h));
            }
            if (this.f2720d != 0 || this.f2721e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2720d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2721e));
            }
            if (this.f2722f != 0 || this.f2723g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2722f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2723g));
            }
            if (this.f2728l != 0 || this.f2729m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2728l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2729m);
            }
            if (this.f2730n != 0 || this.f2731o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2730n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f2731o);
            }
        }
        if (this.f2719c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f2719c.size();
        for (int i10 = 0; i10 < size; i10++) {
            z.a aVar = (z.a) this.f2719c.get(i10);
            switch (aVar.f2736a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f2736a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f2737b);
            if (z10) {
                if (aVar.f2739d != 0 || aVar.f2740e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2739d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2740e));
                }
                if (aVar.f2741f != 0 || aVar.f2742g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2741f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2742g));
                }
            }
        }
    }

    void B() {
        int size = this.f2719c.size();
        for (int i10 = 0; i10 < size; i10++) {
            z.a aVar = (z.a) this.f2719c.get(i10);
            Fragment fragment = aVar.f2737b;
            if (fragment != null) {
                fragment.mBeingSaved = this.f2563w;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f2724h);
                fragment.setSharedElementNames(this.f2732p, this.f2733q);
            }
            switch (aVar.f2736a) {
                case 1:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.r1(fragment, false);
                    this.f2560t.h(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2736a);
                case 3:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.i1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.E0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.r1(fragment, false);
                    this.f2560t.v1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.v(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.r1(fragment, false);
                    this.f2560t.m(fragment);
                    break;
                case 8:
                    this.f2560t.t1(fragment);
                    break;
                case 9:
                    this.f2560t.t1(null);
                    break;
                case 10:
                    this.f2560t.s1(fragment, aVar.f2744i);
                    break;
            }
        }
    }

    void C() {
        for (int size = this.f2719c.size() - 1; size >= 0; size--) {
            z.a aVar = (z.a) this.f2719c.get(size);
            Fragment fragment = aVar.f2737b;
            if (fragment != null) {
                fragment.mBeingSaved = this.f2563w;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.n1(this.f2724h));
                fragment.setSharedElementNames(this.f2733q, this.f2732p);
            }
            switch (aVar.f2736a) {
                case 1:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.r1(fragment, true);
                    this.f2560t.i1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2736a);
                case 3:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.h(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.v1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.r1(fragment, true);
                    this.f2560t.E0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.m(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f2739d, aVar.f2740e, aVar.f2741f, aVar.f2742g);
                    this.f2560t.r1(fragment, true);
                    this.f2560t.v(fragment);
                    break;
                case 8:
                    this.f2560t.t1(null);
                    break;
                case 9:
                    this.f2560t.t1(fragment);
                    break;
                case 10:
                    this.f2560t.s1(fragment, aVar.f2743h);
                    break;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.fragment.app.Fragment D(java.util.ArrayList r17, androidx.fragment.app.Fragment r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = 0
        L7:
            java.util.ArrayList r5 = r0.f2719c
            int r5 = r5.size()
            if (r4 >= r5) goto Lbe
            java.util.ArrayList r5 = r0.f2719c
            java.lang.Object r5 = r5.get(r4)
            androidx.fragment.app.z$a r5 = (androidx.fragment.app.z.a) r5
            int r6 = r5.f2736a
            r7 = 1
            if (r6 == r7) goto Lb6
            r8 = 2
            r9 = 0
            r10 = 3
            r11 = 9
            if (r6 == r8) goto L5a
            if (r6 == r10) goto L43
            r8 = 6
            if (r6 == r8) goto L43
            r8 = 7
            if (r6 == r8) goto Lb6
            r8 = 8
            if (r6 == r8) goto L31
            goto Lbb
        L31:
            java.util.ArrayList r6 = r0.f2719c
            androidx.fragment.app.z$a r8 = new androidx.fragment.app.z$a
            r8.<init>(r11, r3, r7)
            r6.add(r4, r8)
            r5.f2738c = r7
            int r4 = r4 + 1
            androidx.fragment.app.Fragment r3 = r5.f2737b
            goto Lbb
        L43:
            androidx.fragment.app.Fragment r6 = r5.f2737b
            r1.remove(r6)
            androidx.fragment.app.Fragment r5 = r5.f2737b
            if (r5 != r3) goto Lbb
            java.util.ArrayList r3 = r0.f2719c
            androidx.fragment.app.z$a r6 = new androidx.fragment.app.z$a
            r6.<init>(r11, r5)
            r3.add(r4, r6)
            int r4 = r4 + 1
            r3 = r9
            goto Lbb
        L5a:
            androidx.fragment.app.Fragment r6 = r5.f2737b
            int r8 = r6.mContainerId
            int r12 = r17.size()
            int r12 = r12 - r7
            r13 = 0
        L64:
            if (r12 < 0) goto La4
            java.lang.Object r14 = r1.get(r12)
            androidx.fragment.app.Fragment r14 = (androidx.fragment.app.Fragment) r14
            int r15 = r14.mContainerId
            if (r15 != r8) goto La1
            if (r14 != r6) goto L74
            r13 = r7
            goto La1
        L74:
            if (r14 != r3) goto L83
            java.util.ArrayList r3 = r0.f2719c
            androidx.fragment.app.z$a r15 = new androidx.fragment.app.z$a
            r15.<init>(r11, r14, r7)
            r3.add(r4, r15)
            int r4 = r4 + 1
            r3 = r9
        L83:
            androidx.fragment.app.z$a r15 = new androidx.fragment.app.z$a
            r15.<init>(r10, r14, r7)
            int r2 = r5.f2739d
            r15.f2739d = r2
            int r2 = r5.f2741f
            r15.f2741f = r2
            int r2 = r5.f2740e
            r15.f2740e = r2
            int r2 = r5.f2742g
            r15.f2742g = r2
            java.util.ArrayList r2 = r0.f2719c
            r2.add(r4, r15)
            r1.remove(r14)
            int r4 = r4 + r7
        La1:
            int r12 = r12 + (-1)
            goto L64
        La4:
            if (r13 == 0) goto Lae
            java.util.ArrayList r2 = r0.f2719c
            r2.remove(r4)
            int r4 = r4 + (-1)
            goto Lbb
        Lae:
            r5.f2736a = r7
            r5.f2738c = r7
            r1.add(r6)
            goto Lbb
        Lb6:
            androidx.fragment.app.Fragment r2 = r5.f2737b
            r1.add(r2)
        Lbb:
            int r4 = r4 + r7
            goto L7
        Lbe:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.D(java.util.ArrayList, androidx.fragment.app.Fragment):androidx.fragment.app.Fragment");
    }

    public String E() {
        return this.f2727k;
    }

    public void F() {
        if (this.f2735s != null) {
            for (int i10 = 0; i10 < this.f2735s.size(); i10++) {
                ((Runnable) this.f2735s.get(i10)).run();
            }
            this.f2735s = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.fragment.app.Fragment G(java.util.ArrayList r6, androidx.fragment.app.Fragment r7) {
        /*
            r5 = this;
            java.util.ArrayList r0 = r5.f2719c
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
        L8:
            if (r0 < 0) goto L35
            java.util.ArrayList r2 = r5.f2719c
            java.lang.Object r2 = r2.get(r0)
            androidx.fragment.app.z$a r2 = (androidx.fragment.app.z.a) r2
            int r3 = r2.f2736a
            if (r3 == r1) goto L2d
            r4 = 3
            if (r3 == r4) goto L27
            switch(r3) {
                case 6: goto L27;
                case 7: goto L2d;
                case 8: goto L25;
                case 9: goto L22;
                case 10: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L32
        L1d:
            androidx.lifecycle.l$b r3 = r2.f2743h
            r2.f2744i = r3
            goto L32
        L22:
            androidx.fragment.app.Fragment r7 = r2.f2737b
            goto L32
        L25:
            r7 = 0
            goto L32
        L27:
            androidx.fragment.app.Fragment r2 = r2.f2737b
            r6.add(r2)
            goto L32
        L2d:
            androidx.fragment.app.Fragment r2 = r2.f2737b
            r6.remove(r2)
        L32:
            int r0 = r0 + (-1)
            goto L8
        L35:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.G(java.util.ArrayList, androidx.fragment.app.Fragment):androidx.fragment.app.Fragment");
    }

    @Override // androidx.fragment.app.FragmentManager.l
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f2725i) {
            return true;
        }
        this.f2560t.g(this);
        return true;
    }

    @Override // androidx.fragment.app.z
    public int h() {
        return y(false);
    }

    @Override // androidx.fragment.app.z
    public int i() {
        return y(true);
    }

    @Override // androidx.fragment.app.z
    public void j() {
        l();
        this.f2560t.a0(this, false);
    }

    @Override // androidx.fragment.app.z
    public void k() {
        l();
        this.f2560t.a0(this, true);
    }

    @Override // androidx.fragment.app.z
    void m(int i10, Fragment fragment, String str, int i11) {
        super.m(i10, fragment, str, i11);
        fragment.mFragmentManager = this.f2560t;
    }

    @Override // androidx.fragment.app.z
    public z n(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f2560t) {
            return super.n(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.z
    public boolean o() {
        return this.f2719c.isEmpty();
    }

    @Override // androidx.fragment.app.z
    public z p(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f2560t) {
            return super.p(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2562v >= 0) {
            sb.append(" #");
            sb.append(this.f2562v);
        }
        if (this.f2727k != null) {
            sb.append(" ");
            sb.append(this.f2727k);
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // androidx.fragment.app.z
    public z u(Fragment fragment, l.b bVar) {
        if (fragment.mFragmentManager != this.f2560t) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f2560t);
        }
        if (bVar == l.b.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + bVar + " after the Fragment has been created");
        }
        if (bVar != l.b.DESTROYED) {
            return super.u(fragment, bVar);
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + bVar + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    @Override // androidx.fragment.app.z
    public z w(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f2560t) {
            return super.w(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    void x(int i10) {
        if (this.f2725i) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
            }
            int size = this.f2719c.size();
            for (int i11 = 0; i11 < size; i11++) {
                z.a aVar = (z.a) this.f2719c.get(i11);
                Fragment fragment = aVar.f2737b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f2737b + " to " + aVar.f2737b.mBackStackNesting);
                    }
                }
            }
        }
    }

    int y(boolean z10) {
        if (this.f2561u) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new e0("FragmentManager"));
            z("  ", printWriter);
            printWriter.close();
        }
        this.f2561u = true;
        if (this.f2725i) {
            this.f2562v = this.f2560t.k();
        } else {
            this.f2562v = -1;
        }
        this.f2560t.X(this, z10);
        return this.f2562v;
    }

    public void z(String str, PrintWriter printWriter) {
        A(str, printWriter, true);
    }
}
