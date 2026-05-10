package com.coui.appcompat.opensource;

import androidx.recyclerview.widget.k;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class DiffCallback extends k.f {
    @Override // androidx.recyclerview.widget.k.f
    public boolean areContentsTheSame(StatementSegment oldItem, StatementSegment newItem) {
        r.e(oldItem, "oldItem");
        r.e(newItem, "newItem");
        return r.a(oldItem.getContent(), newItem.getContent());
    }

    @Override // androidx.recyclerview.widget.k.f
    public boolean areItemsTheSame(StatementSegment oldItem, StatementSegment newItem) {
        r.e(oldItem, "oldItem");
        r.e(newItem, "newItem");
        return r.a(oldItem, newItem);
    }
}
