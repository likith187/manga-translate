.class Landroidx/fragment/app/Fragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/d;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/result/d;

.field final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$i;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$i;->a:Landroidx/activity/result/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)Landroidx/activity/result/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/Fragment$i;->a:Landroidx/activity/result/d;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$i;->a(Ljava/lang/Void;)Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method
