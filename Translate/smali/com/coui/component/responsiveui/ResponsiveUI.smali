.class public final Lcom/coui/component/responsiveui/ResponsiveUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/ResponsiveUI$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/ResponsiveUI$Companion;

.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUI$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUI$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUI;->Companion:Lcom/coui/component/responsiveui/ResponsiveUI$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ResponsiveUI"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUI;->a:Z

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUI;->a:Z

    return v0
.end method
