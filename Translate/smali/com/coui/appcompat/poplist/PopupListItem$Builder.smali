.class public Lcom/coui/appcompat/poplist/PopupListItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PopupListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCustomHintView:Landroid/view/View;

.field private mCustomItemView:Landroid/view/View;

.field private mDescription:Ljava/lang/String;

.field private mDescriptionContentDescription:Ljava/lang/String;

.field private mForceTint:I

.field private mGroupId:I

.field private mHintType:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mId:I

.field private mIsChecked:Z

.field private mIsEnable:Z

.field private mItemType:I

.field private mRedDotAmount:I

.field private mRedDotText:Ljava/lang/String;

.field private mStateIcon:Landroid/graphics/drawable/Drawable;

.field private mStateIconId:I

.field private mSubMenuItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:Landroid/content/res/ColorStateList;

.field private mTitleContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIconId:I

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mGroupId:I

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIconId:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotAmount:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mForceTint:I

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mItemType:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mHintType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsEnable:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsChecked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitleColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mSubMenuItemList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomHintView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomItemView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mId:I

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIconId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIconId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mHintType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotAmount:I

    return p0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mForceTint:I

    return p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomHintView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/coui/appcompat/poplist/PopupListItem$Builder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomHintView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mGroupId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mSubMenuItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/poplist/PopupListItem$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mSubMenuItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsEnable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitleContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mDescriptionContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mItemType:I

    return p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsChecked:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/coui/appcompat/poplist/PopupListItem;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>()V

    invoke-static {v0, p0}, Lcom/coui/appcompat/poplist/PopupListItem;->access$2100(Lcom/coui/appcompat/poplist/PopupListItem;Lcom/coui/appcompat/poplist/PopupListItem$Builder;)V

    return-object v0
.end method

.method public reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIconId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsEnable:Z

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mDescription:Ljava/lang/String;

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mItemType:I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitleColor:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsChecked:Z

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIconId:I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIcon:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mHintType:I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotText:Ljava/lang/String;

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotAmount:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mForceTint:I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomHintView:Landroid/view/View;

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mGroupId:I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mSubMenuItemList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomItemView:Landroid/view/View;

    return-object p0
.end method

.method public setCustomHintView(Landroid/view/View;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomHintView:Landroid/view/View;

    return-object p0
.end method

.method public setCustomItemView(Landroid/view/View;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mCustomItemView:Landroid/view/View;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setDescriptionContentDescription(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mDescriptionContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setForceTint(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mForceTint:I

    return-object p0
.end method

.method public setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mGroupId:I

    return-object p0
.end method

.method public setHasSubArray(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setHintType(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mHintType:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIconId:I

    return-object p0
.end method

.method public setId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mId:I

    return-object p0
.end method

.method public setIsCheckable(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setIsChecked(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsChecked:Z

    return-object p0
.end method

.method public setIsClickSubArray(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setIsEnable(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mIsEnable:Z

    return-object p0
.end method

.method public setItemColorSpecial(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setItemType(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mItemType:I

    return-object p0
.end method

.method public setOperateIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRedDotAmount(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotAmount:I

    return-object p0
.end method

.method public setRedDotText(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mRedDotText:Ljava/lang/String;

    return-object p0
.end method

.method public setStateIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setStateIconId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mStateIconId:I

    return-object p0
.end method

.method public setSubArray(Ljava/util/ArrayList;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)",
            "Lcom/coui/appcompat/poplist/PopupListItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mSubMenuItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setSubMenuItemList(Ljava/util/ArrayList;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)",
            "Lcom/coui/appcompat/poplist/PopupListItem$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mSubMenuItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleColorInt(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setTitleColorList(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTitleContentDescription(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->mTitleContentDescription:Ljava/lang/String;

    return-object p0
.end method
