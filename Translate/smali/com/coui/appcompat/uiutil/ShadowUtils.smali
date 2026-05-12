.class public Lcom/coui/appcompat/uiutil/ShadowUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SDK_SUB_VERSION:I = 0x2

.field public static final SDK_VERSION:I = 0x22

.field public static final SHADOW_LV1:I = 0x0

.field public static final SHADOW_LV2:I = 0x1

.field public static final SHADOW_LV3:I = 0x2

.field public static final SHADOW_LV4:I = 0x3

.field public static final SHADOW_LV5:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShadowUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOPlusViewElevationSDK()Z
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coui/appcompat/version/COUIVersionUtil;->checkOPlusViewSubSDK(II)Z

    move-result v0

    return v0
.end method

.method public static clearShadow(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromLower(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public static setElevationToFloatingActionButton(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;III)V

    return-void
.end method

.method public static setElevationToFloatingActionButton(Landroid/view/View;III)V
    .locals 7

    if-nez p0, :cond_0

    .line 3
    const-string p0, "ShadowUtils"

    const-string p1, "setElevationToFloatingActionButton target view is null"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p3, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p3

    .line 5
    :cond_1
    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    sget p2, Lcom/support/appcompat/R$dimen;->coui_float_btn_shadow_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 8
    sget p2, Lcom/support/appcompat/R$integer;->coui_shadow_color_float_btn:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 10
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    .line 11
    invoke-static {p2, v0, v2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget p2, Lcom/support/appcompat/R$dimen;->coui_float_btn_shadow_light_y:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p2, Lcom/support/appcompat/R$dimen;->coui_float_btn_shadow_light_z:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget p2, Lcom/support/appcompat/R$dimen;->coui_float_btn_shadow_light_r:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget p2, Lcom/support/appcompat/R$dimen;->coui_float_btn_shadow_blur_r:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_for_lowerP:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromLower(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public static setElevationToView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0, v0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setElevationToView(Landroid/view/View;III)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_for_lowerP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3
    invoke-static {p0, p1, p2, v0, p3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setElevationToView(Landroid/view/View;IIII)V
    .locals 7

    if-nez p0, :cond_0

    .line 4
    const-string p0, "ShadowUtils"

    const-string p1, "setElevationToView view is null"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 7
    sget p3, Lcom/support/appcompat/R$dimen;->coui_shadow_elevation_default:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 8
    sget p1, Lcom/support/appcompat/R$integer;->coui_shadow_color_lv1:I

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_y_level1:I

    .line 10
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_z_level1:I

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_r_level1:I

    .line 12
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_blur_r_level1:I

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v0, p0

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto/16 :goto_0

    :cond_1
    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    .line 15
    sget p1, Lcom/support/appcompat/R$integer;->coui_shadow_color_lv2:I

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_y_level2:I

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_z_level2:I

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_r_level2:I

    .line 19
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_blur_r_level2:I

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v0, p0

    .line 21
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto/16 :goto_0

    :cond_2
    const/4 p4, 0x2

    if-ne p1, p4, :cond_3

    .line 22
    sget p1, Lcom/support/appcompat/R$integer;->coui_shadow_color_lv3:I

    .line 23
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_y_level3:I

    .line 24
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_z_level3:I

    .line 25
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_r_level3:I

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_blur_r_level3:I

    .line 27
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v0, p0

    .line 28
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto :goto_0

    :cond_3
    const/4 p4, 0x3

    if-ne p1, p4, :cond_4

    .line 29
    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_elevation_four:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    sget p1, Lcom/support/appcompat/R$integer;->coui_shadow_color_lv4:I

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_y_level4:I

    .line 32
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_z_level4:I

    .line 33
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_r_level4:I

    .line 34
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_blur_r_level4:I

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v0, p0

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto :goto_0

    :cond_4
    const/4 p4, 0x4

    if-ne p1, p4, :cond_6

    .line 37
    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_elevation_five:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 38
    sget p1, Lcom/support/appcompat/R$integer;->coui_shadow_color_lv5:I

    .line 39
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_y_level5:I

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_z_level5:I

    .line 41
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_light_r_level5:I

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget p1, Lcom/support/appcompat/R$dimen;->coui_shadow_blur_r_level5:I

    .line 43
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v0, p0

    .line 44
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 45
    :cond_5
    invoke-static {p0, p2, p4, p3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToViewFromLower(Landroid/view/View;III)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static setElevationToViewFromLower(Landroid/view/View;III)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public static setElevationToViewFromOPlusView(Landroid/view/View;IIIIII)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    new-instance v0, Lcom/oplus/view/OplusView;

    invoke-direct {v0, p0}, Lcom/oplus/view/OplusView;-><init>(Landroid/view/View;)V

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    const/high16 v1, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/view/OplusView;->setOverrideLightSourceGeometry(FFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setOverrideLightSourceGeometry error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShadowUtils"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
