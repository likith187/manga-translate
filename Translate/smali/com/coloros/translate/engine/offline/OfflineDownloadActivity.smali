.class public Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/engine/offline/x$e;
.implements Lcom/coloros/translate/engine/offline/x$b;
.implements Lcom/coloros/translate/engine/offline/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$n;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$m;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;,
        Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/coloros/translate/engine/offline/x;

.field private m:Lcom/coloros/translate/engine/offline/y;

.field private n:Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;

.field private o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private p:Landroidx/appcompat/app/c;

.field private q:Landroidx/appcompat/app/c;

.field private r:Landroidx/appcompat/app/c;

.field private s:Z

.field private t:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;

.field private u:Landroid/content/Context;

.field private v:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

.field private x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->a:Ljava/util/Map;

    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$n;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p:Landroidx/appcompat/app/c;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->q:Landroidx/appcompat/app/c;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r:Landroidx/appcompat/app/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s:Z

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->t:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iput-boolean v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y:Z

    return-void
.end method

.method static bridge synthetic A0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->K0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic B0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->L0(I)V

    return-void
.end method

.method static bridge synthetic C0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->M0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->P0(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic E0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->Y0(I)V

    return-void
.end method

.method static bridge synthetic F0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->Z0()V

    return-void
.end method

.method static bridge synthetic G0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->a1()V

    return-void
.end method

.method static bridge synthetic H0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b1(Lcom/coloros/translate/engine/offline/f0;Z)V

    return-void
.end method

.method static bridge synthetic I0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c1(Lcom/coloros/translate/engine/offline/f0;)V

    return-void
.end method

.method static bridge synthetic J0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->d1(I)V

    return-void
.end method

.method private K0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/m0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "language"

    invoke-virtual {p2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_download_start"

    invoke-static {p1, p0, p2}, Lcom/coloros/translate/utils/q0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addStartDownloadStatis languageCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private L0(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    const-string v3, "OfflineDownloadActivity"

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_5

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/engine/offline/f0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelDownload downloadStatus:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/coloros/translate/engine/offline/f0;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/coloros/translate/engine/offline/f0;->e:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    return-void

    :cond_2
    iget v4, p1, Lcom/coloros/translate/engine/offline/f0;->c:I

    if-eq v4, v1, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    new-array v5, v1, [J

    aput-wide v2, v5, v0

    invoke-virtual {v4, v5}, Lcom/coloros/translate/engine/offline/x;->D([J)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    iget-wide v2, p1, Lcom/coloros/translate/engine/offline/f0;->e:J

    new-array p1, v1, [J

    aput-wide v2, p1, v0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/x;->l([J)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDownload invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    const-string p0, "cancelDownload list is null or empty"

    invoke-static {v3, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private M0()Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/coloros/translate/engine/offline/R$string;->eto_action_delete:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsChecked(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private N0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v1, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/engine/offline/R$layout;->offline_download_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/coloros/translate/utils/o0;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/engine/offline/R$dimen;->peek_height_485:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHeight(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/engine/offline/R$dimen;->peek_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHeight(I)V

    :goto_0
    sget v1, Lcom/coloros/translate/engine/offline/R$id;->content_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->v:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    new-instance v2, Lcom/coloros/translate/engine/offline/l;

    invoke-direct {v2, p0}, Lcom/coloros/translate/engine/offline/l;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->R0(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_background_elevatedWithCard:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private O0()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->q:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->q:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_4
    return-void
.end method

.method private P0(F)I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private Q0()V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/d;->f(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/d;->j(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/engine/offline/f0;

    iget-object v4, v3, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v5, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInit packageList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfflineDownloadActivity"

    invoke-static {v3, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInit downloadedPackageList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInit otherPackageList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->N0()V

    new-instance v2, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    invoke-direct {v2, p0, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->v:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    new-instance v4, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-direct {v4, p0, v3, v1}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->v:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->v:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->v:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_4
    invoke-static {p0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s:Z

    :cond_5
    return-void
.end method

.method private R0(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    sget v0, Lcom/coloros/translate/engine/offline/R$menu;->list_selected_mode_menu:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    new-instance v0, Lcom/coloros/translate/engine/offline/n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/n;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->action_select_cancel:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/offline/o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/o;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const-string p0, "menu item is null"

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "menu is null"

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic S0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->finish()V

    return-void
.end method

.method private synthetic T0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic U0(Landroid/view/MenuItem;)Z
    .locals 1

    const-string p1, "OfflineDownloadActivity"

    const-string v0, "click cancel to finish page"

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/q;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic V0()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->a1()V

    const-string p0, "OfflineDownloadActivity"

    const-string v0, "onCreate requestOfflineTranslateInfo"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic W0()V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "onResume requestOfflineTranslateInfo"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/b0;->INSTANCE:Lcom/coloros/translate/engine/offline/b0;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/b0;->b()V

    return-void
.end method

.method private synthetic X0()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private Y0(I)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    const-string v2, "OfflineDownloadActivity"

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/engine/offline/f0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelDownload downloadStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/coloros/translate/engine/offline/f0;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/coloros/translate/engine/offline/f0;->c:I

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    iget-wide v1, p1, Lcom/coloros/translate/engine/offline/f0;->e:J

    new-array p1, v0, [J

    const/4 v0, 0x0

    aput-wide v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/x;->D([J)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseDownload invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p0, "pauseDownload list is null or empty"

    invoke-static {v2, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Z0()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    iput-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->t:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private a1()V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/coloros/translate/engine/offline/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "releaseAssets begin copy asserts files"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/h0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/coloros/translate/utils/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const-string v2, "translatePreferences"

    const-string v3, "nmt_common_exist"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/coloros/translate/utils/l0$a;->k(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method private b1(Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/j;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;

    invoke-direct {v0, p0, p2, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;ZLcom/coloros/translate/engine/offline/f0;)V

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    move-result-object p1

    new-instance p2, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$f;

    invoke-direct {p2, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$f;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    move-result-object p2

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/support/dialog/R$style;->COUIAlertDialog_Bottom:I

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->eto_resume_download_message:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->eto_resume_download:I

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->eto_cancel:I

    invoke-virtual {v0, v1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V

    invoke-virtual {p2, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private c1(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 3

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/j;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "OfflineDownloadActivity"

    const-string p1, "downloadedPackageList do not have package, then showDeleteDialog return"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;)V

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$c;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/support/dialog/R$style;->COUIAlertDialog_Bottom:I

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/coloros/translate/engine/offline/R$string;->eto_action_delete:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/coloros/translate/engine/offline/R$string;->download_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/coloros/translate/engine/offline/R$string;->download_dialog_content:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_2
    invoke-virtual {p1, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private d1(I)V
    .locals 4

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/j;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$d;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/support/dialog/R$style;->COUIAlertDialog_Bottom:I

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/coloros/translate/engine/offline/R$string;->eto_pause_download:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/coloros/translate/engine/offline/R$string;->eto_cancel_download:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->q:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    invoke-virtual {p1, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public static synthetic e0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->Q0()V

    return-void
.end method

.method public static synthetic f0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->U0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private f1()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->t:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterNetWorkReceiver error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OfflineDownloadActivity"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic g0()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->W0()V

    return-void
.end method

.method public static synthetic h0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->X0()V

    return-void
.end method

.method public static synthetic i0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->T0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->V0()V

    return-void
.end method

.method public static synthetic k0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->S0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    return-object p0
.end method

.method static bridge synthetic m0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->n:Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;

    return-object p0
.end method

.method static bridge synthetic n0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic o0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    return-object p0
.end method

.method static bridge synthetic q0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic r0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->m:Lcom/coloros/translate/engine/offline/y;

    return-object p0
.end method

.method static bridge synthetic s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic t0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s:Z

    return p0
.end method

.method static bridge synthetic u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->a:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic v0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method static bridge synthetic y0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic z0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/x;->m()V

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/x;->N()V

    return-void
.end method

.method public b(Lt1/a;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadSuccessed info:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lt1/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadPaused info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e(Lt1/a;)V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    new-instance v1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v1}, Lcom/coloros/translate/base/a;->a(Landroid/app/Activity;ILe2/b;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "onGetDownloadList download"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/translate/engine/offline/k;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/k;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y:Z

    const-string v1, "OfflineDownloadActivity"

    if-eqz v0, :cond_0

    const-string v0, "isFromScanner"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newer than LOLLIPOP"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_0
    const-string v0, "finish"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g(Lt1/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgress info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public j()V
    .locals 4

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "requestFinished"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/translate/engine/offline/m;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/m;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public o(Lt1/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadPending info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    const-string p1, "OfflineDownloadActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u:Landroid/content/Context;

    sget p1, Lcom/coloros/translate/engine/offline/R$string;->eto_action_download:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->h:Ljava/lang/String;

    sget p1, Lcom/coloros/translate/engine/offline/R$string;->eto_action_continue:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->i:Ljava/lang/String;

    sget p1, Lcom/coloros/translate/engine/offline/R$string;->download_wait:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->j:Ljava/lang/String;

    sget p1, Lcom/coloros/translate/engine/offline/R$string;->update:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->k:Ljava/lang/String;

    new-instance p1, Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->n:Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    new-instance p1, Lcom/coloros/translate/engine/offline/y;

    invoke-direct {p1}, Lcom/coloros/translate/engine/offline/y;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->m:Lcom/coloros/translate/engine/offline/y;

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/x;->k(Lcom/coloros/translate/engine/offline/x$e;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/x;->j(Lcom/coloros/translate/engine/offline/x$b;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/offline/x;->F()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_from_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0}, Lcom/coloros/translate/base/a;->b()Z

    move-result v0

    const-string v1, "com.coloros.ocrscanner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y:Z

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->e1()V

    return-void

    :cond_0
    sget-object p1, Lcom/coloros/translate/engine/offline/e0;->INSTANCE:Lcom/coloros/translate/engine/offline/e0;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/e0;->q(Lcom/coloros/translate/engine/offline/i0;)V

    sget-object p1, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/offline/a0;->f()V

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->Z0()V

    new-instance p1, Lcom/coloros/translate/engine/offline/j;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/offline/j;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    const-string v0, "request_download_offline_info"

    invoke-static {v0, p1}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "is_first_use"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v1, "OfflineDownloadActivity"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->f1()V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {v1, p0}, Lcom/coloros/translate/engine/offline/x;->I(Lcom/coloros/translate/engine/offline/x$e;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {v1, p0}, Lcom/coloros/translate/engine/offline/x;->H(Lcom/coloros/translate/engine/offline/x$b;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l:Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/offline/x;->J()V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->O0()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "extra_from_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.coloros.ocrscanner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewIntent isFromScanner : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object p0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {p0}, Lcom/coloros/translate/base/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/coloros/translate/engine/offline/i;

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/i;-><init>()V

    const-string v0, "request_download_offline_info"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string p0, "OfflineDownloadActivity"

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Lt1/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFailed info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public q(Lt1/a;)V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public t(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadDeleted downloadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OfflineDownloadActivity"

    invoke-static {p2, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 p1, 0x69

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public v(Lt1/a;)V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b:Landroid/os/Handler;

    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
