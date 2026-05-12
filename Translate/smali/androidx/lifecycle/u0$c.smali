.class public interface abstract Landroidx/lifecycle/u0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/u0$c$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/u0$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/u0$c$a;->a:Landroidx/lifecycle/u0$c$a;

    sput-object v0, Landroidx/lifecycle/u0$c;->a:Landroidx/lifecycle/u0$c$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 0

    const-string p0, "modelClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lm0/h;->INSTANCE:Lm0/h;

    invoke-virtual {p0}, Lm0/h;->d()Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method

.method public b(Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/u0$c;->c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/lifecycle/u0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method
