.class abstract Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;
    }
.end annotation


# static fields
.field static final DEFAULT_MAIN_MENU_ALPHA_SPRING_RESPONSE:F = 0.3f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DEFAULT_MAIN_MENU_ENTER_ALPHA_END_VALUE:F = 1.0f

.field static final DEFAULT_MAIN_MENU_ENTER_ALPHA_START_VALUE:F = 0.0f

.field static final DEFAULT_MAIN_MENU_ENTER_SCALE_END_VALUE:F = 1.0f

.field static final DEFAULT_MAIN_MENU_ENTER_SCALE_START_VALUE:F = 0.0f

.field static final DEFAULT_MAIN_MENU_SCALE_SPRING_RESPONSE:F = 0.4f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DEFAULT_MAIN_MENU_SPRING_BOUNCE:F = 0.2f

.field static final DEFAULT_MAIN_MENU_SPRING_RESPONSE:F = 0.3f

.field static final DEFAULT_SPRING_FACTOR:F = 10000.0f

.field static final DEFAULT_SUB_MENU_SPRING_BOUNCE:F = 0.0f

.field static final DEFAULT_SUB_MENU_SPRING_RESPONSE:F = 0.35f


# instance fields
.field mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

.field mMainMenuRoot:Landroid/view/View;

.field mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

.field mSubMenuRoot:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    return-void
.end method


# virtual methods
.method detach()V
    .locals 0

    return-void
.end method

.method setDomain(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    return-void
.end method

.method setMainMenuView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMainMenuRoot:Landroid/view/View;

    return-void
.end method

.method setOnSubMenuStateChangedListener(Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    return-void
.end method

.method setSubMenuView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->mSubMenuRoot:Landroid/view/View;

    return-void
.end method

.method final startMainMenuEnter()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startMainMenuEnter(Z)V

    return-void
.end method

.method startMainMenuEnter(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method final startSubMenuEnter()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startSubMenuEnter(Z)V

    return-void
.end method

.method startSubMenuEnter(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method final startSubMenuExit()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startSubMenuExit(Z)V

    return-void
.end method

.method startSubMenuExit(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method stopAllAnimation()V
    .locals 0

    return-void
.end method
