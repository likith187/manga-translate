.class public abstract Landroidx/core/view/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/q0$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/WindowInsets;

.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/core/view/a1;->b:Landroidx/core/view/a1;

    invoke-virtual {v0}, Landroidx/core/view/a1;->x()Landroid/view/WindowInsets;

    move-result-object v0

    sput-object v0, Landroidx/core/view/q0;->a:Landroid/view/WindowInsets;

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/q0;->b:Z

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/view/q0$a;->a(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
