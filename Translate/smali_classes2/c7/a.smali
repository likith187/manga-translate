.class public Lc7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lb7/a;

.field public b:Lc7/b;

.field public c:Lc7/a;

.field public d:Lc7/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc7/a;->a:Lb7/a;

    iput-object v0, p0, Lc7/a;->b:Lc7/b;

    iput-object v0, p0, Lc7/a;->c:Lc7/a;

    iput-object v0, p0, Lc7/a;->d:Lc7/a;

    return-void
.end method
