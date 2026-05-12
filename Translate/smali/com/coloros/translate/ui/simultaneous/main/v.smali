.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/v;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/v;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
