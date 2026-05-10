package x3;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.R$id;

/* JADX INFO: loaded from: classes.dex */
public class d extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Property f16374a = new d("childrenAlpha");

    private d(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(ViewGroup viewGroup) {
        Float f10 = (Float) viewGroup.getTag(R$id.mtrl_internal_children_alpha_tag);
        return f10 != null ? f10 : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(ViewGroup viewGroup, Float f10) {
        float fFloatValue = f10.floatValue();
        viewGroup.setTag(R$id.mtrl_internal_children_alpha_tag, f10);
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            viewGroup.getChildAt(i10).setAlpha(fFloatValue);
        }
    }
}
