.class public interface abstract Lcom/coui/appcompat/state/DrawableStateProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_ENABLED:I = 0x101009e

.field public static final STATE_ENABLED_FLAG:I = 0x20

.field public static final STATE_FOCUSED:I = 0x101009c

.field public static final STATE_FOCUSED_FLAG:I = 0x2

.field public static final STATE_HOVERED:I = 0x1010367

.field public static final STATE_HOVERED_FLAG:I = 0x4

.field public static final STATE_PRESSED:I = 0x10100a7

.field public static final STATE_PRESSED_FLAG:I = 0x10

.field public static final STATE_SELECTED:I = 0x10100a1

.field public static final STATE_SELECTED_FLAG:I = 0x8

.field public static final STATE_TOUCH_ENTERED:I = 0x1

.field public static final STATE_TOUCH_ENTERED_FLAG:I = 0x1

.field public static final TOUCH_TYPE_PRESSED:I = 0x0

.field public static final TOUCH_TYPE_SELECTED:I = 0x1


# virtual methods
.method public abstract getTouchType()I
.end method

.method public abstract isDrawableEnabled()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isHovered()Z
.end method

.method public abstract isNativeStateEnabled(I)Z
.end method

.method public abstract isPressed()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract isStateLocked(I)Z
.end method

.method public abstract isTouchEntered()Z
.end method

.method public abstract onViewStateChanged(I)V
.end method

.method public abstract setDrawableEnabled(Z)V
.end method

.method public abstract setFocusEntered()V
.end method

.method public abstract setFocusExited()V
.end method

.method public abstract setHoverEntered()V
.end method

.method public abstract setHoverExited()V
.end method

.method public abstract setNativeStateEnabled(IZ)V
.end method

.method public abstract setSelectedEntered()V
.end method

.method public abstract setSelectedExited()V
.end method

.method public abstract setStateLocked(IZZZ)V
.end method

.method public abstract setTouchEntered()V
.end method

.method public abstract setTouchExited()V
.end method

.method public abstract setTouchSelectEntered()V
.end method

.method public abstract setTouchSelectExited()V
.end method
