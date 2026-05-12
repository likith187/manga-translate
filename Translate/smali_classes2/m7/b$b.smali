.class public Lm7/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm7/b$b;->a:I

    return-void
.end method

.method static synthetic a(Lm7/b$b;)I
    .locals 0

    iget p0, p0, Lm7/b$b;->a:I

    return p0
.end method

.method static synthetic b(Lm7/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/b$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lm7/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/b$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lm7/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/b$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lm7/b$b;)I
    .locals 0

    iget p0, p0, Lm7/b$b;->b:I

    return p0
.end method


# virtual methods
.method public f()Lm7/b;
    .locals 2

    new-instance v0, Lm7/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm7/b;-><init>(Lm7/b$b;Lm7/b$a;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lm7/b$b;
    .locals 0

    iput-object p1, p0, Lm7/b$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lm7/b$b;
    .locals 0

    iput-object p1, p0, Lm7/b$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lm7/b$b;
    .locals 0

    iput-object p1, p0, Lm7/b$b;->d:Ljava/lang/String;

    return-object p0
.end method
