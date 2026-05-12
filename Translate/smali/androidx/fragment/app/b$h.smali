.class Landroidx/fragment/app/b$h;
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
.field final synthetic a:Landroidx/fragment/app/c0;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic f:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroidx/fragment/app/c0;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/b$h;->f:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$h;->a:Landroidx/fragment/app/c0;

    iput-object p3, p0, Landroidx/fragment/app/b$h;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/b$h;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/b$h;->a:Landroidx/fragment/app/c0;

    iget-object v1, p0, Landroidx/fragment/app/b$h;->b:Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/b$h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/c0;->h(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
