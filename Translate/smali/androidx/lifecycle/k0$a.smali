.class public final Landroidx/lifecycle/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/k0;->e(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 0

    const-string p0, "modelClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extras"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/lifecycle/n0;

    invoke-direct {p0}, Landroidx/lifecycle/n0;-><init>()V

    return-object p0
.end method
