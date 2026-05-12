.class Landroidx/fragment/app/b$k;
.super Landroidx/fragment/app/b$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/h$a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/f0$e;Lz/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$l;-><init>(Landroidx/fragment/app/f0$e;Lz/d;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/b$k;->d:Z

    iput-boolean p3, p0, Landroidx/fragment/app/b$k;->c:Z

    return-void
.end method


# virtual methods
.method e(Landroid/content/Context;)Landroidx/fragment/app/h$a;
    .locals 4

    iget-boolean v0, p0, Landroidx/fragment/app/b$k;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/b$k;->e:Landroidx/fragment/app/h$a;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/b$l;->b()Landroidx/fragment/app/f0$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/f0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/b$l;->b()Landroidx/fragment/app/f0$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/f0$e;->e()Landroidx/fragment/app/f0$e$c;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/f0$e$c;->VISIBLE:Landroidx/fragment/app/f0$e$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/b$k;->c:Z

    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/h;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/h$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b$k;->e:Landroidx/fragment/app/h$a;

    iput-boolean v3, p0, Landroidx/fragment/app/b$k;->d:Z

    return-object p1
.end method
