package com.oplus.aiunit.translation.model;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class LlmStreamContent {
    private ArrayList<SseParts> parts;
    private String role;

    public static final class SseParts {
        private String text;

        public final String getText() {
            return this.text;
        }

        public final void setText(String str) {
            this.text = str;
        }
    }

    public final ArrayList<SseParts> getParts() {
        return this.parts;
    }

    public final String getRole() {
        return this.role;
    }

    public final void setParts(ArrayList<SseParts> arrayList) {
        this.parts = arrayList;
    }

    public final void setRole(String str) {
        this.role = str;
    }
}
