.class public abstract Lj8/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/n0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lj8/n0$a;)Lj8/n0;
    .locals 1

    new-instance v0, Lj8/a1;

    invoke-direct {v0, p0, p1}, Lj8/a1;-><init>(Landroid/graphics/Bitmap;Lj8/n0$a;)V

    return-object v0
.end method

.method public static c(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/content/Context;Lj8/n0$a;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p3}, Lj8/n0;->a(Landroid/graphics/Bitmap;Lj8/n0$a;)Lj8/n0;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lj8/n0;->b(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;
.end method
