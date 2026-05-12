.class public abstract Ld0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/c$b;,
        Ld0/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityManager;Ld0/c$a;)Z
    .locals 1

    new-instance v0, Ld0/c$b;

    invoke-direct {v0, p1}, Ld0/c$b;-><init>(Ld0/c$a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/accessibility/AccessibilityManager;Ld0/c$a;)Z
    .locals 1

    new-instance v0, Ld0/c$b;

    invoke-direct {v0, p1}, Ld0/c$b;-><init>(Ld0/c$a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method
