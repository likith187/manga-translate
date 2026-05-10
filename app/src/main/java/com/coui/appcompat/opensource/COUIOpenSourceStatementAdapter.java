package com.coui.appcompat.opensource;

import android.content.res.AssetManager;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.q;
import com.support.component.R$layout;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import kotlin.io.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class COUIOpenSourceStatementAdapter extends q {
    private static final int CONTENT_CONTAINER_MAX_LINE_COUNT = 50;
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private static final class TimeConsumingOperationOnMainThreadException extends RuntimeException {
        public TimeConsumingOperationOnMainThreadException() {
            super("The method loadText is time consuming, can not call this method on main thread");
        }
    }

    public static final class ViewHolder extends RecyclerView.d0 {
        private final TextView content;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView) {
            super(itemView);
            r.e(itemView, "itemView");
            this.content = (TextView) itemView;
        }

        public final TextView getContent() {
            return this.content;
        }
    }

    public COUIOpenSourceStatementAdapter() {
        super(new DiffCallback());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadContent$lambda$4$lambda$3(COUIOpenSourceStatementAdapter this$0, ArrayList statementSegments) {
        r.e(this$0, "this$0");
        r.e(statementSegments, "$statementSegments");
        this$0.submitList(statementSegments);
    }

    public final String loadContent(RecyclerView recyclerView, String file) {
        Object objM59constructorimpl;
        BufferedReader bufferedReader;
        StringBuilder sb;
        int i10;
        r.e(recyclerView, "<this>");
        r.e(file, "file");
        if (Looper.getMainLooper().isCurrentThread()) {
            throw new TimeConsumingOperationOnMainThreadException();
        }
        final ArrayList arrayList = new ArrayList();
        AssetManager assets = recyclerView.getContext().getAssets();
        try {
            r.a aVar = n8.r.Companion;
            bufferedReader = new BufferedReader(new InputStreamReader(assets.open(file)));
            try {
                sb = new StringBuilder();
                i10 = 0;
            } finally {
            }
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            i10++;
            if (i10 % 50 == 0) {
                sb.append(line);
                String string = sb.toString();
                kotlin.jvm.internal.r.d(string, "block.toString()");
                arrayList.add(new StatementSegment(string, i10));
                sb = new StringBuilder();
            } else {
                sb.append(line);
                kotlin.jvm.internal.r.d(sb, "append(value)");
                sb.append('\n');
                kotlin.jvm.internal.r.d(sb, "append('\\n')");
            }
            r.a aVar22 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            return n8.r.m67toStringimpl(objM59constructorimpl);
        }
        if (sb.length() > 0) {
            String string2 = sb.toString();
            kotlin.jvm.internal.r.d(string2, "block.toString()");
            arrayList.add(new StatementSegment(string2, i10 + 1));
        }
        h0 h0Var = h0.INSTANCE;
        c.a(bufferedReader, null);
        objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(recyclerView.post(new Runnable() { // from class: com.coui.appcompat.opensource.a
            @Override // java.lang.Runnable
            public final void run() {
                COUIOpenSourceStatementAdapter.loadContent$lambda$4$lambda$3(this.f7278a, arrayList);
            }
        })));
        return n8.r.m67toStringimpl(objM59constructorimpl);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onBindViewHolder(ViewHolder holder, int i10) {
        kotlin.jvm.internal.r.e(holder, "holder");
        holder.getContent().setText(((StatementSegment) getItem(i10)).getContent());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public ViewHolder onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        View textView = View.inflate(parent.getContext(), R$layout.coui_component_opensource_statement_article_body, null);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        kotlin.jvm.internal.r.d(textView, "textView");
        return new ViewHolder(textView);
    }
}
