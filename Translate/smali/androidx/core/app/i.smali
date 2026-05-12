.class Landroidx/core/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/i$e;,
        Landroidx/core/app/i$c;,
        Landroidx/core/app/i$a;,
        Landroidx/core/app/i$b;,
        Landroidx/core/app/i$d;,
        Landroidx/core/app/i$f;,
        Landroidx/core/app/i$g;,
        Landroidx/core/app/i$h;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Notification$Builder;

.field private final c:Landroidx/core/app/h$d;

.field private d:Landroid/widget/RemoteViews;

.field private e:Landroid/widget/RemoteViews;

.field private final f:Ljava/util/List;

.field private final g:Landroid/os/Bundle;

.field private h:I

.field private i:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/h$d;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i;->f:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i;->g:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/app/i;->c:Landroidx/core/app/h$d;

    iget-object v0, p1, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/core/app/i;->a:Landroid/content/Context;

    iget-object v1, p1, Landroidx/core/app/h$d;->K:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/i$e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/h$d;->S:Landroid/app/Notification;

    iget-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroidx/core/app/h$d;->i:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v5, v2, Landroid/app/Notification;->ledOnMS:I

    iget v6, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/h$d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/h$d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/h$d;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/h$d;->g:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/h$d;->h:Landroid/app/PendingIntent;

    iget v8, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    invoke-virtual {v3, v4, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/core/app/h$d;->l:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/core/app/h$d;->t:I

    iget v8, p1, Landroidx/core/app/h$d;->u:I

    iget-boolean v9, p1, Landroidx/core/app/h$d;->v:Z

    invoke-virtual {v3, v4, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/h$d;->j:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move-object v0, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v0}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Landroidx/core/app/i$c;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/core/app/h$d;->o:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/h$d;->m:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/h$a;

    invoke-direct {p0, v1}, Landroidx/core/app/i;->b(Landroidx/core/app/h$a;)V

    goto :goto_5

    :cond_5
    iget-object v0, p1, Landroidx/core/app/h$d;->D:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/core/app/i;->g:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_6
    iget-object v0, p1, Landroidx/core/app/h$d;->H:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroidx/core/app/h$d;->I:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->e:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$d;->n:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$d;->z:Z

    invoke-static {v0, v1}, Landroidx/core/app/i$a;->g(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/i$a;->e(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/i$a;->h(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$d;->x:Z

    invoke-static {v0, v1}, Landroidx/core/app/i$a;->f(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget v0, p1, Landroidx/core/app/h$d;->P:I

    iput v0, p0, Landroidx/core/app/i;->h:I

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/i$b;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/h$d;->E:I

    invoke-static {v0, v1}, Landroidx/core/app/i$b;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/h$d;->F:I

    invoke-static {v0, v1}, Landroidx/core/app/i$b;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->G:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroidx/core/app/i$b;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1, v3}, Landroidx/core/app/i$b;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroidx/core/app/i$b;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_7
    iget-object v0, p1, Landroidx/core/app/h$d;->J:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->i:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroidx/core/app/h$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroidx/core/app/h$d;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move v9, v7

    :goto_7
    iget-object v10, p1, Landroidx/core/app/h$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroidx/core/app/h$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/app/h$a;

    invoke-static {v11}, Landroidx/core/app/j;->a(Landroidx/core/app/h$a;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    const-string v9, "invisible_actions"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidx/core/app/h$d;->c()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/core/app/i;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget-object v0, p1, Landroidx/core/app/h$d;->U:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, v0}, Landroidx/core/app/i$c;->c(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    :cond_b
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->D:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->s:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/app/i$d;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->H:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, v0}, Landroidx/core/app/i$d;->c(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_c
    iget-object v0, p1, Landroidx/core/app/h$d;->I:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, v0}, Landroidx/core/app/i$d;->b(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_d
    iget-object v0, p1, Landroidx/core/app/h$d;->J:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, v0}, Landroidx/core/app/i$d;->d(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_e
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/h$d;->L:I

    invoke-static {v0, v1}, Landroidx/core/app/i$e;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->r:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/app/i$e;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$d;->M:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/i$e;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-wide v8, p1, Landroidx/core/app/h$d;->O:J

    invoke-static {v0, v8, v9}, Landroidx/core/app/i$e;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/h$d;->P:I

    invoke-static {v0, v1}, Landroidx/core/app/i$e;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-boolean v0, p1, Landroidx/core/app/h$d;->B:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$d;->A:Z

    invoke-static {v0, v1}, Landroidx/core/app/i$e;->c(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    :cond_f
    iget-object v0, p1, Landroidx/core/app/h$d;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_10
    iget-object v0, p1, Landroidx/core/app/h$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$d;->R:Z

    invoke-static {v0, v1}, Landroidx/core/app/i$g;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroidx/core/app/h$c;->a(Landroidx/core/app/h$c;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/i$g;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->N:Lr/b;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Lr/b;->b()Landroid/content/LocusId;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/app/i$g;->d(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    :cond_11
    iget v0, p1, Landroidx/core/app/h$d;->Q:I

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, v0}, Landroidx/core/app/i$h;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    :cond_12
    iget-boolean p1, p1, Landroidx/core/app/h$d;->T:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroidx/core/app/i;->c:Landroidx/core/app/h$d;

    iget-boolean p1, p1, Landroidx/core/app/h$d;->x:Z

    if-eqz p1, :cond_13

    iput v5, p0, Landroidx/core/app/i;->h:I

    goto :goto_8

    :cond_13
    iput v6, p0, Landroidx/core/app/i;->h:I

    :goto_8
    iget-object p1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    iget-object p1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    iget p1, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x4

    iput p1, v2, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Landroidx/core/app/i;->c:Landroidx/core/app/h$d;

    iget-object p1, p1, Landroidx/core/app/h$d;->w:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    const-string v0, "silent"

    invoke-static {p1, v0}, Landroidx/core/app/i$a;->e(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_14
    iget-object p1, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    iget p0, p0, Landroidx/core/app/i;->h:I

    invoke-static {p1, p0}, Landroidx/core/app/i$e;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    :cond_15
    return-void

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    throw v4
.end method

.method private b(Landroidx/core/app/h$a;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->i()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/core/app/h$a;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/i$c;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()[Landroidx/core/app/p;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()[Landroidx/core/app/p;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/p;->b([Landroidx/core/app/p;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v0, v4}, Landroidx/core/app/i$a;->c(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/h$a;->c()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_2
    const-string v2, "android.support.allowGeneratedReplies"

    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Z

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/app/i$d;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v2, "android.support.action.semanticAction"

    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/app/i$f;->a(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->j()Z

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/app/i$g;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->i()Z

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/app/i$h;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v2, "android.support.action.showsUserInterface"

    invoke-virtual {p1}, Landroidx/core/app/h$a;->g()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Landroidx/core/app/i$a;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object p0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroidx/core/app/i$a;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/app/i$a;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c()Landroid/app/Notification;
    .locals 3

    iget-object v0, p0, Landroidx/core/app/i;->c:Landroidx/core/app/h$d;

    iget-object v0, v0, Landroidx/core/app/h$d;->p:Landroidx/core/app/h$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->b(Landroidx/core/app/g;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->e(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/i;->d()Landroid/app/Notification;

    move-result-object v2

    if-eqz v1, :cond_2

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->H:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->d(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/core/app/i;->c:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->p:Landroidx/core/app/h$e;

    invoke-virtual {v1, p0}, Landroidx/core/app/h$e;->f(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_5

    iput-object p0, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->a(Landroid/os/Bundle;)V

    :cond_6
    return-object v2
.end method

.method protected d()Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/i;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
