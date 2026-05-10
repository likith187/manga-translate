package com.oplus.aiunit.translation.data;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SensitiveWordFilter {
    private Integer end;
    private Map<String, LabelInfo> labels;
    private Integer start;
    private String text;

    public static final class LabelInfo {
        private String desc;
        private Integer id;

        public final String getDesc() {
            return this.desc;
        }

        public final Integer getId() {
            return this.id;
        }

        public final void setDesc(String str) {
            this.desc = str;
        }

        public final void setId(Integer num) {
            this.id = num;
        }

        public String toString() {
            return "LabelInfo(id=" + this.id + ", desc=" + this.desc + ')';
        }
    }

    public final Integer getEnd() {
        return this.end;
    }

    public final Map<String, LabelInfo> getLabels() {
        return this.labels;
    }

    public final Integer getStart() {
        return this.start;
    }

    public final String getText() {
        return this.text;
    }

    public final void setEnd(Integer num) {
        this.end = num;
    }

    public final void setLabels(Map<String, LabelInfo> map) {
        this.labels = map;
    }

    public final void setStart(Integer num) {
        this.start = num;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public String toString() {
        return "SensitiveWordFilter(text=" + this.text + ", start=" + this.start + ", end=" + this.end + ", desc=" + this.labels + ')';
    }
}
