.class public Landroidx/lifecycle/u0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/u0$d$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/u0$d$a;

.field private static c:Landroidx/lifecycle/u0$d;

.field public static final d:Ll0/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/u0$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/u0$d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/u0$d;->b:Landroidx/lifecycle/u0$d$a;

    sget-object v0, Landroidx/lifecycle/u0;->c:Ll0/a$c;

    sput-object v0, Landroidx/lifecycle/u0$d;->d:Ll0/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d()Landroidx/lifecycle/u0$d;
    .locals 1

    sget-object v0, Landroidx/lifecycle/u0$d;->c:Landroidx/lifecycle/u0$d;

    return-object v0
.end method

.method public static final synthetic e(Landroidx/lifecycle/u0$d;)V
    .locals 0

    sput-object p0, Landroidx/lifecycle/u0$d;->c:Landroidx/lifecycle/u0$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 0

    const-string p0, "modelClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lm0/e;->INSTANCE:Lm0/e;

    invoke-virtual {p0, p1}, Lm0/e;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

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

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/u0$d;->c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u0$d;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method
