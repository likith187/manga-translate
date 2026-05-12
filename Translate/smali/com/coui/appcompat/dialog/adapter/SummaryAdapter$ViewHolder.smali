.class Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mDivider:Landroid/widget/ImageView;

.field mItemView:Landroid/widget/TextView;

.field mMainLayout:Landroid/widget/LinearLayout;

.field mSummaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->this$0:Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;)V

    return-void
.end method
