package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class m implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final FragmentManager f2685a;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f2686a;

        a(w wVar) {
            this.f2686a = wVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment fragmentK = this.f2686a.k();
            this.f2686a.m();
            f0.n((ViewGroup) fragmentK.mView.getParent(), m.this.f2685a).j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    m(FragmentManager fragmentManager) {
        this.f2685a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        w wVarU;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f2685a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(R$styleable.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !k.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentG0 = resourceId != -1 ? this.f2685a.g0(resourceId) : null;
        if (fragmentG0 == null && string != null) {
            fragmentG0 = this.f2685a.h0(string);
        }
        if (fragmentG0 == null && id != -1) {
            fragmentG0 = this.f2685a.g0(id);
        }
        if (fragmentG0 == null) {
            fragmentG0 = this.f2685a.s0().a(context.getClassLoader(), attributeValue);
            fragmentG0.mFromLayout = true;
            fragmentG0.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentG0.mContainerId = id;
            fragmentG0.mTag = string;
            fragmentG0.mInLayout = true;
            FragmentManager fragmentManager = this.f2685a;
            fragmentG0.mFragmentManager = fragmentManager;
            fragmentG0.mHost = fragmentManager.u0();
            fragmentG0.onInflate(this.f2685a.u0().f(), attributeSet, fragmentG0.mSavedFragmentState);
            wVarU = this.f2685a.h(fragmentG0);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Fragment " + fragmentG0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else {
            if (fragmentG0.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentG0.mInLayout = true;
            FragmentManager fragmentManager2 = this.f2685a;
            fragmentG0.mFragmentManager = fragmentManager2;
            fragmentG0.mHost = fragmentManager2.u0();
            fragmentG0.onInflate(this.f2685a.u0().f(), attributeSet, fragmentG0.mSavedFragmentState);
            wVarU = this.f2685a.u(fragmentG0);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragmentG0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        i0.c.g(fragmentG0, viewGroup);
        fragmentG0.mContainer = viewGroup;
        wVarU.m();
        wVarU.j();
        View view2 = fragmentG0.mView;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentG0.mView.getTag() == null) {
            fragmentG0.mView.setTag(string);
        }
        fragmentG0.mView.addOnAttachStateChangeListener(new a(wVarU));
        return fragmentG0.mView;
    }
}
