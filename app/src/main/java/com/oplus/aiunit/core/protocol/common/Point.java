package com.oplus.aiunit.core.protocol.common;

import com.oplus.aiunit.core.protocol.ValueType;
import java.math.BigDecimal;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Point implements ValueType {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Float f10861x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Float f10862y;

    public Point() {
    }

    public static Point fromJson(String str) {
        Point point = new Point();
        try {
            JSONObject jSONObject = new JSONObject(str);
            point.f10861x = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("x")).floatValue());
            point.f10862y = Float.valueOf(BigDecimal.valueOf(jSONObject.getDouble("y")).floatValue());
            return point;
        } catch (Exception unused) {
            return null;
        }
    }

    public Float getX() {
        return this.f10861x;
    }

    public Float getY() {
        return this.f10862y;
    }

    public void setX(Float f10) {
        this.f10861x = f10;
    }

    public void setY(Float f10) {
        this.f10862y = f10;
    }

    @Override // com.oplus.aiunit.core.protocol.ValueType
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", this.f10861x);
            jSONObject.put("y", this.f10862y);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public Point(Float f10, Float f11) {
        this.f10861x = f10;
        this.f10862y = f11;
    }
}
