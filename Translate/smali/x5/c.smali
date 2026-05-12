.class public final Lx5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/c$a;,
        Lx5/c$b;,
        Lx5/c$c;,
        Lx5/c$d;
    }
.end annotation


# static fields
.field public static final g:Lx5/c$b;

.field public static volatile h:Lx5/c;


# instance fields
.field public final a:Ln8/j;

.field public final b:Ln8/j;

.field public final c:Ln8/j;

.field public final d:Ln8/j;

.field public final e:Ln8/j;

.field public f:Lkotlinx/coroutines/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx5/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx5/c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx5/c;->g:Lx5/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln8/n;->SYNCHRONIZED:Ln8/n;

    sget-object v1, Lx5/c$i;->INSTANCE:Lx5/c$i;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v1

    iput-object v1, p0, Lx5/c;->a:Ln8/j;

    sget-object v1, Lx5/c$e;->INSTANCE:Lx5/c$e;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v1

    iput-object v1, p0, Lx5/c;->b:Ln8/j;

    sget-object v1, Lx5/c$g;->INSTANCE:Lx5/c$g;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v1

    iput-object v1, p0, Lx5/c;->c:Ln8/j;

    sget-object v1, Lx5/c$f;->INSTANCE:Lx5/c$f;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v1

    iput-object v1, p0, Lx5/c;->d:Ln8/j;

    sget-object v1, Lx5/c$h;->INSTANCE:Lx5/c$h;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lx5/c;->e:Ln8/j;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lx5/c;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lx5/c;
    .locals 1

    sget-object v0, Lx5/c;->h:Lx5/c;

    return-object v0
.end method

.method public static final synthetic b(Lx5/c;)V
    .locals 0

    sput-object p0, Lx5/c;->h:Lx5/c;

    return-void
.end method


# virtual methods
.method public final c()Lkotlinx/coroutines/c0;
    .locals 1

    iget-object v0, p0, Lx5/c;->f:Lkotlinx/coroutines/c0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx5/c;->d()Lkotlinx/coroutines/c0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/c0;
    .locals 0

    iget-object p0, p0, Lx5/c;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/c0;

    return-object p0
.end method
