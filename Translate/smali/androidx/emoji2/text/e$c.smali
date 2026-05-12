.class public abstract Landroidx/emoji2/text/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Landroidx/emoji2/text/e$h;

.field b:Landroidx/emoji2/text/e$j;

.field c:Z

.field d:Z

.field e:[I

.field f:Ljava/util/Set;

.field g:Z

.field h:I

.field i:I

.field j:Landroidx/emoji2/text/e$e;


# direct methods
.method protected constructor <init>(Landroidx/emoji2/text/e$h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff0100

    iput v0, p0, Landroidx/emoji2/text/e$c;->h:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/e$c;->i:I

    new-instance v0, Landroidx/emoji2/text/d;

    invoke-direct {v0}, Landroidx/emoji2/text/d;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/e$c;->j:Landroidx/emoji2/text/e$e;

    const-string v0, "metadataLoader cannot be null."

    invoke-static {p1, v0}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/e$c;->a:Landroidx/emoji2/text/e$h;

    return-void
.end method


# virtual methods
.method protected final a()Landroidx/emoji2/text/e$h;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/e$c;->a:Landroidx/emoji2/text/e$h;

    return-object p0
.end method

.method public b(I)Landroidx/emoji2/text/e$c;
    .locals 0

    iput p1, p0, Landroidx/emoji2/text/e$c;->i:I

    return-object p0
.end method
