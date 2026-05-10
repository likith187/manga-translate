package com.oplus.vfxsdk.common;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class u {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ u[] $VALUES;
    public static final u Vec2 = new u("Vec2", 0);
    public static final u Vec3 = new u("Vec3", 1);
    public static final u Vec4 = new u("Vec4", 2);
    public static final u Color = new u("Color", 3);
    public static final u Int = new u("Int", 4);
    public static final u Range = new u("Range", 5);
    public static final u Float = new u("Float", 6);
    public static final u UseFBO = new u("UseFBO", 7);
    public static final u FBO = new u("FBO", 8);
    public static final u Texture = new u("Texture", 9);
    public static final u fv = new u("fv", 10);
    public static final u Event = new u("Event", 11);

    private static final /* synthetic */ u[] $values() {
        return new u[]{Vec2, Vec3, Vec4, Color, Int, Range, Float, UseFBO, FBO, Texture, fv, Event};
    }

    static {
        u[] uVarArr$values = $values();
        $VALUES = uVarArr$values;
        $ENTRIES = r8.b.a(uVarArr$values);
    }

    private u(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    public static u[] values() {
        return (u[]) $VALUES.clone();
    }
}
