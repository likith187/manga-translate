.class public final Landroidx/core/view/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lu/e;

.field private final b:Lu/e;


# direct methods
.method private constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/view/z0$c;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Lu/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/z0$a;->a:Lu/e;

    invoke-static {p1}, Landroidx/core/view/z0$c;->f(Landroid/view/WindowInsetsAnimation$Bounds;)Lu/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/z0$a;->b:Lu/e;

    return-void
.end method

.method public static d(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/view/z0$a;
    .locals 1

    new-instance v0, Landroidx/core/view/z0$a;

    invoke-direct {v0, p0}, Landroidx/core/view/z0$a;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-object v0
.end method


# virtual methods
.method public a()Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/z0$a;->a:Lu/e;

    return-object p0
.end method

.method public b()Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/z0$a;->b:Lu/e;

    return-object p0
.end method

.method public c()Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/z0$c;->e(Landroidx/core/view/z0$a;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/z0$a;->a:Lu/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/core/view/z0$a;->b:Lu/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
