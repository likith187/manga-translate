.class public interface abstract Lcom/coui/appcompat/poplist/PopupMenuConfigRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PopupMenuConfigRule$BarrierDirection;,
        Lcom/coui/appcompat/poplist/PopupMenuConfigRule$PopupMenuConfigType;
    }
.end annotation


# static fields
.field public static final BARRIER_FROM_BOTTOM:I = 0x3

.field public static final BARRIER_FROM_LEFT:I = 0x0

.field public static final BARRIER_FROM_RIGHT:I = 0x2

.field public static final BARRIER_FROM_TOP:I = 0x1

.field public static final BARRIER_GONE:I = -0x1

.field public static final BARRIER_WINDOW:I = 0x4

.field public static final TYPE_ANCHOR:I = 0x1

.field public static final TYPE_BARRIER:I = 0x2

.field public static final TYPE_SUBMENU_ANCHOR:I = 0x3

.field public static final TYPE_WINDOW:I


# virtual methods
.method public abstract getBarrierDirection()I
.end method

.method public abstract getDisplayFrame()Landroid/graphics/Rect;
.end method

.method public abstract getOutsets()Landroid/graphics/Rect;
.end method

.method public abstract getPopupMenuRuleEnabled()Z
.end method

.method public abstract getType()I
.end method

.method public abstract setPopupMenuRuleEnabled(Z)V
.end method
