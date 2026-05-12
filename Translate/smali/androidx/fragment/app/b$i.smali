.class Landroidx/fragment/app/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/f0$e;Landroidx/fragment/app/f0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/b$i;->b:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$i;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/b$i;->a:Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/fragment/app/a0;->d(Ljava/util/ArrayList;I)V

    return-void
.end method
