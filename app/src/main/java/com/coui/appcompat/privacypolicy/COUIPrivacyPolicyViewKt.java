package com.coui.appcompat.privacypolicy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.view.r0;
import com.coui.appcompat.privacypolicy.COUIPrivacyPolicyView;
import com.support.privacypolicy.R$dimen;
import com.support.privacypolicy.R$drawable;
import com.support.privacypolicy.R$layout;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class COUIPrivacyPolicyViewKt {
    private static final int TAG_INVALID = -1;
    private static final int TAG_SMALL_TITLE = 2;
    private static final int TAG_TABLE = 3;
    private static final int TAG_TITLE = 1;

    public static final TextView body(COUIPrivacyPolicyView.Section section, l init) {
        r.e(section, "<this>");
        r.e(init, "init");
        TextView articleBody = getArticleBody(section);
        articleBody.setText((CharSequence) init.invoke(articleBody));
        section.addView(articleBody);
        return articleBody;
    }

    public static final TextView boldBody(COUIPrivacyPolicyView.Section section, l init) {
        r.e(section, "<this>");
        r.e(init, "init");
        TextView boldBody = getBoldBody(section);
        boldBody.setText((CharSequence) init.invoke(boldBody));
        section.addView(boldBody);
        return boldBody;
    }

    public static final TextView columnBody(TableRow tableRow, float f10, l init) {
        r.e(tableRow, "<this>");
        r.e(init, "init");
        TextView tableColumnBody = getTableColumnBody(tableRow, f10);
        tableColumnBody.setText((CharSequence) init.invoke(tableColumnBody));
        tableRow.addView(tableColumnBody);
        return tableColumnBody;
    }

    public static /* synthetic */ TextView columnBody$default(TableRow tableRow, float f10, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        return columnBody(tableRow, f10, lVar);
    }

    private static final TextView getArticleBody(COUIPrivacyPolicyView.Section section) {
        return getTextView(section, R$layout.coui_component_privacy_policy_article_body);
    }

    private static final TextView getBoldBody(COUIPrivacyPolicyView.Section section) {
        return getTextView(section, R$layout.coui_component_privacy_policy_section_heading);
    }

    private static final int getDimenPx(View view, int i10) {
        return view.getContext().getResources().getDimensionPixelSize(i10);
    }

    private static final int getIntTag(View view) {
        Object tag = view.getTag();
        Integer num = tag instanceof Integer ? (Integer) tag : null;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    private static final int getLastIntTag(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return -1;
        }
        return getIntTag(r0.a(viewGroup, viewGroup.getChildCount() - 1));
    }

    private static final LinearLayout.LayoutParams getLpSection(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = getDimenPx(cOUIPrivacyPolicyView, R$dimen.coui_component_privacy_policy_section_margin_top);
        layoutParams.setMarginStart(getDimenPx(cOUIPrivacyPolicyView, R$dimen.coui_component_privacy_policy_content_margin_side));
        layoutParams.setMarginEnd(getDimenPx(cOUIPrivacyPolicyView, R$dimen.coui_component_privacy_policy_content_margin_side));
        return layoutParams;
    }

    private static final LinearLayout.LayoutParams getLpTitle(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = getDimenPx(cOUIPrivacyPolicyView, R$dimen.coui_component_privacy_policy_title_margin_top);
        return layoutParams;
    }

    private static final LinearLayout.LayoutParams getMarginTopLp(View view, Integer num) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = num != null ? Integer.valueOf(getDimenPx(view, num.intValue())).intValue() : 0;
        return layoutParams;
    }

    static /* synthetic */ LinearLayout.LayoutParams getMarginTopLp$default(View view, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        return getMarginTopLp(view, num);
    }

    private static final TextView getSectionTitle(COUIPrivacyPolicyView.Section section) {
        return getTextView(section, R$layout.coui_component_privacy_policy_section_heading);
    }

    private static final TextView getTableColumnBody(TableRow tableRow, float f10) {
        TextView textView = getTextView(tableRow, R$layout.coui_component_privacy_policy_table_column_body);
        int dimenPx = getDimenPx(textView, R$dimen.coui_component_privacy_policy_table_padding);
        textView.setPadding(dimenPx, dimenPx, dimenPx, dimenPx);
        textView.setLayoutParams(new TableRow.LayoutParams(0, -1, f10));
        return textView;
    }

    private static final TextView getTextView(View view, int i10) {
        View viewInflate = View.inflate(view.getContext(), i10, null);
        r.c(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
        return (TextView) viewInflate;
    }

    private static final TextView getTitle(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        TextView textView = getTextView(cOUIPrivacyPolicyView, R$layout.coui_component_privacy_policy_article_heading);
        int dimenPx = getDimenPx(textView, R$dimen.coui_component_privacy_policy_title_padding);
        textView.setPadding(dimenPx, dimenPx, dimenPx, dimenPx);
        textView.setLayoutParams(getLpTitle(cOUIPrivacyPolicyView));
        textView.setTag(1);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void overrideChildLp(ViewGroup viewGroup, View view) {
        view.setLayoutParams(viewGroup.getChildCount() == 0 ? getMarginTopLp$default(viewGroup, null, 1, null) : getIntTag(view) == 2 ? getMarginTopLp(viewGroup, Integer.valueOf(R$dimen.coui_component_privacy_policy_small_title_margin_top)) : ((getIntTag(view) != 3 || viewGroup.getChildCount() <= 0) && getLastIntTag(viewGroup) != 3) ? getMarginTopLp(viewGroup, Integer.valueOf(R$dimen.coui_component_privacy_policy_body_margin_top)) : getMarginTopLp(viewGroup, Integer.valueOf(R$dimen.coui_component_privacy_policy_table_margin_vertical)));
    }

    public static final TableRow row(TableLayout tableLayout, l init) {
        r.e(tableLayout, "<this>");
        r.e(init, "init");
        TableRow tableRow = new TableRow(tableLayout.getContext());
        tableRow.setLayoutParams(new TableLayout.LayoutParams());
        init.invoke(tableRow);
        tableRow.setDividerDrawable(e.a.b(tableLayout.getContext(), R$drawable.coui_component_table_divider_vertical));
        tableRow.setShowDividers(7);
        tableLayout.addView(tableRow);
        return tableRow;
    }

    public static final COUIPrivacyPolicyView.Section section(COUIPrivacyPolicyView cOUIPrivacyPolicyView, l init) {
        r.e(cOUIPrivacyPolicyView, "<this>");
        r.e(init, "init");
        Context context = cOUIPrivacyPolicyView.getContext();
        r.d(context, "context");
        COUIPrivacyPolicyView.Section section = new COUIPrivacyPolicyView.Section(context);
        section.setOrientation(1);
        LinearLayout.LayoutParams lpSection = getLpSection(cOUIPrivacyPolicyView);
        lpSection.topMargin = getLastIntTag(cOUIPrivacyPolicyView) == 1 ? getDimenPx(cOUIPrivacyPolicyView, R$dimen.coui_component_privacy_policy_section_margin_top_0) : getDimenPx(cOUIPrivacyPolicyView, R$dimen.coui_component_privacy_policy_section_margin_top);
        section.setLayoutParams(lpSection);
        init.invoke(section);
        cOUIPrivacyPolicyView.addView(section);
        return section;
    }

    public static final TextView sectionTitle(COUIPrivacyPolicyView.Section section, l init) {
        r.e(section, "<this>");
        r.e(init, "init");
        TextView sectionTitle = getSectionTitle(section);
        sectionTitle.setText((CharSequence) init.invoke(sectionTitle));
        section.addView(sectionTitle);
        return sectionTitle;
    }

    public static final TextView smallTitle(COUIPrivacyPolicyView.Section section, l init) {
        r.e(section, "<this>");
        r.e(init, "init");
        TextView articleBody = getArticleBody(section);
        articleBody.setText((CharSequence) init.invoke(articleBody));
        articleBody.setTag(2);
        section.addView(articleBody);
        return articleBody;
    }

    public static final TableLayout table(COUIPrivacyPolicyView.Section section, l init) {
        r.e(section, "<this>");
        r.e(init, "init");
        TableLayout tableLayout = new TableLayout(section.getContext());
        tableLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        tableLayout.setTag(3);
        tableLayout.setDividerDrawable(e.a.b(section.getContext(), R$drawable.coui_component_table_divider_horizontal));
        tableLayout.setShowDividers(7);
        init.invoke(tableLayout);
        section.addView(tableLayout);
        return tableLayout;
    }

    public static final TextView title(COUIPrivacyPolicyView cOUIPrivacyPolicyView, l init) {
        r.e(cOUIPrivacyPolicyView, "<this>");
        r.e(init, "init");
        TextView title = getTitle(cOUIPrivacyPolicyView);
        title.setText((CharSequence) init.invoke(title));
        cOUIPrivacyPolicyView.addView(title);
        return title;
    }
}
