.class public Lj8/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Typeface;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lj8/c1;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj8/n0$a;->a:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj8/n0$a;->b:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lj8/n0$a;->c:Z

    iput-boolean v2, p0, Lj8/n0$a;->d:Z

    iput-boolean v2, p0, Lj8/n0$a;->e:Z

    iput-boolean v1, p0, Lj8/n0$a;->f:Z

    iput-boolean v1, p0, Lj8/n0$a;->g:Z

    iput-boolean v1, p0, Lj8/n0$a;->h:Z

    new-instance v1, Lj8/c1;

    invoke-direct {v1}, Lj8/c1;-><init>()V

    iput-object v1, p0, Lj8/n0$a;->i:Lj8/c1;

    const/4 v1, 0x4

    iput v1, p0, Lj8/n0$a;->j:I

    iput-object v0, p0, Lj8/n0$a;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lj8/n0$a;->l:Z

    return-void
.end method
