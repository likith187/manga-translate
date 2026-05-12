.class public final Lz8/b;
.super Lz8/a;
.source "SourceFile"


# instance fields
.field private final a:Lz8/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz8/a;-><init>()V

    new-instance v0, Lz8/b$a;

    invoke-direct {v0}, Lz8/b$a;-><init>()V

    iput-object v0, p0, Lz8/b;->a:Lz8/b$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lz8/b;->a:Lz8/b$a;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
