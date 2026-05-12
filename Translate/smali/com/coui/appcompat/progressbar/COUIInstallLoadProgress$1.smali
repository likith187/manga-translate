.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$000(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
