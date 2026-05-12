.class public Landroidx/databinding/MergedDataBinderMapper;
.super Landroidx/databinding/d;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/databinding/d;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->c:Ljava/util/List;

    return-void
.end method
