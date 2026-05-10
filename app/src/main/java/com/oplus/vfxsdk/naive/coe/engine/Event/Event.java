package com.oplus.vfxsdk.naive.coe.engine.Event;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class Event {
    protected String m_name;
    protected a m_type;

    public enum a {
        NONE,
        TOUCH,
        UNIFORM,
        UPDATE_MESH,
        MESSAGE,
        SET_SURFACE,
        SET_VIEWPORT,
        SET_SCREEN_SIZE
    }

    Event(String str, int i10) {
        this.m_type = a.NONE;
        this.m_type = fromOrdinal(i10);
        this.m_name = str;
    }

    public static a fromOrdinal(int i10) {
        a[] aVarArrValues = a.values();
        return (i10 < 0 || i10 >= aVarArrValues.length) ? a.NONE : aVarArrValues[i10];
    }

    public String getName() {
        return this.m_name;
    }

    public a getType() {
        return this.m_type;
    }

    public void setName(String str) {
        this.m_name = str;
    }

    public void setType(a aVar) {
        this.m_type = aVar;
    }

    Event() {
        this.m_type = a.NONE;
    }
}
