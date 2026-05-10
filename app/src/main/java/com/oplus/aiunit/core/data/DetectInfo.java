package com.oplus.aiunit.core.data;

import java.util.ArrayList;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class DetectInfo {
    private boolean available;
    private final String detectName;
    private int state;
    private boolean unavailableBySelf;
    private ArrayList<SimpleUnitInfo> unitList;

    private DetectInfo(String str) {
        this.detectName = str;
        this.unitList = new ArrayList<>();
    }

    public final String getDetectName() {
        return this.detectName;
    }

    public final int getSpecificState() {
        return this.state;
    }

    public final boolean isAvailable() {
        return this.available;
    }

    public final boolean isUnAvailableBySelf() {
        return this.unavailableBySelf;
    }

    public String toString() {
        return "DetectInfo(" + this.detectName + ", " + this.state + " -> " + this.unitList + ", " + this.available + ", " + this.unavailableBySelf + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetectInfo(String detectName, ArrayList<SimpleUnitInfo> list) {
        this(detectName);
        r.e(detectName, "detectName");
        r.e(list, "list");
        this.unitList = list;
        int size = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            if (this.unitList.get(i10).isAvailable()) {
                this.available = true;
                this.unavailableBySelf = this.unitList.get(i10).isUnsupportedBySelf();
                this.state = this.unitList.get(i10).getState();
                break;
            }
            i10++;
        }
        if (this.available || this.unitList.isEmpty()) {
            return;
        }
        this.state = this.unitList.get(0).getState();
        this.unavailableBySelf = this.unitList.get(0).isUnsupportedBySelf();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetectInfo(String detectName, boolean z10) {
        this(detectName);
        r.e(detectName, "detectName");
        this.available = z10;
        this.state = z10 ? 1 : 0;
        this.unavailableBySelf = !z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetectInfo(String detectName, boolean z10, boolean z11) {
        this(detectName);
        r.e(detectName, "detectName");
        this.available = z10;
        this.state = z10 ? 1 : 0;
        this.unavailableBySelf = !z11;
    }
}
