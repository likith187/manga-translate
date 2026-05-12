.class public abstract Lu/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/f$a;,
        Lu/f$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lu/f;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lu/f$a;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/graphics/Paint;Lu/a;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lu/c;->a(Lu/a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lu/f$b;->a(Landroid/graphics/Paint;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
