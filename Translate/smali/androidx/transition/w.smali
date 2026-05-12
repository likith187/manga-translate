.class Landroidx/transition/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/collection/a;

.field final b:Landroid/util/SparseArray;

.field final c:Landroidx/collection/f;

.field final d:Landroidx/collection/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/w;->a:Landroidx/collection/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/transition/w;->b:Landroid/util/SparseArray;

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Landroidx/transition/w;->c:Landroidx/collection/f;

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/w;->d:Landroidx/collection/a;

    return-void
.end method
