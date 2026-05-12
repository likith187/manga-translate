.class public abstract Landroidx/core/app/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/b$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroidx/core/app/b;
    .locals 1

    new-instance v0, Landroidx/core/app/b$a;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/app/b$a;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/os/Bundle;
.end method
