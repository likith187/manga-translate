.class public Lcom/coui/appcompat/poplist/COUIClickSelectMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIClickSelectMenu"


# instance fields
.field private mEnable:Z

.field private mHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

.field private final mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mEnable:Z

    .line 4
    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorView(Landroid/view/View;)V

    .line 6
    :cond_0
    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    return-void
.end method

.method public getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method public registerForClickSelectItems(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemList(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 5
    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorView(Landroid/view/View;)V

    .line 6
    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->getTargetView()Landroid/view/View;

    move-result-object p2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    const-string p0, "COUIClickSelectMenu"

    const-string p1, "ItemView is same, no need to create PreciseClickHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    new-instance p2, Lcom/coui/appcompat/poplist/PreciseClickHelper;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;-><init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)V

    invoke-direct {p2, p1, v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    :goto_1
    return-void
.end method

.method public registerForClickSelectItems(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->registerForClickSelectItems(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 10
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setSelectItemColor(I)V

    return-void
.end method

.method public setEnableAddExtraWidth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setEnableAddExtraWidth(Z)V

    :cond_0
    return-void
.end method

.method public setHelperEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mEnable:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->setup()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->unSet()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxShowItemCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setMaxShowItemCount(I)V

    :cond_0
    return-void
.end method

.method public setMenuShowStateListener(Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$2;-><init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-void
.end method

.method public setPopupShow(Landroid/view/View;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setPopupShow(Landroid/view/View;II)V

    return-void
.end method

.method public setPopupShow(Landroid/view/View;II)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mEnable:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;II)V

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;->onShow()V

    :cond_0
    return-void
.end method

.method public setPopupState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mEnable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;->onShow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubMenuItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setSubMenuClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
