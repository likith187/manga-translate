package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f2713a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f2714b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f2715c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u f2716d;

    y() {
    }

    void A(u uVar) {
        this.f2716d = uVar;
    }

    FragmentState B(String str, FragmentState fragmentState) {
        return fragmentState != null ? (FragmentState) this.f2715c.put(str, fragmentState) : (FragmentState) this.f2715c.remove(str);
    }

    void a(Fragment fragment) {
        if (this.f2713a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f2713a) {
            this.f2713a.add(fragment);
        }
        fragment.mAdded = true;
    }

    void b() {
        this.f2714b.values().removeAll(Collections.singleton(null));
    }

    boolean c(String str) {
        return this.f2714b.get(str) != null;
    }

    void d(int i10) {
        for (w wVar : this.f2714b.values()) {
            if (wVar != null) {
                wVar.u(i10);
            }
        }
    }

    void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f2714b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (w wVar : this.f2714b.values()) {
                printWriter.print(str);
                if (wVar != null) {
                    Fragment fragmentK = wVar.k();
                    printWriter.println(fragmentK);
                    fragmentK.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(AbstractJsonLexerKt.NULL);
                }
            }
        }
        int size = this.f2713a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size; i10++) {
                Fragment fragment = (Fragment) this.f2713a.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    Fragment f(String str) {
        w wVar = (w) this.f2714b.get(str);
        if (wVar != null) {
            return wVar.k();
        }
        return null;
    }

    Fragment g(int i10) {
        for (int size = this.f2713a.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) this.f2713a.get(size);
            if (fragment != null && fragment.mFragmentId == i10) {
                return fragment;
            }
        }
        for (w wVar : this.f2714b.values()) {
            if (wVar != null) {
                Fragment fragmentK = wVar.k();
                if (fragmentK.mFragmentId == i10) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment h(String str) {
        if (str != null) {
            for (int size = this.f2713a.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.f2713a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (w wVar : this.f2714b.values()) {
            if (wVar != null) {
                Fragment fragmentK = wVar.k();
                if (str.equals(fragmentK.mTag)) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment i(String str) {
        Fragment fragmentFindFragmentByWho;
        for (w wVar : this.f2714b.values()) {
            if (wVar != null && (fragmentFindFragmentByWho = wVar.k().findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    int j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.f2713a.indexOf(fragment);
        for (int i10 = iIndexOf - 1; i10 >= 0; i10--) {
            Fragment fragment2 = (Fragment) this.f2713a.get(i10);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.f2713a.size()) {
                return -1;
            }
            Fragment fragment3 = (Fragment) this.f2713a.get(iIndexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    List k() {
        ArrayList arrayList = new ArrayList();
        for (w wVar : this.f2714b.values()) {
            if (wVar != null) {
                arrayList.add(wVar);
            }
        }
        return arrayList;
    }

    List l() {
        ArrayList arrayList = new ArrayList();
        for (w wVar : this.f2714b.values()) {
            if (wVar != null) {
                arrayList.add(wVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    ArrayList m() {
        return new ArrayList(this.f2715c.values());
    }

    w n(String str) {
        return (w) this.f2714b.get(str);
    }

    List o() {
        ArrayList arrayList;
        if (this.f2713a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2713a) {
            arrayList = new ArrayList(this.f2713a);
        }
        return arrayList;
    }

    u p() {
        return this.f2716d;
    }

    FragmentState q(String str) {
        return (FragmentState) this.f2715c.get(str);
    }

    void r(w wVar) {
        Fragment fragmentK = wVar.k();
        if (c(fragmentK.mWho)) {
            return;
        }
        this.f2714b.put(fragmentK.mWho, wVar);
        if (fragmentK.mRetainInstanceChangedWhileDetached) {
            if (fragmentK.mRetainInstance) {
                this.f2716d.e(fragmentK);
            } else {
                this.f2716d.o(fragmentK);
            }
            fragmentK.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragmentK);
        }
    }

    void s(w wVar) {
        Fragment fragmentK = wVar.k();
        if (fragmentK.mRetainInstance) {
            this.f2716d.o(fragmentK);
        }
        if (((w) this.f2714b.put(fragmentK.mWho, null)) != null && FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragmentK);
        }
    }

    void t() {
        Iterator it = this.f2713a.iterator();
        while (it.hasNext()) {
            w wVar = (w) this.f2714b.get(((Fragment) it.next()).mWho);
            if (wVar != null) {
                wVar.m();
            }
        }
        for (w wVar2 : this.f2714b.values()) {
            if (wVar2 != null) {
                wVar2.m();
                Fragment fragmentK = wVar2.k();
                if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                    if (fragmentK.mBeingSaved && !this.f2715c.containsKey(fragmentK.mWho)) {
                        wVar2.s();
                    }
                    s(wVar2);
                }
            }
        }
    }

    void u(Fragment fragment) {
        synchronized (this.f2713a) {
            this.f2713a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    void v() {
        this.f2714b.clear();
    }

    void w(List list) {
        this.f2713a.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Fragment fragmentF = f(str);
                if (fragmentF == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentF);
                }
                a(fragmentF);
            }
        }
    }

    void x(ArrayList arrayList) {
        this.f2715c.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            FragmentState fragmentState = (FragmentState) it.next();
            this.f2715c.put(fragmentState.f2542b, fragmentState);
        }
    }

    ArrayList y() {
        ArrayList arrayList = new ArrayList(this.f2714b.size());
        for (w wVar : this.f2714b.values()) {
            if (wVar != null) {
                Fragment fragmentK = wVar.k();
                wVar.s();
                arrayList.add(fragmentK.mWho);
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragmentK + ": " + fragmentK.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    ArrayList z() {
        synchronized (this.f2713a) {
            try {
                if (this.f2713a.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList(this.f2713a.size());
                for (Fragment fragment : this.f2713a) {
                    arrayList.add(fragment.mWho);
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment.mWho + "): " + fragment);
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
