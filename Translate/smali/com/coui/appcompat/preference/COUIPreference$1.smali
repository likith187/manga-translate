.class Lcom/coui/appcompat/preference/COUIPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreference;->initPreciseHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference$1;->this$0:Lcom/coui/appcompat/preference/COUIPreference;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->onClick(Landroid/view/View;II)V

    return-void
.end method
