.class final Lc6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lc6/u;


# direct methods
.method private constructor <init>(Lc6/u;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc6/a$b;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lc6/a$b;->b:Lc6/u;

    return-void
.end method

.method synthetic constructor <init>(Lc6/u;Lc6/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc6/a$b;-><init>(Lc6/u;)V

    return-void
.end method

.method static synthetic a(Lc6/a$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lc6/a$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lc6/a$b;)Lc6/u;
    .locals 0

    iget-object p0, p0, Lc6/a$b;->b:Lc6/u;

    return-object p0
.end method
