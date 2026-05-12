.class public Ls/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/a$a;,
        Ls/a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:[Landroid/content/Intent;

.field d:Landroid/content/ComponentName;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/CharSequence;

.field h:Landroidx/core/graphics/drawable/IconCompat;

.field i:[Landroidx/core/app/n;

.field j:Ljava/util/Set;

.field k:Lr/b;

.field l:Z

.field m:I

.field n:Landroid/os/PersistableBundle;

.field o:Z

.field p:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->o:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Ls/a;->m:I

    return p0
.end method

.method public c(I)Z
    .locals 0

    iget p0, p0, Ls/a;->p:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Landroid/content/pm/ShortcutInfo;
    .locals 5

    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Ls/a;->a:Landroid/content/Context;

    iget-object v2, p0, Ls/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Ls/a;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Ls/a;->c:[Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Ls/a;->h:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ls/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_0
    iget-object v1, p0, Ls/a;->f:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ls/a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_1
    iget-object v1, p0, Ls/a;->g:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ls/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_2
    iget-object v1, p0, Ls/a;->d:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_3
    iget-object v1, p0, Ls/a;->j:Ljava/util/Set;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_4
    iget v1, p0, Ls/a;->m:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Ls/a;->n:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Ls/a;->i:[Landroidx/core/app/n;

    if-eqz v2, :cond_7

    array-length v3, v2

    if-lez v3, :cond_7

    array-length v3, v2

    new-array v4, v3, [Landroid/app/Person;

    if-gtz v3, :cond_6

    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    aget-object p0, v2, p0

    const/4 p0, 0x0

    throw p0

    :cond_7
    :goto_0
    iget-object v2, p0, Ls/a;->k:Lr/b;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lr/b;->b()Landroid/content/LocusId;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/content/pm/ShortcutInfo$Builder;

    :cond_8
    iget-boolean v2, p0, Ls/a;->l:Z

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLived(Z)Landroid/content/pm/ShortcutInfo$Builder;

    const/16 v2, 0x21

    if-lt v1, v2, :cond_9

    iget p0, p0, Ls/a;->p:I

    invoke-static {v0, p0}, Ls/a$a;->a(Landroid/content/pm/ShortcutInfo$Builder;I)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method
