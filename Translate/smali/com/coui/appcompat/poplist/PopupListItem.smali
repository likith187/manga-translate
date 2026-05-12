.class public Lcom/coui/appcompat/poplist/PopupListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PopupListItem$Builder;,
        Lcom/coui/appcompat/poplist/PopupListItem$PopupMenuGroupState;,
        Lcom/coui/appcompat/poplist/PopupListItem$PopupMenuItemHintType;,
        Lcom/coui/appcompat/poplist/PopupListItem$PopupMenuItemType;
    }
.end annotation


# static fields
.field public static final MENU_GROUP_ITEM_ACTIVATED_IN_MAIN:I = 0x1

.field public static final MENU_GROUP_ITEM_ACTIVATED_IN_SUB:I = 0x2

.field public static final MENU_GROUP_ITEM_INACTIVE:I = 0x0

.field public static final MENU_HINT_TYPE_CUSTOM:I = 0x1

.field public static final MENU_HINT_TYPE_NONE:I = -0x1

.field public static final MENU_HINT_TYPE_RED_DOT:I = 0x0

.field public static final MENU_ITEM_FORCE_TINT_ALL:I = 0x7

.field public static final MENU_ITEM_FORCE_TINT_ICON:I = 0x1

.field public static final MENU_ITEM_FORCE_TINT_NONE:I = 0x0

.field public static final MENU_ITEM_FORCE_TINT_STATE_ICON:I = 0x4

.field public static final MENU_ITEM_FORCE_TINT_TITLE:I = 0x2

.field public static final MENU_ITEM_TYPE_ALERT:I = 0x1

.field public static final MENU_ITEM_TYPE_CUSTOM:I = 0x2

.field public static final MENU_ITEM_TYPE_DEFAULT:I = 0x0

.field public static final MENU_ITEM_TYPE_HEADER:I = 0x3


# instance fields
.field private mCustomHintView:Landroid/view/View;

.field private mCustomItemView:Landroid/view/View;

.field private mDescription:Ljava/lang/String;

.field private mDescriptionContentDescription:Ljava/lang/String;

.field private mForceTint:I

.field private mGroupId:I

.field private mGroupState:I

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
.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mId:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    .line 4
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mItemType:I

    .line 5
    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    .line 6
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupState:I

    const/4 v2, 0x7

    .line 7
    iput v2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    .line 8
    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotAmount:I

    .line 9
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIconId:I

    .line 10
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIconId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mId:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    .line 15
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mItemType:I

    .line 16
    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    .line 17
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupState:I

    const/4 v2, 0x7

    .line 18
    iput v2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    .line 19
    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotAmount:I

    .line 20
    iput v1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIconId:I

    .line 21
    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIconId:I

    .line 22
    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitle:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move v6, p3

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 32
    invoke-direct/range {v0 .. v9}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 33
    invoke-direct/range {v0 .. v10}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 34
    invoke-direct/range {v0 .. v11}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZLjava/util/ArrayList;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    .line 36
    iput p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mId:I

    const/4 p10, 0x0

    .line 37
    iput p10, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mItemType:I

    .line 38
    iput p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    .line 39
    iput p10, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupState:I

    const/4 p3, 0x7

    .line 40
    iput p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    .line 41
    iput p10, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIconId:I

    .line 42
    iput p10, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIconId:I

    .line 43
    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitle:Ljava/lang/String;

    .line 45
    iput-boolean p4, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsChecked:Z

    .line 46
    iput-boolean p6, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsEnable:Z

    .line 47
    iput p5, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotAmount:I

    .line 48
    iput-object p7, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    .line 49
    iput-object p8, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotText:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    iput p11, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 25
    iput p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    return-void
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/poplist/PopupListItem;Lcom/coui/appcompat/poplist/PopupListItem$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupListItem;->apply(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)V

    return-void
.end method

.method private apply(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)V
    .locals 3

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$000(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mId:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$100(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIconId:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$200(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$300(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsEnable:Z

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$400(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$500(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleContentDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$600(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mDescriptionContentDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$700(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$800(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mItemType:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$900(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsChecked:Z

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1000(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIconId:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1100(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1200(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1300(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotText:Ljava/lang/String;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1400(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotAmount:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1500(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1600(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1700(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mCustomHintView:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1702(Lcom/coui/appcompat/poplist/PopupListItem$Builder;Landroid/view/View;)Landroid/view/View;

    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1800(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1900(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1900(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$1902(Lcom/coui/appcompat/poplist/PopupListItem$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_2
    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->access$2000(Lcom/coui/appcompat/poplist/PopupListItem$Builder;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mCustomItemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getCustomHintView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mCustomHintView:Landroid/view/View;

    return-object p0
.end method

.method public getCustomItemView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mCustomItemView:Landroid/view/View;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDescriptionContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mDescriptionContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getForceTint()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    return p0
.end method

.method public getGroupId()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    return p0
.end method

.method getGroupState()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupState:I

    return p0
.end method

.method public getHintType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIconId:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mId:I

    return p0
.end method

.method public getItemColorSpecial()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getItemType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mItemType:I

    return p0
.end method

.method public getOperateIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getRedDotAmount()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotAmount:I

    return p0
.end method

.method public getRedDotText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotText:Ljava/lang/String;

    return-object p0
.end method

.method public getStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getStateIconId()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIconId:I

    return p0
.end method

.method public getSubArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSubMenuItemList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleColorInt()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getTitleColorList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTitleContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public hasSubArray()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result p0

    return p0
.end method

.method public hasSubMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCheckable()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsChecked:Z

    return p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsEnable:Z

    return p0
.end method

.method public setCheckable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsChecked:Z

    return-void
.end method

.method public setCustomHintView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mCustomHintView:Landroid/view/View;

    return-void
.end method

.method public setCustomItemView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mCustomItemView:Landroid/view/View;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIsEnable:Z

    return-void
.end method

.method public setForceTint(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mForceTint:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupId:I

    return-void
.end method

.method setGroupState(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mGroupState:I

    return-void
.end method

.method public setHasSubArray(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mHintType:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mIconId:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mId:I

    return-void
.end method

.method public setItemColorSpecial(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mItemType:I

    return-void
.end method

.method public setOperateIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setRedDotAmount(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotAmount:I

    return-void
.end method

.method public setRedDotText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mRedDotText:Ljava/lang/String;

    return-void
.end method

.method public setStateIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStateIconId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mStateIconId:I

    return-void
.end method

.method public setSubArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSubMenuItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mSubMenuItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleColorInt(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTitleColorList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTitleContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->mTitleContentDescription:Ljava/lang/String;

    return-void
.end method
