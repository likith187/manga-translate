.class public Lm7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/b$b;
    }
.end annotation


# static fields
.field public static final f:Lm7/b;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm7/b;

    invoke-direct {v0}, Lm7/b;-><init>()V

    sput-object v0, Lm7/b;->f:Lm7/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lm7/b;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lm7/b;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lm7/b;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lm7/b$b;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lm7/b;->c:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lm7/b;->d:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lm7/b;->e:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lm7/b$b;->a(Lm7/b$b;)I

    move-result v0

    iput v0, p0, Lm7/b;->a:I

    .line 11
    invoke-static {p1}, Lm7/b$b;->b(Lm7/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm7/b;->c:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lm7/b$b;->c(Lm7/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm7/b;->d:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lm7/b$b;->d(Lm7/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm7/b;->e:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lm7/b$b;->e(Lm7/b$b;)I

    move-result p1

    iput p1, p0, Lm7/b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lm7/b$b;Lm7/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm7/b;-><init>(Lm7/b$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lm7/b;->a:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lm7/b;->b:I

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lm7/b;->e:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lm7/b;->c:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lm7/b;->d:Ljava/lang/String;

    return-void
.end method
