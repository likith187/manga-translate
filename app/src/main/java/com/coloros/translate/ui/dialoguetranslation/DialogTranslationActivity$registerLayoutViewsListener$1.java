package com.coloros.translate.ui.dialoguetranslation;

import android.view.MenuItem;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.utils.f1;
import com.coui.appcompat.material.navigation.NavigationBarView;
import com.google.android.material.navigation.NavigationBarView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DialogTranslationActivity$registerLayoutViewsListener$1 implements NavigationBarView.c, NavigationBarView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ DialogTranslationActivity f6192a;

    DialogTranslationActivity$registerLayoutViewsListener$1(DialogTranslationActivity dialogTranslationActivity) {
        this.f6192a = dialogTranslationActivity;
    }

    @Override // com.google.android.material.navigation.NavigationBarView.c, com.coui.appcompat.material.navigation.NavigationBarView.OnItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem p02) {
        kotlin.jvm.internal.r.e(p02, "p0");
        int itemId = p02.getItemId();
        if (itemId == R.id.navigation_copy) {
            StringBuffer stringBuffer = new StringBuffer();
            ArrayList arrayList = new ArrayList();
            Set<String> setKeySet = DialogTranslationActivity.a2(this.f6192a).g0().keySet();
            kotlin.jvm.internal.r.d(setKeySet, "<get-keys>(...)");
            for (String str : setKeySet) {
                kotlin.jvm.internal.r.b(str);
                arrayList.add(Integer.valueOf(Integer.parseInt(str)));
            }
            Collections.sort(arrayList);
            DialogTranslationActivity dialogTranslationActivity = this.f6192a;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (iIntValue >= DialogTranslationActivity.a2(dialogTranslationActivity).K().size()) {
                    com.coloros.translate.utils.c0.f7098a.e("DialogTranslationActivity", "index:" + iIntValue + " >= mViewModel.mConversionList.value?.size:" + DialogTranslationActivity.a2(dialogTranslationActivity).K().size());
                    return true;
                }
                Conversation conversation = (Conversation) DialogTranslationActivity.a2(dialogTranslationActivity).K().get(iIntValue);
                if (iIntValue != 0) {
                    stringBuffer.append("\n");
                }
                String fromText = conversation.getFromText();
                String str2 = "";
                if (fromText == null) {
                    fromText = "";
                }
                String toText = conversation.getToText();
                if (toText != null) {
                    str2 = toText;
                }
                stringBuffer.append(fromText + "\n" + str2);
                f1.f7117a.c(dialogTranslationActivity, "event_copy_for_dialog", dialogTranslationActivity.S.getSortIndex(), dialogTranslationActivity.T.getSortIndex());
            }
            com.coloros.translate.widget.k kVarA = com.coloros.translate.widget.k.f7233c.a();
            DialogTranslationActivity dialogTranslationActivity2 = this.f6192a;
            String string = stringBuffer.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            kVarA.d(dialogTranslationActivity2, string, R.string.copy_text);
        } else if (itemId == R.id.navigation_delete) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - this.f6192a.H) < 600) {
                return true;
            }
            this.f6192a.H = jCurrentTimeMillis;
            this.f6192a.G2();
        }
        return true;
    }
}
