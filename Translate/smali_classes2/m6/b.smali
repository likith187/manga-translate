.class public Lm6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm6/a;

.field private b:Ld6/a;

.field protected c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm6/a;

    invoke-direct {v0}, Lm6/a;-><init>()V

    iput-object v0, p0, Lm6/b;->a:Lm6/a;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lm6/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lm6/a;

    invoke-direct {v0}, Lm6/a;-><init>()V

    iput-object v0, p0, Lm6/b;->a:Lm6/a;

    .line 6
    iput-object p1, p0, Lm6/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lm6/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm6/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lm6/b;->a:Lm6/a;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lm6/a;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lm6/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm6/b;->a(Lm6/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ld6/a;)V
    .locals 0

    iput-object p1, p0, Lm6/b;->b:Ld6/a;

    return-void
.end method
