.class public final Lq0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/g$a;
    }
.end annotation


# static fields
.field public static final c:Lq0/g$a;


# instance fields
.field private final a:Lr0/b;

.field private final b:Lq0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq0/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq0/g;->c:Lq0/g$a;

    return-void
.end method

.method private constructor <init>(Lr0/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lq0/g;->a:Lr0/b;

    .line 4
    new-instance v0, Lq0/e;

    invoke-direct {v0, p1}, Lq0/e;-><init>(Lr0/b;)V

    iput-object v0, p0, Lq0/g;->b:Lq0/e;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq0/g;-><init>(Lr0/b;)V

    return-void
.end method

.method public static final a(Lq0/h;)Lq0/g;
    .locals 1

    sget-object v0, Lq0/g;->c:Lq0/g$a;

    invoke-virtual {v0, p0}, Lq0/g$a;->b(Lq0/h;)Lq0/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lq0/e;
    .locals 0

    iget-object p0, p0, Lq0/g;->b:Lq0/e;

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lq0/g;->a:Lr0/b;

    invoke-virtual {p0}, Lr0/b;->f()V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lq0/g;->a:Lr0/b;

    invoke-virtual {p0, p1}, Lr0/b;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq0/g;->a:Lr0/b;

    invoke-virtual {p0, p1}, Lr0/b;->i(Landroid/os/Bundle;)V

    return-void
.end method
