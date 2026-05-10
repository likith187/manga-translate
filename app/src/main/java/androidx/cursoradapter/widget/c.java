package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f2184c;

    public c(Context context, int i10, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.f2183b = i10;
        this.f2182a = i10;
        this.f2184c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.a
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2184c.inflate(this.f2183b, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.a
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2184c.inflate(this.f2182a, viewGroup, false);
    }
}
