package com.oplus.aiunit.core.protocol.common;

import com.oplus.aiunit.core.protocol.ValueType;
import java.math.BigDecimal;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Rect2f implements ValueType {
    Float height;
    Float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Float f10863x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Float f10864y;

    public Rect2f() {
    }

    public static Rect2f fromJson(String str) {
        Rect2f rect2f = new Rect2f();
        try {
            JSONObject jSONObject = new JSONObject(str);
            rect2f.f10863x = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("x")).floatValue());
            rect2f.f10864y = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("y")).floatValue());
            rect2f.width = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("width")).floatValue());
            rect2f.height = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("height")).floatValue());
            return rect2f;
        } catch (Exception unused) {
            return null;
        }
    }

    public Float getHeight() {
        return this.height;
    }

    public Float getWidth() {
        return this.width;
    }

    public Float getX() {
        return this.f10863x;
    }

    public Float getY() {
        return this.f10864y;
    }

    public void setHeight(Float f10) {
        this.height = f10;
    }

    public void setWidth(Float f10) {
        this.width = f10;
    }

    public void setX(Float f10) {
        this.f10863x = f10;
    }

    public void setY(Float f10) {
        this.f10864y = f10;
    }

    @Override // com.oplus.aiunit.core.protocol.ValueType
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", this.f10863x);
            jSONObject.put("y", this.f10864y);
            jSONObject.put("width", this.width);
            jSONObject.put("height", this.height);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public Rect2f(Float f10, Float f11, Float f12, Float f13) {
        this.f10863x = f10;
        this.f10864y = f11;
        this.width = f12;
        this.height = f13;
    }
}
