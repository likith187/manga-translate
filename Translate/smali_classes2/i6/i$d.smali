.class Li6/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Li6/i$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Li6/i$d;->b:F

    return-void
.end method

.method synthetic constructor <init>(Li6/i$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Li6/i$d;-><init>()V

    return-void
.end method

.method static synthetic a(Li6/i$d;)F
    .locals 0

    iget p0, p0, Li6/i$d;->b:F

    return p0
.end method

.method static synthetic b(Li6/i$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li6/i$d;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method c(Ljava/lang/String;F)V
    .locals 0

    iput-object p1, p0, Li6/i$d;->a:Ljava/lang/String;

    iput p2, p0, Li6/i$d;->b:F

    return-void
.end method
