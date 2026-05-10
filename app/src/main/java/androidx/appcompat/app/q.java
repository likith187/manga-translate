package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.appcompat.widget.e0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final int[] sAccessibilityHeading = {R.attr.accessibilityHeading};
    private static final int[] sAccessibilityPaneTitle = {R.attr.accessibilityPaneTitle};
    private static final int[] sScreenReaderFocusable = {R.attr.screenReaderFocusable};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final androidx.collection.i sConstructorMap = new androidx.collection.i();

    private static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Method f415c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Context f416f;

        public a(View view, String str) {
            this.f413a = view;
            this.f414b = str;
        }

        private void a(Context context) {
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f414b, View.class)) != null) {
                        this.f415c = method;
                        this.f416f = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f413a.getId();
            if (id == -1) {
                str = "";
            } else {
                str = " with id '" + this.f413a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f414b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f413a.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f415c == null) {
                a(this.f413a.getContext());
            }
            try {
                this.f415c.invoke(this.f416f, view);
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException("Could not execute method for android:onClick", e11);
            }
        }
    }

    private void a(Context context, View view, AttributeSet attributeSet) {
    }

    private void b(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if ((context instanceof ContextWrapper) && view.hasOnClickListeners()) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
            String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new a(view, string));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private View c(Context context, String str, String str2) {
        String str3;
        androidx.collection.i iVar = sConstructorMap;
        Constructor constructor = (Constructor) iVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            iVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.mConstructorArgs);
    }

    private View d(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.mConstructorArgs;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return c(context, str, null);
            }
            int i10 = 0;
            while (true) {
                String[] strArr = sClassPrefixList;
                if (i10 >= strArr.length) {
                    return null;
                }
                View viewC = c(context, str, strArr[i10]);
                if (viewC != null) {
                    return viewC;
                }
                i10++;
            }
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr2 = this.mConstructorArgs;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private static Context e(Context context, AttributeSet attributeSet, boolean z10, boolean z11) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.View, 0, 0);
        int resourceId = z10 ? typedArrayObtainStyledAttributes.getResourceId(R$styleable.View_android_theme, 0) : 0;
        if (z11 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof androidx.appcompat.view.d) && ((androidx.appcompat.view.d) context).c() == resourceId) ? context : new androidx.appcompat.view.d(context, resourceId) : context;
    }

    private void f(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected AppCompatAutoCompleteTextView createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected AppCompatCheckedTextView createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    protected AppCompatEditText createEditText(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected AppCompatMultiAutoCompleteTextView createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatRadioButton createRadioButton(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    protected AppCompatRatingBar createRatingBar(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    protected AppCompatSeekBar createSeekBar(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected AppCompatToggleButton createToggleButton(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    public final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z10, boolean z11, boolean z12, boolean z13) {
        Context context2;
        View viewCreateRatingBar;
        context2 = (!z10 || view == null) ? context : view.getContext();
        if (z11 || z12) {
            context2 = e(context2, attributeSet, z11, z12);
        }
        if (z13) {
            context2 = e0.b(context2);
        }
        str.hashCode();
        switch (str) {
            case "RatingBar":
                viewCreateRatingBar = createRatingBar(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "CheckedTextView":
                viewCreateRatingBar = createCheckedTextView(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "MultiAutoCompleteTextView":
                viewCreateRatingBar = createMultiAutoCompleteTextView(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "TextView":
                viewCreateRatingBar = createTextView(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "ImageButton":
                viewCreateRatingBar = createImageButton(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "SeekBar":
                viewCreateRatingBar = createSeekBar(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "Spinner":
                viewCreateRatingBar = createSpinner(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "RadioButton":
                viewCreateRatingBar = createRadioButton(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "ToggleButton":
                viewCreateRatingBar = createToggleButton(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "ImageView":
                viewCreateRatingBar = createImageView(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "AutoCompleteTextView":
                viewCreateRatingBar = createAutoCompleteTextView(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "CheckBox":
                viewCreateRatingBar = createCheckBox(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "EditText":
                viewCreateRatingBar = createEditText(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            case "Button":
                viewCreateRatingBar = createButton(context2, attributeSet);
                f(viewCreateRatingBar, str);
                break;
            default:
                viewCreateRatingBar = createView(context2, str, attributeSet);
                break;
        }
        if (viewCreateRatingBar == null && context != context2) {
            viewCreateRatingBar = d(context2, str, attributeSet);
        }
        if (viewCreateRatingBar != null) {
            b(viewCreateRatingBar, attributeSet);
            a(context2, viewCreateRatingBar, attributeSet);
        }
        return viewCreateRatingBar;
    }
}
