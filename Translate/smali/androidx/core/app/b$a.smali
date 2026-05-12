.class Landroidx/core/app/b$a;
.super Landroidx/core/app/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/b;-><init>()V

    iput-object p1, p0, Landroidx/core/app/b$a;->a:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public b()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/b$a;->a:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
