.class final Li1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Li1/u;


# direct methods
.method private constructor <init>(Li1/u;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li1/a$b;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Li1/a$b;->b:Li1/u;

    return-void
.end method

.method synthetic constructor <init>(Li1/u;Li1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li1/a$b;-><init>(Li1/u;)V

    return-void
.end method

.method static synthetic a(Li1/a$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Li1/a$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Li1/a$b;)Li1/u;
    .locals 0

    iget-object p0, p0, Li1/a$b;->b:Li1/u;

    return-object p0
.end method
