.class public Ll7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lh7/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll7/a;->a:Landroid/content/Context;

    new-instance v0, Lh7/a;

    invoke-direct {v0, p1}, Lh7/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll7/a;->b:Lh7/a;

    return-void
.end method
