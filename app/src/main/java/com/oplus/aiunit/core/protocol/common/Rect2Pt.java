package com.oplus.aiunit.core.protocol.common;

import com.oplus.aiunit.core.protocol.ValueType;
import java.math.BigDecimal;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Rect2Pt implements ValueType {
    Float xmax;
    Float xmin;
    Float ymax;
    Float ymin;

    public Rect2Pt() {
    }

    public static Rect2Pt fromJson(String str) {
        Rect2Pt rect2Pt = new Rect2Pt();
        try {
            JSONObject jSONObject = new JSONObject(str);
            rect2Pt.ymin = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("ymin")).floatValue());
            rect2Pt.xmin = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("xmin")).floatValue());
            rect2Pt.ymax = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("ymax")).floatValue());
            rect2Pt.xmax = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("xmax")).floatValue());
            return rect2Pt;
        } catch (Exception unused) {
            return null;
        }
    }

    public Float getXmax() {
        return this.xmax;
    }

    public Float getXmin() {
        return this.xmin;
    }

    public Float getYmax() {
        return this.ymax;
    }

    public Float getYmin() {
        return this.ymin;
    }

    public void setXmax(Float f10) {
        this.xmax = f10;
    }

    public void setXmin(Float f10) {
        this.xmin = f10;
    }

    public void setYmax(Float f10) {
        this.ymax = f10;
    }

    public void setYmin(Float f10) {
        this.ymin = f10;
    }

    @Override // com.oplus.aiunit.core.protocol.ValueType
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ymin", this.ymin);
            jSONObject.put("xmin", this.xmin);
            jSONObject.put("ymax", this.ymax);
            jSONObject.put("xmax", this.xmax);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public Rect2Pt(Float f10, Float f11, Float f12, Float f13) {
        this.ymin = f10;
        this.xmin = f11;
        this.ymax = f12;
        this.xmax = f13;
    }
}
