.class public Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$OnDismissListener;
    }
.end annotation


# static fields
.field private static final PHYSICS_UNSET:F = 1.4E-45f

.field private static final SAVE_CAN_PULL_UP_KEY:Ljava/lang/String; = "SAVE_CAN_PULL_UP_KEY_DRAGGABLE_KEY"

.field private static final SAVE_DRAGGABLE_KEY:Ljava/lang/String; = "SAVE_DRAGGABLE_KEY"

.field private static final SAVE_FIRST_SHOW_COLLAPSED_KEY:Ljava/lang/String; = "SAVE_FIRST_SHOW_COLLAPSED_KEY"

.field private static final SAVE_FRAME_RATE_KEY:Ljava/lang/String; = "SAVE_FRAME_RATE_KEY"

.field private static final SAVE_HAS_SET_PEEK_HEIGHT_KEY:Ljava/lang/String; = "SAVE_HAS_SET_PEEK_HEIGHT_KEY"

.field private static final SAVE_HAS_SET_SKIP_COLLAPSED_KEY:Ljava/lang/String; = "SAVE_HAS_SET_SKIP_COLLAPSED_KEY"

.field private static final SAVE_IS_HANDLE_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_HANDLE_PANEL_KEY"

.field private static final SAVE_IS_IN_TINY_SCREEN_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

.field private static final SAVE_PANEL_HEIGHT_KEY:Ljava/lang/String; = "SAVE_PANEL_HEIGHT_KEY"

.field private static final SAVE_PANEL_WIDTH_KEY:Ljava/lang/String; = "SAVE_PANEL_WIDTH_KEY"

.field private static final SAVE_PEEK_HEIGHT_KEY:Ljava/lang/String; = "SAVE_PEEK_HEIGHT_KEY"

.field private static final SAVE_REGISTER_CONFIGURATION_KEY:Ljava/lang/String; = "SAVE_REGISTER_CONFIGURATION_KEY"

.field private static final SAVE_SHOW_IN_MAX_HEIGHT_KEY:Ljava/lang/String; = "SAVE_SHOW_IN_MAX_HEIGHT_KEY"

.field private static final SAVE_SKIP_COLLAPSED_KEY:Ljava/lang/String; = "SAVE_SKIP_COLLAPSED_KEY"

.field private static final TAG:Ljava/lang/String; = "COUIBottomSheetDialogFragment"

.field private static final UNSET_WIDTH:I = -0x1


# instance fields
.field private mAlphaAnimDuration:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAnchorView:Landroid/view/View;

.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

.field private mCanPullUp:Z

.field private mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

.field private mCurrentPanelHeight:I

.field private mDialogFragmentView:Landroid/view/View;

.field private mDisableSubExpand:Z

.field private mFinalNavColorAfterDismiss:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mFirstShowCollapsed:Z

.field private mFrameRate:Z

.field private mGlobalDrag:Z

.field private mHasSetPeekHeight:Z

.field private mHasSetSkipCollapsed:Z

.field private mHideDragViewHeight:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDraggable:Z

.field private mIsExecuteNavColorAnimAfterDismiss:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsFullScreenInTinyScreen:Z

.field private mIsGestureNavigation:Z

.field private mIsHandlePanel:Z

.field private mIsInTinyScreen:Z

.field private mIsSavedInstanceState:Z

.field private mIsShowInMaxHeight:Z

.field private mOnDismissListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$OnDismissListener;

.field private mOutSideView:Landroid/view/View;

.field private mPanelContainer:Landroid/view/ViewGroup;

.field private mPanelHeight:I

.field private mPanelWidth:I

.field private mPeekHeight:I

.field private mPhysicsDampingRatio:F

.field private mPhysicsFrequency:F

.field private mPreferWidth:I

.field private mRegisterConfigurationChangeCallBack:Z

.field private mShouldRegisterWindowInsetsListener:Z

.field private mSkipCollapsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    const-wide/16 v0, 0x64

    .line 2
    iput-wide v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    .line 4
    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    .line 7
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    .line 8
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    .line 10
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mRegisterConfigurationChangeCallBack:Z

    const/4 v2, 0x1

    .line 11
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    .line 12
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAnchorView:Landroid/view/View;

    .line 14
    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    .line 15
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    .line 16
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    .line 18
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetPeekHeight:Z

    .line 19
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetSkipCollapsed:Z

    .line 20
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    .line 21
    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHideDragViewHeight:I

    .line 22
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFrameRate:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    const-wide/16 v0, 0x64

    .line 24
    iput-wide v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    .line 26
    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    .line 28
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    .line 29
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    .line 30
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    .line 31
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    .line 32
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mRegisterConfigurationChangeCallBack:Z

    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAnchorView:Landroid/view/View;

    .line 34
    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    .line 35
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    .line 36
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    const/4 v2, -0x1

    .line 37
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    .line 38
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetPeekHeight:Z

    .line 39
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetSkipCollapsed:Z

    .line 40
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    .line 41
    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHideDragViewHeight:I

    .line 42
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFrameRate:Z

    .line 43
    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    .line 44
    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mOutSideView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mOutSideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelListener(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$802(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroidx/fragment/app/Fragment;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->getFragmentHeight(Landroidx/fragment/app/Fragment;)I

    move-result p0

    return p0
.end method

.method private getFragmentHeight(Landroidx/fragment/app/Fragment;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initBottomSheetDialogSize()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setWidth(I)V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHeight(I)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setCurrentPanelHeight(I)V

    :cond_1
    return-void
.end method

.method private initFragment()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object v0

    sget v1, Lcom/support/panel/R$id;->first_panel_container:I

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/z;->j()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setShowOnFirstPanel(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAdd(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setUpViewHeight(Landroid/view/View;Z)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private preShowPanel(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->t0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$anim;->coui_open_slide_enter:I

    sget v2, Lcom/support/appcompat/R$anim;->coui_open_slide_exit:I

    sget v3, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_exit:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/z;->t(IIII)Landroidx/fragment/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v0

    sget v1, Lcom/support/panel/R$id;->first_panel_container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/z;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/z;->h()I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAdd(Ljava/lang/Boolean;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$anim;->coui_open_slide_enter:I

    sget v2, Lcom/support/appcompat/R$anim;->coui_open_slide_exit:I

    sget v3, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_exit:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/z;->t(IIII)Landroidx/fragment/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->g(Ljava/lang/String;)Landroidx/fragment/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/z;->h()I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$4;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private setOnTouchOutSideViewListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setOutSideViewTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    :cond_0
    return-void
.end method

.method private setPanelListener(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragPanelListener()Lcom/coui/appcompat/panel/COUIPanelDragListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getOutSideViewOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setOnTouchOutSideViewListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDialogOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private setUpViewHeight(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public backToFirstPanel()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->setCancelable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->t0()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->t0()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    sget v5, Lcom/support/appcompat/R$anim;->coui_close_slide_exit:I

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/z;->s(II)Landroidx/fragment/app/z;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/z;->j()V

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;ILcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public delPreferWidth()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->delPreferWidth()V

    :cond_0
    sget-object p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "delPreferWidth"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    .line 3
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->delPreferWidth()V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss(Z)V

    .line 9
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->delPreferWidth()V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public doFeedbackAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doFeedbackAnimation()V

    :cond_0
    return-void
.end method

.method public getAlphaAnimDuration()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    return-wide v0
.end method

.method public getBottomSheetDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public getCurrentPanelHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return p0
.end method

.method public getIsHandlePanel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    return p0
.end method

.method public getPeekHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    return p0
.end method

.method public isFirstShowCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    return p0
.end method

.method public isSkipCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHeight(I)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    const-string v2, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    const-string v2, "SAVE_DRAGGABLE_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    const-string v2, "SAVE_PEEK_HEIGHT_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const-string v2, "SAVE_SKIP_COLLAPSED_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    const-string v2, "SAVE_FIRST_SHOW_COLLAPSED_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    const-string v2, "SAVE_CAN_PULL_UP_KEY_DRAGGABLE_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    const-string v2, "SAVE_SHOW_IN_MAX_HEIGHT_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    const-string v2, "SAVE_REGISTER_CONFIGURATION_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mRegisterConfigurationChangeCallBack:Z

    const-string v2, "SAVE_IS_HANDLE_PANEL_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    const-string v2, "SAVE_HAS_SET_PEEK_HEIGHT_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetPeekHeight:Z

    const-string v2, "SAVE_HAS_SET_SKIP_COLLAPSED_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetSkipCollapsed:Z

    const-string v2, "SAVE_FRAME_RATE_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFrameRate:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsGestureNavigation:Z

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetPeekHeight:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_default_peek_height_in_gesture:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_default_peek_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetSkipCollapsed:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    iget v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;IFF)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setAnchorView(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsFullScreenInTinyScreen:Z

    invoke-virtual {p1, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsInTinyScreen(ZZ)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDisableSubExpand(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setBottomSheetDialogAnimatorListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;)V

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setShouldRegisterWindowInsetsListener(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setShowInDialogFragment(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPeekHeight(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsHandlePanel(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setSkipCollapsed(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFirstShowCollapsed(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFrameRate:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFrameRate(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mRegisterConfigurationChangeCallBack:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setRegisterConfigurationChangeCallBack(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHideDragViewHeight:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHideDragViewHeight(I)V

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPreferWidth(I)V

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mGlobalDrag:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setGlobalDrag(Z)V

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p3, Lcom/support/panel/R$layout;->coui_bottom_sheet_dialog_max_height:I

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p3, Lcom/support/panel/R$layout;->coui_bottom_sheet_dialog:I

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/c;->onDestroyView()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getShowOnFirstPanel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAbandon(Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setOutSideViewTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mOnDismissListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$OnDismissListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$OnDismissListener;->onDismiss()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SAVE_PANEL_HEIGHT_KEY"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SAVE_PANEL_WIDTH_KEY"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SAVE_DRAGGABLE_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_PEEK_HEIGHT_KEY"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SAVE_SKIP_COLLAPSED_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_FIRST_SHOW_COLLAPSED_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_CAN_PULL_UP_KEY_DRAGGABLE_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_SHOW_IN_MAX_HEIGHT_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_REGISTER_CONFIGURATION_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mRegisterConfigurationChangeCallBack:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_IS_HANDLE_PANEL_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_HAS_SET_PEEK_HEIGHT_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetPeekHeight:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_HAS_SET_SKIP_COLLAPSED_KEY"

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetSkipCollapsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_FRAME_RATE_KEY"

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFrameRate:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    sget v0, Lcom/support/panel/R$id;->first_panel_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    const-string p1, "SAVE_PANEL_HEIGHT_KEY"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    const-string p1, "SAVE_PANEL_WIDTH_KEY"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initFragment()V

    return-void
.end method

.method public replacePanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->setIgnoreHideKeyboardAnim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->preShowPanel(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlphaAnimDuration(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAnchorView:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBottomSheetDialogAnimatorListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    return-void
.end method

.method public setCanPullUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    :cond_0
    return-void
.end method

.method setCurrentPanelHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return-void
.end method

.method public setDisableSubExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setExecuteNavColorAnimAfterDismiss(Z)V

    :cond_0
    return-void
.end method

.method public setFinalNavColorAfterDismiss(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFinalNavColorAfterDismiss(I)V

    :cond_0
    return-void
.end method

.method public setFirstShowCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    return-void
.end method

.method public setFrameRate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFrameRate:Z

    return-void
.end method

.method public setGlobalDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mGlobalDrag:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setUpViewHeight(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public setHideDragViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHideDragViewHeight:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHideDragViewHeight(I)V

    :cond_0
    return-void
.end method

.method public setIsHandlePanel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsHandlePanel:Z

    return-void
.end method

.method public setIsInTinyScreen(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsFullScreenInTinyScreen:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setIsShowInMaxHeight(Z)V

    :cond_0
    return-void
.end method

.method public setIsShowInMaxHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    return-void
.end method

.method public setMainPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    return-void
.end method

.method public setOnDismissListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mOnDismissListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$OnDismissListener;

    return-void
.end method

.method setPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;Ljava/lang/Boolean;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDragableLinearLayout(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setUpViewHeight(Landroid/view/View;Z)V

    return-void
.end method

.method public setPeekHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetPeekHeight:Z

    return-void
.end method

.method public setPreferWidth(I)V
    .locals 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    sget-object p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferWidth =\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setShouldRegisterWindowInsetsListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mHasSetSkipCollapsed:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPreferWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPreferWidth(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setIsInTinyScreen(Z)V

    .line 8
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAnchorView:Landroid/view/View;

    .line 9
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateFollowHandPanelLocation()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateFollowHandPanelLocation()Z

    move-result p0

    return p0
.end method
