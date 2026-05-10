package com.coloros.translate.ui.texttranslation;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import com.coloros.translate.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ActionMode.Callback2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0096a f6963b = new C0096a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f6964a;

    /* JADX INFO: renamed from: com.coloros.translate.ui.texttranslation.a$a, reason: collision with other inner class name */
    public static final class C0096a {
        public /* synthetic */ C0096a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0096a() {
        }
    }

    public a(TextView targetView) {
        kotlin.jvm.internal.r.e(targetView, "targetView");
        this.f6964a = targetView;
    }

    private final String a() {
        if (!this.f6964a.hasSelection()) {
            return null;
        }
        int selectionStart = this.f6964a.getSelectionStart();
        int selectionEnd = this.f6964a.getSelectionEnd();
        return (selectionStart > selectionEnd ? this.f6964a.getText().subSequence(selectionEnd, selectionStart) : this.f6964a.getText().subSequence(selectionStart, selectionEnd)).toString();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        Integer numValueOf = menuItem != null ? Integer.valueOf(menuItem.getItemId()) : null;
        if (numValueOf == null || numValueOf.intValue() != 16908321) {
            return false;
        }
        String strA = a();
        if (strA != null && strA.length() != 0) {
            com.coloros.translate.widget.k kVarA = com.coloros.translate.widget.k.f7233c.a();
            Context context = this.f6964a.getContext();
            kotlin.jvm.internal.r.d(context, "getContext(...)");
            kVarA.d(context, strA, R.string.text_has_been_copied);
        }
        if (actionMode == null) {
            return true;
        }
        actionMode.finish();
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        MenuItem menuItemFindItem;
        if (menu == null || (menuItemFindItem = menu.findItem(android.R.id.copy)) == null) {
            return true;
        }
        menu.removeItem(menuItemFindItem.getItemId());
        menu.add(menuItemFindItem.getGroupId(), android.R.id.copy, menuItemFindItem.getOrder(), R.string.copy_talk);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return true;
    }
}
