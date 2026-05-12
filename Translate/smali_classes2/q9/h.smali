.class public final Lq9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/h$a;
    }
.end annotation


# static fields
.field public static final d:Lq9/h$a;


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq9/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq9/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq9/h;->d:Lq9/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/h;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lq9/h;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lq9/h;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "closer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq9/h;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lq9/h;->b:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lq9/h;->c:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
