package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class c0 extends androidx.cursoradapter.widget.c implements View.OnClickListener {

    /* JADX INFO: renamed from: f */
    private final SearchView f827f;

    /* JADX INFO: renamed from: h */
    private final SearchableInfo f828h;

    /* JADX INFO: renamed from: i */
    private final Context f829i;

    /* JADX INFO: renamed from: j */
    private final WeakHashMap f830j;

    /* JADX INFO: renamed from: k */
    private final int f831k;

    /* JADX INFO: renamed from: l */
    private boolean f832l;

    /* JADX INFO: renamed from: m */
    private int f833m;

    /* JADX INFO: renamed from: n */
    private ColorStateList f834n;

    /* JADX INFO: renamed from: o */
    private int f835o;

    /* JADX INFO: renamed from: p */
    private int f836p;

    /* JADX INFO: renamed from: q */
    private int f837q;

    /* JADX INFO: renamed from: r */
    private int f838r;

    /* JADX INFO: renamed from: s */
    private int f839s;

    /* JADX INFO: renamed from: t */
    private int f840t;

    private static final class a {

        /* JADX INFO: renamed from: a */
        public final TextView f841a;

        /* JADX INFO: renamed from: b */
        public final TextView f842b;

        /* JADX INFO: renamed from: c */
        public final ImageView f843c;

        /* JADX INFO: renamed from: d */
        public final ImageView f844d;

        /* JADX INFO: renamed from: e */
        public final ImageView f845e;

        public a(View view) {
            this.f841a = (TextView) view.findViewById(R.id.text1);
            this.f842b = (TextView) view.findViewById(R.id.text2);
            this.f843c = (ImageView) view.findViewById(R.id.icon1);
            this.f844d = (ImageView) view.findViewById(R.id.icon2);
            this.f845e = (ImageView) view.findViewById(R$id.edit_query);
        }
    }

    public c0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f832l = false;
        this.f833m = 1;
        this.f835o = -1;
        this.f836p = -1;
        this.f837q = -1;
        this.f838r = -1;
        this.f839s = -1;
        this.f840t = -1;
        this.f827f = searchView;
        this.f828h = searchableInfo;
        this.f831k = searchView.getSuggestionCommitIconResId();
        this.f829i = context;
        this.f830j = weakHashMap;
    }

    private Drawable a(String str) {
        Drawable.ConstantState constantState = (Drawable.ConstantState) this.f830j.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.f834n == null) {
            TypedValue typedValue = new TypedValue();
            this.f829i.getTheme().resolveAttribute(R$attr.textColorSearchUrl, typedValue, true);
            this.f834n = this.f829i.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f834n, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable c(ComponentName componentName) {
        PackageManager packageManager = this.f829i.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("SuggestionsAdapter", e10.toString());
            return null;
        }
    }

    private Drawable d(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.f830j.containsKey(strFlattenToShortString)) {
            Drawable drawableC = c(componentName);
            this.f830j.put(strFlattenToShortString, drawableC != null ? drawableC.getConstantState() : null);
            return drawableC;
        }
        Drawable.ConstantState constantState = (Drawable.ConstantState) this.f830j.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.f829i.getResources());
    }

    public static String e(Cursor cursor, String str) {
        return m(cursor, cursor.getColumnIndex(str));
    }

    private Drawable f() {
        Drawable drawableD = d(this.f828h.getSearchActivity());
        return drawableD != null ? drawableD : this.f829i.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable g(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return h(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.f829i.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(inputStreamOpenInputStream, null);
            } finally {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e10) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e10);
                }
            }
        } catch (FileNotFoundException e11) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e11.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e11.getMessage());
        return null;
    }

    private Drawable i(String str) {
        if (str == null || str.isEmpty() || AuthUtil.AUTH_STYLE_INNER.equals(str)) {
            return null;
        }
        try {
            int i10 = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f829i.getPackageName() + "/" + i10;
            Drawable drawableA = a(str2);
            if (drawableA != null) {
                return drawableA;
            }
            Drawable drawableE = r.a.e(this.f829i, i10);
            q(str2, drawableE);
            return drawableE;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableA2 = a(str);
            if (drawableA2 != null) {
                return drawableA2;
            }
            Drawable drawableG = g(Uri.parse(str));
            q(str, drawableG);
            return drawableG;
        }
    }

    private Drawable j(Cursor cursor) {
        int i10 = this.f838r;
        if (i10 == -1) {
            return null;
        }
        Drawable drawableI = i(cursor.getString(i10));
        return drawableI != null ? drawableI : f();
    }

    private Drawable k(Cursor cursor) {
        int i10 = this.f839s;
        if (i10 == -1) {
            return null;
        }
        return i(cursor.getString(i10));
    }

    private static String m(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e10);
            return null;
        }
    }

    private void o(ImageView imageView, Drawable drawable, int i10) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i10);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void p(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void q(String str, Drawable drawable) {
        if (drawable != null) {
            this.f830j.put(str, drawable.getConstantState());
        }
    }

    private void r(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // androidx.cursoradapter.widget.a
    public void bindView(View view, Context context, Cursor cursor) {
        a aVar = (a) view.getTag();
        int i10 = this.f840t;
        int i11 = i10 != -1 ? cursor.getInt(i10) : 0;
        if (aVar.f841a != null) {
            p(aVar.f841a, m(cursor, this.f835o));
        }
        if (aVar.f842b != null) {
            String strM = m(cursor, this.f837q);
            CharSequence charSequenceB = strM != null ? b(strM) : m(cursor, this.f836p);
            if (TextUtils.isEmpty(charSequenceB)) {
                TextView textView = aVar.f841a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f841a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f841a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f841a.setMaxLines(1);
                }
            }
            p(aVar.f842b, charSequenceB);
        }
        ImageView imageView = aVar.f843c;
        if (imageView != null) {
            o(imageView, j(cursor), 4);
        }
        ImageView imageView2 = aVar.f844d;
        if (imageView2 != null) {
            o(imageView2, k(cursor), 8);
        }
        int i12 = this.f833m;
        if (i12 != 2 && (i12 != 1 || (i11 & 1) == 0)) {
            aVar.f845e.setVisibility(8);
            return;
        }
        aVar.f845e.setVisibility(0);
        aVar.f845e.setTag(aVar.f841a.getText());
        aVar.f845e.setOnClickListener(this);
    }

    @Override // androidx.cursoradapter.widget.a, androidx.cursoradapter.widget.b.a
    public void changeCursor(Cursor cursor) {
        if (this.f832l) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.f835o = cursor.getColumnIndex("suggest_text_1");
                this.f836p = cursor.getColumnIndex("suggest_text_2");
                this.f837q = cursor.getColumnIndex("suggest_text_2_url");
                this.f838r = cursor.getColumnIndex("suggest_icon_1");
                this.f839s = cursor.getColumnIndex("suggest_icon_2");
                this.f840t = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e10);
        }
    }

    @Override // androidx.cursoradapter.widget.a, androidx.cursoradapter.widget.b.a
    public CharSequence convertToString(Cursor cursor) {
        String strE;
        String strE2;
        if (cursor == null) {
            return null;
        }
        String strE3 = e(cursor, "suggest_intent_query");
        if (strE3 != null) {
            return strE3;
        }
        if (this.f828h.shouldRewriteQueryFromData() && (strE2 = e(cursor, "suggest_intent_data")) != null) {
            return strE2;
        }
        if (!this.f828h.shouldRewriteQueryFromText() || (strE = e(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strE;
    }

    @Override // androidx.cursoradapter.widget.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewNewDropDownView = this.newDropDownView(this.f829i, this.getCursor(), viewGroup);
            if (viewNewDropDownView != null) {
                ((a) viewNewDropDownView.getTag()).f841a.setText(e10.toString());
            }
            return viewNewDropDownView;
        }
    }

    @Override // androidx.cursoradapter.widget.a, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewNewView = this.newView(this.f829i, this.getCursor(), viewGroup);
            if (viewNewView != null) {
                ((a) viewNewView.getTag()).f841a.setText(e10.toString());
            }
            return viewNewView;
        }
    }

    Drawable h(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f829i.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    @Override // androidx.cursoradapter.widget.a, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    Cursor l(SearchableInfo searchableInfo, String str, int i10) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme(TranslationClient.PARAM_KEY_CONTENT).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i10 > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i10));
        }
        return this.f829i.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    public void n(int i10) {
        this.f833m = i10;
    }

    @Override // androidx.cursoradapter.widget.c, androidx.cursoradapter.widget.a
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewNewView = super.newView(context, cursor, viewGroup);
        viewNewView.setTag(new a(viewNewView));
        ((ImageView) viewNewView.findViewById(R$id.edit_query)).setImageResource(this.f831k);
        return viewNewView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        r(getCursor());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        r(getCursor());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f827f.onQueryRefine((CharSequence) tag);
        }
    }

    @Override // androidx.cursoradapter.widget.a, androidx.cursoradapter.widget.b.a
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        if (this.f827f.getVisibility() == 0 && this.f827f.getWindowVisibility() == 0) {
            try {
                Cursor cursorL = l(this.f828h, string, 50);
                if (cursorL != null) {
                    cursorL.getCount();
                    return cursorL;
                }
            } catch (RuntimeException e10) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e10);
            }
        }
        return null;
    }
}
