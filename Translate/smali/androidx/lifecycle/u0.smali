.class public Landroidx/lifecycle/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/u0$a;,
        Landroidx/lifecycle/u0$b;,
        Landroidx/lifecycle/u0$c;,
        Landroidx/lifecycle/u0$d;,
        Landroidx/lifecycle/u0$e;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/u0$b;

.field public static final c:Ll0/a$c;


# instance fields
.field private final a:Ll0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/u0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/u0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/u0;->b:Landroidx/lifecycle/u0$b;

    sget-object v0, Ll0/a;->b:Ll0/a$a;

    new-instance v0, Landroidx/lifecycle/u0$f;

    invoke-direct {v0}, Landroidx/lifecycle/u0$f;-><init>()V

    sput-object v0, Landroidx/lifecycle/u0;->c:Ll0/a$c;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;)V
    .locals 7

    .line 1
    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ll0/c;

    invoke-direct {v0, p1, p2, p3}, Ll0/c;-><init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;)V

    invoke-direct {p0, v0}, Landroidx/lifecycle/u0;-><init>(Ll0/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 4
    sget-object p3, Ll0/a$b;->INSTANCE:Ll0/a$b;

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/x0;->getViewModelStore()Landroidx/lifecycle/w0;

    move-result-object v0

    .line 8
    sget-object v1, Lm0/h;->INSTANCE:Lm0/h;

    invoke-virtual {v1, p1}, Lm0/h;->b(Landroidx/lifecycle/x0;)Landroidx/lifecycle/u0$c;

    move-result-object v2

    .line 9
    invoke-virtual {v1, p1}, Lm0/h;->a(Landroidx/lifecycle/x0;)Ll0/a;

    move-result-object p1

    .line 10
    invoke-direct {p0, v0, v2, p1}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;)V

    return-void
.end method

.method private constructor <init>(Ll0/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/u0;->a:Ll0/c;

    return-void
.end method


# virtual methods
.method public final a(Lc9/c;)Landroidx/lifecycle/s0;
    .locals 2

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/u0;->a:Ll0/c;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Ll0/c;->e(Ll0/c;Lc9/c;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lv8/a;->c(Ljava/lang/Class;)Lc9/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u0;->a(Lc9/c;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lc9/c;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/u0;->a:Ll0/c;

    invoke-virtual {p0, p2, p1}, Ll0/c;->d(Lc9/c;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method
